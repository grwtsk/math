# ordinaryHypergeometricSeries_radius_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a52b6f1a-ec86-cb3d-5645-4816c611acec",
  "kind": "theorem",
  "lexical_name": "ordinaryHypergeometricSeries_radius_eq_one",
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
  "slug": "ordinaryhypergeometricseries-radius-eq-one--3ee19a4eb7b6f6e532ad0f93",
  "source": {
    "blob": "1bf6b82005beedebd1d6b469133a65a3334cfcfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ee19a4eb7b6f6e532ad0f93bf7c328e450066c14aacb59d7fa9498a5e1b7626",
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

Occurrence: `result:a52b6f1a-ec86-cb3d-5645-4816c611acec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinaryHypergeometricSeries_radius_eq_one
    (habc : ∀ kn : ℕ, ↑kn ≠ -a ∧ ↑kn ≠ -b ∧ ↑kn ≠ -c) :
    (ordinaryHypergeometricSeries 𝔸 a b c).radius = 1 := by
  convert! ofScalars_radius_eq_of_tendsto 𝔸 _ one_ne_zero ?_
  suffices Tendsto (fun k : ℕ ↦ (a + k)⁻¹ * (b + k)⁻¹ * (c + k) * ((1 : 𝕂) + k)) atTop (𝓝 1) by
    simp_rw [ordinaryHypergeometricSeries_norm_div_succ_norm a b c _ (fun n _ ↦ habc n)]
    simp only [← norm_inv, ← norm_mul, NNReal.coe_one]
    convert! Filter.Tendsto.norm this
    exact norm_one.symm
  have (k : ℕ) : (a + k)⁻¹ * (b + k)⁻¹ * (c + k) * ((1 : 𝕂) + k) =
        (c + k) / (a + k) * ((1 + k) / (b + k)) := by field
  simp_rw [this]
  apply (mul_one (1 : 𝕂)) ▸ Filter.Tendsto.mul <;>
  convert! tendsto_add_mul_div_add_mul_atTop_nhds _ _ (1 : 𝕂) one_ne_zero <;> simp

end RCLike
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf6b82005beedebd1d6b469133a65a3334cfcfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
