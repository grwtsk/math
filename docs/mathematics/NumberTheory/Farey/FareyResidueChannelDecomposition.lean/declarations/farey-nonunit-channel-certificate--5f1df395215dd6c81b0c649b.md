# farey_nonunit_channel_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d64e185-d4e7-d4b7-fcec-e62454d78f6b",
  "kind": "theorem",
  "lexical_name": "farey_nonunit_channel_certificate",
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
  "slug": "farey-nonunit-channel-certificate--5f1df395215dd6c81b0c649b",
  "source": {
    "blob": "f4df2cbea5643fb95614ac2ed9b19ed9daaac428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 258,
    "path": "GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f1df395215dd6c81b0c649bc9650a6f7204c3e13a396914be376d2b9d03d9c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d64e185-d4e7-d4b7-fcec-e62454d78f6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem farey_nonunit_channel_certificate :
    GRWTSK.NumberTheory.Farey.modularDet
        GRWTSK.NumberTheory.Farey.nonunitEye 4 = 1 ∧
      nonunitAdditiveResidual 4
        nonunitFareyRightResidue nonunitFareyRightResidue = 1 ∧
      unitCharacterCarrier 4
        nonunitFareyRightResidue nonunitFareyRightResidue = 0 ∧
      ¬ ∃ coefficient : DirichletCharacter ℂ 4 → ℂ,
        ∀ a : ZMod 4,
          additiveResidueSelector 4 a nonunitFareyRightResidue =
            ∑ χ : DirichletCharacter ℂ 4, coefficient χ * χ a := by
  refine ⟨GRWTSK.NumberTheory.Farey.modularDet_eq_one
      GRWTSK.NumberTheory.Farey.nonunitEye 4,
    nonunit_residual_on_diagonal 4 nonunitFareyRightResidue
      nonunitFareyRightResidue_nonunit, ?_, ?_⟩
  · classical
    simp [unitCharacterCarrier, nonunitFareyRightResidue_nonunit]
  · exact no_pure_dirichlet_expansion_of_nonunit 4
      nonunitFareyRightResidue nonunitFareyRightResidue_nonunit

end GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4df2cbea5643fb95614ac2ed9b19ed9daaac428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
