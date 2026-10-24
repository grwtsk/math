# ordinaryHypergeometricSeries_norm_div_succ_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47b42b5a712c278078e79e70f560033e174236b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dcb4d46-49b1-0237-af4a-3cf08792491c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93acb626-73fb-01d6-8d21-72b41febf433",
  "kind": "theorem",
  "lexical_name": "ordinaryHypergeometricSeries_norm_div_succ_norm",
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
  "slug": "ordinaryhypergeometricseries-norm-div-succ-norm--6fdbbd0a8e7e132a6452cb78",
  "source": {
    "blob": "47b42b5a712c278078e79e70f560033e174236b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fdbbd0a8e7e132a6452cb7815f283003931a8b4d48723d6b60f553b2c118d5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93acb626-73fb-01d6-8d21-72b41febf433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinaryHypergeometricSeries_norm_div_succ_norm (n : ℕ)
    (habc : ∀ kn < n, (↑kn ≠ -a ∧ ↑kn ≠ -b ∧ ↑kn ≠ -c)) :
    ‖ordinaryHypergeometricCoefficient a b c n‖ / ‖ordinaryHypergeometricCoefficient a b c n.succ‖ =
      ‖a + n‖⁻¹ * ‖b + n‖⁻¹ * ‖c + n‖ * ‖1 + (n : 𝕂)‖ := by
  simp only [mul_inv_rev, factorial_succ, cast_mul, cast_add,
    cast_one, ascPochhammer_succ_eval, norm_mul, norm_inv]
  calc
    _ = ‖Polynomial.eval a (ascPochhammer 𝕂 n)‖ * ‖Polynomial.eval a (ascPochhammer 𝕂 n)‖⁻¹ *
        ‖Polynomial.eval b (ascPochhammer 𝕂 n)‖ * ‖Polynomial.eval b (ascPochhammer 𝕂 n)‖⁻¹ *
        ‖Polynomial.eval c (ascPochhammer 𝕂 n)‖⁻¹⁻¹ * ‖Polynomial.eval c (ascPochhammer 𝕂 n)‖⁻¹ *
        ‖(n ! : 𝕂)‖⁻¹⁻¹ * ‖(n ! : 𝕂)‖⁻¹ * ‖a + n‖⁻¹ * ‖b + n‖⁻¹ * ‖c + n‖⁻¹⁻¹ *
        ‖1 + (n : 𝕂)‖⁻¹⁻¹ := by ring_nf
    _ = _ := by
      simp only [inv_inv]
      repeat rw [DivisionRing.mul_inv_cancel, one_mul]
      all_goals
        rw [norm_ne_zero_iff]
      any_goals
        apply (ascPochhammer_eval_eq_zero_iff n _).not.2
        push Not
        exact fun kn hkn ↦ by simp [habc kn hkn]
      exact cast_ne_zero.2 (factorial_ne_zero n)

/-- The radius of convergence of `ordinaryHypergeometricSeries` is unity if none of the parameters
are non-positive integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47b42b5a712c278078e79e70f560033e174236b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
