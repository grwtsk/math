# shiftedMoment_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d06e557-e24f-a280-cbe1-384f048d3e6e",
  "kind": "theorem",
  "lexical_name": "shiftedMoment_integral_zero",
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
  "slug": "shiftedmoment-integral-zero--3abb3d20a9dd35d5ffd63d3c",
  "source": {
    "blob": "1ebee20f65394910045cc771371c68532ed3f9d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3abb3d20a9dd35d5ffd63d3c7b9e28c11361eabebc4da0411aa52bf4f415faad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d06e557-e24f-a280-cbe1-384f048d3e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedMoment_integral_zero
    {F : ℝ → ℝ} (hF : TwoMomentProfile F)
    (s : ℝ) :
    (∫ r, shiftedMomentIntegrand F s r) = 0 := by
  let base : ℝ → ℝ :=
    fun t =>
      (t - s) * Real.exp (t / 2) * F t
  have hbase :
      Integrable base := by
    have h1 := weighted_first_integrable hF
    have h0 := (weighted_zero_integrable hF).const_mul s
    have heq :
        base =
          fun t =>
            t * Real.exp (t / 2) * F t -
              s * (Real.exp (t / 2) * F t) := by
      funext t
      unfold base
      ring
    rw [heq]
    exact h1.sub h0
  have hbase0 :
      (∫ t, base t) = 0 := by
    have heq :
        base =
          fun t =>
            t * Real.exp (t / 2) * F t -
              s * (Real.exp (t / 2) * F t) := by
      funext t
      unfold base
      ring
    rw [heq, integral_sub
      (weighted_first_integrable hF)
      ((weighted_zero_integrable hF).const_mul s),
      integral_const_mul, hF.2.2.2, hF.2.2.1]
    ring
  have htrans :
      (∫ r, base (r + s)) = ∫ t, base t :=
    integral_add_right_eq_self base s
  have hscale :
      (fun r =>
        shiftedMomentIntegrand F s r) =
      fun r =>
        Real.exp (-s / 2) * base (r + s) := by
    funext r
    unfold shiftedMomentIntegrand base
    have hexp : Real.exp (-s / 2) * Real.exp ((r + s) / 2) = Real.exp (r / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [add_sub_cancel_right, add_comm s r]
    calc
      _ = r * (Real.exp (-s / 2) * Real.exp ((r + s) / 2)) * F (r + s) := by rw [hexp]
      _ = _ := by ring
  rw [hscale, integral_const_mul, htrans, hbase0]
  ring

/-- Reflection of the negative half-line into a positive half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ebee20f65394910045cc771371c68532ed3f9d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
