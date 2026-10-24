# elementalStarAlgebra.characterSpaceToSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48e1a81f3021acbff37d030eb93420995cd6b1b730a9fa01455dbfcf53436036",
  "kind": "def",
  "lexical_name": "elementalStarAlgebra.characterSpaceToSpectrum",
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
  "slug": "elementalstaralgebra-characterspacetospectrum--c6ae843d57d41133901411dd",
  "source": {
    "blob": "cc545264d40716b7a34d7f75c903fec0ec1749c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6ae843d57d41133901411ddc4d0954950240734286c5fc7251bbdd791a96a34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48e1a81f3021acbff37d030eb93420995cd6b1b730a9fa01455dbfcf53436036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def elementalStarAlgebra.characterSpaceToSpectrum (x : A)
    (φ : characterSpace ℂ (elementalStarAlgebra ℂ x)) : spectrum ℂ x where
  val := φ ⟨x, self_mem ℂ x⟩
  property := by
    simpa only [StarSubalgebra.spectrum_eq (elementalStarAlgebra.isClosed ℂ x)
        ⟨x, self_mem ℂ x⟩] using
      AlgHom.apply_mem_spectrum φ ⟨x, self_mem ℂ x⟩
#align elemental_star_algebra.character_space_to_spectrum elementalStarAlgebra.characterSpaceToSpectrum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc545264d40716b7a34d7f75c903fec0ec1749c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
