# logCell_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:995f31d8-8366-49a9-4c6e-6ee8cbf6b87b",
  "kind": "theorem",
  "lexical_name": "logCell_eval",
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
  "slug": "logcell-eval--9c46398ddf79db91076ef5fc",
  "source": {
    "blob": "91a5f98de95695babc0d73ad495a5aea00b87737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 32,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c46398ddf79db91076ef5fc2efbd4c4b69fabf3e67df0a9a82e4cb720d2b26e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:995f31d8-8366-49a9-4c6e-6ee8cbf6b87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logCell_eval {n : ℕ} (hn : 0 < n) :
    logCell n = ((Real.log (n+1))^2-(Real.log n)^2)/2 +
      n/(n+1)*(Real.log (n+1)+1) - (Real.log n+1) := by
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
  have hn1 : (n : ℝ)+1 ≠ 0 := by positivity
  have he : logCell n =
      ((Real.log (n+1))^2/2 + n*(Real.log (n+1)+1)/(n+1)) -
      ((Real.log n)^2/2 + n*(Real.log n+1)/n) := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
      (f := fun x : ℝ => (Real.log x)^2/2 + n*(Real.log x+1)/x)
    · intro x hx
      have hx0 : x ≠ 0 := by
        rw [uIcc_of_le (by linarith : (n:ℝ) ≤ n+1)] at hx
        have hnpos : (0:ℝ) < n := by exact_mod_cast hn
        linarith [hx.1]
      have hlog := Real.hasDerivAt_log hx0
      have h := ((hlog.pow 2).div_const 2).add
        (((hlog.add_const 1).const_mul (n:ℝ)).div (hasDerivAt_id x) hx0)
      apply h.congr_deriv
      simp only [id_eq, Nat.cast_ofNat, Nat.reduceSub, pow_one]
      field_simp [hx0]
      ring
    · exact logCell_integrable hn
  rw [he]
  field_simp [hn0, hn1]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a5f98de95695babc0d73ad495a5aea00b87737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
