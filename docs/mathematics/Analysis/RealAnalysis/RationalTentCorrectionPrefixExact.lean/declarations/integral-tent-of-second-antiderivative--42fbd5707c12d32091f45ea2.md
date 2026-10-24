# integral_tent_of_second_antiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dedc7b05-2c82-cdc5-b306-de6f502f74d3",
  "kind": "theorem",
  "lexical_name": "integral_tent_of_second_antiderivative",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "integral-tent-of-second-antiderivative--42fbd5707c12d32091f45ea2",
  "source": {
    "blob": "410b2a3dc873896136a17bdb5985d2b8d1d33ff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 125,
    "path": "GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42fbd5707c12d32091f45ea23ca6bcfc6ec61b19ee06283ea3bc33ab46a5f1a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dedc7b05-2c82-cdc5-b306-de6f502f74d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_tent_of_second_antiderivative
    (x h : ℝ) (hh : 0 < h)
    (F dF f : ℝ → ℝ)
    (hF : ∀ t ∈ Icc (x - h) (x + h), HasDerivAt F (dF t) t)
    (hdF : ∀ t ∈ Icc (x - h) (x + h), HasDerivAt dF (f t) t)
    (hleft : IntervalIntegrable (fun t => tent x h t * f t) volume (x - h) x)
    (hright : IntervalIntegrable (fun t => tent x h t * f t) volume x (x + h)) :
    (∫ t in (x - h)..(x + h), tent x h t * f t) =
      (F (x + h) - 2 * F x + F (x - h)) / h := by
  have hax : x - h ≤ x := by linarith
  have hxb : x ≤ x + h := by linarith
  have dl : ∀ t ∈ uIcc (x - h) x,
      HasDerivAt
        (fun u => (((u - (x - h)) * dF u - F u) / h))
        (tent x h t * f t) t := by
    intro t ht
    have htx : t ∈ Icc (x - h) x := (uIcc_of_le hax) ▸ ht
    have ht' : t ∈ Icc (x - h) (x + h) :=
      ⟨htx.1, htx.2.trans hxb⟩
    have hd :=
      ((((hasDerivAt_id t).sub_const (x - h)).mul (hdF t ht')).sub
        (hF t ht')).div_const h
    convert hd using 1
    · ext u
      rfl
    · rw [tent_on_left x h t hh htx.1 htx.2]
      field_simp [ne_of_gt hh]
      ring
  have dr : ∀ t ∈ uIcc x (x + h),
      HasDerivAt
        (fun u => (((x + h - u) * dF u + F u) / h))
        (tent x h t * f t) t := by
    intro t ht
    have htx : t ∈ Icc x (x + h) := (uIcc_of_le hxb) ▸ ht
    have ht' : t ∈ Icc (x - h) (x + h) :=
      ⟨hax.trans htx.1, htx.2⟩
    have hd :=
      ((((hasDerivAt_const t (x + h)).sub (hasDerivAt_id t)).mul
        (hdF t ht')).add (hF t ht')).div_const h
    convert hd using 1
    · ext u
      rfl
    · rw [tent_on_right x h t hh htx.1 htx.2]
      field_simp [ne_of_gt hh]
      ring
  have il := intervalIntegral.integral_eq_sub_of_hasDerivAt dl hleft
  have ir := intervalIntegral.integral_eq_sub_of_hasDerivAt dr hright
  rw [← intervalIntegral.integral_add_adjacent_intervals hleft hright, il, ir]
  field_simp [ne_of_gt hh]
  ring

/-- Exact real kth contribution of the normalized tent integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410b2a3dc873896136a17bdb5985d2b8d1d33ff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
