# ordinaryHypergeometricSeries_norm_div_succ_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e063fd3-ab83-9b4c-3ec4-058111c1585b",
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
  "slug": "ordinaryhypergeometricseries-norm-div-succ-norm--5561dc6f6dcd566b8c58ffef",
  "source": {
    "blob": "1bf6b82005beedebd1d6b469133a65a3334cfcfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5561dc6f6dcd566b8c58ffefc8ec10a73c340764ce0431e1ee658028c6c63fa1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e063fd3-ab83-9b4c-3ec4-058111c1585b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf6b82005beedebd1d6b469133a65a3334cfcfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
