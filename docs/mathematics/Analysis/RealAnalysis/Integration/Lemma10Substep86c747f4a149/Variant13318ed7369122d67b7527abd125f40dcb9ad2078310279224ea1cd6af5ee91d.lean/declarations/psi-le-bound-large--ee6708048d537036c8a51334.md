# psi_le_bound_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49033366-708e-607e-a89c-1ce32c80c359",
  "kind": "theorem",
  "lexical_name": "psi_le_bound_large",
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
  "slug": "psi-le-bound-large--ee6708048d537036c8a51334",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2404,
    "line": 2385,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee6708048d537036c8a51334d00141b1d5560a87ed028e86b25807b82756d7ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49033366-708e-607e-a89c-1ce32c80c359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2385–2404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_le_bound_large (y : ℝ) (hy : 1e19 < y) :
    ψ y ≤ 1.00000002 * y + 0.94 * y ^ (1/2 : ℝ) := by
  have h_b : |ψ y - y| ≤ BKLNW_app.table_8_ε (19 * log 10) * y := by
    apply BKLNW_app.theorem_2 (19 * log 10) (by positivity) y (by
      rw [mul_comm, exp_mul, exp_log (by positivity)]; linarith)
  have h_eps : BKLNW_app.table_8_ε (19 * log 10) ≤ 1.93378e-8 * BKLNW_app.table_8_margin := by
    have h_log_approx : 43 < 19 * log 10 ∧ 19 * log 10 < 44 :=
      ⟨by nlinarith [LogTables.log_10_gt], by nlinarith [LogTables.log_10_lt]⟩
    grw [BKLNW_app.table_8_ε.le_simp (19 * log 10) (by grind)]
    norm_num [BKLNW_app.table_8_ε', h_log_approx]; norm_num at *
    field_simp
    rw [if_neg (by linarith), if_neg (by linarith), if_neg (by linarith),
        if_neg (by linarith), if_neg (by linarith), if_neg (by linarith),
        if_neg (by linarith), if_neg (by linarith), if_neg (by linarith),
        if_pos (by linarith)]
    norm_num [log_pos] at *
  norm_num [← sqrt_eq_rpow] at *
  nlinarith [abs_le.mp h_b, sqrt_nonneg y, sq_sqrt (show 0 ≤ y by linarith), h_eps]

/-- Bound for `ψ(y)` for all `y > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L2385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
