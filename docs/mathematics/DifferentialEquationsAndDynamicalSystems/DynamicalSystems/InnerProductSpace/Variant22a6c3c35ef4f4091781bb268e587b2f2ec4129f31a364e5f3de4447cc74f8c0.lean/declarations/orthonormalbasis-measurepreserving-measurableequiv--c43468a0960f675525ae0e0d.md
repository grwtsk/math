# OrthonormalBasis.measurePreserving_measurableEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cf4e009-4a0e-32b7-e9ea-dad382685770",
  "kind": "theorem",
  "lexical_name": "OrthonormalBasis.measurePreserving_measurableEquiv",
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
  "slug": "orthonormalbasis-measurepreserving-measurableequiv--c43468a0960f675525ae0e0d",
  "source": {
    "blob": "ccff5045d9b2511827e4a36ab713135714b8a496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 112,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c43468a0960f675525ae0e0d3ef195a9b056a36e24990996106a8f4e21669fcc",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf4e009-4a0e-32b7-e9ea-dad382685770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthonormalBasis.measurePreserving_measurableEquiv (b : OrthonormalBasis ι ℝ F) :
    MeasurePreserving b.measurableEquiv volume volume := by
  convert! (b.measurableEquiv.symm.measurable.measurePreserving _).symm
  rw [← (EuclideanSpace.basisFun ι ℝ).addHaar_eq_volume]
  erw [MeasurableEquiv.coe_toEquiv_symm, Basis.map_addHaar _ b.repr.symm.toContinuousLinearEquiv]
  exact b.addHaar_eq_volume.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccff5045d9b2511827e4a36ab713135714b8a496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
