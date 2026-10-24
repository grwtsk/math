# coeff_prod_one_sub_X_pow_eventually_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bc4ce3a-07a5-05dc-770a-761205065df1",
  "kind": "theorem",
  "lexical_name": "coeff_prod_one_sub_X_pow_eventually_eq",
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
  "slug": "coeff-prod-one-sub-x-pow-eventually-eq--e09e5e18d2ea36584f070059",
  "source": {
    "blob": "af148b1723747ac2c0787b31519c296b1f3ce7e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e09e5e18d2ea36584f07005939516042fd3ed270cec5f16d4fb1cca2ec6a0f2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bc4ce3a-07a5-05dc-770a-761205065df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_prod_one_sub_X_pow_eventually_eq (n : ℕ) :
    ∀ᶠ s in atTop, (∏ n ∈ s, (1 - X ^ (n + 1) : R⟦X⟧)).coeff n = (pentagonalSeries R).coeff n := by
  let : TopologicalSpace R := ⊥
  have : DiscreteTopology R := ⟨rfl⟩
  have h := (multipliable_one_sub_X_pow R).hasProd
  rw [tprod_one_sub_X_pow' R, HasProd, tendsto_iff_coeff_tendsto] at h
  simpa using h n

namespace WithPiTopology
variable [TopologicalSpace R]

/-- **Pentagonal number theorem** for power series, expressed as an infinite product. See also
`PowerSeries.WithPiTopology.hasSum_pentagonalSeries` that expresses `pentagonalSeries` as an
infinite sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af148b1723747ac2c0787b31519c296b1f3ce7e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
