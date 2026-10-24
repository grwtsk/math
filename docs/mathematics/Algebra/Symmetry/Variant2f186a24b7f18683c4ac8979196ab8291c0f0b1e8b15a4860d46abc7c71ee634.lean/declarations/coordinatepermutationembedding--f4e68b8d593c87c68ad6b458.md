# coordinatePermutationEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9d31a800aa187e6b25e3a2ea0424ca52f0407989742380ba345da1ecadf4b05",
  "kind": "def",
  "lexical_name": "coordinatePermutationEmbedding",
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
  "slug": "coordinatepermutationembedding--f4e68b8d593c87c68ad6b458",
  "source": {
    "blob": "da9611ccbb419b3dfd0f0629058f4387d0db54e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 231,
    "path": "GRWTSK/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4e68b8d593c87c68ad6b458d26b54d27d79c52664b6ca8b184feb6c332fc875",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9d31a800aa187e6b25e3a2ea0424ca52f0407989742380ba345da1ecadf4b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordinatePermutationEmbedding {n : Nat} :
    Equiv.Perm (Fin n) ↪* BitPerm n where
  toMonoidHom := coordinatePermutationHom
  injective' := coordinatePermutationHom_injective

/-! ## Hamming distance and explicit affine Hamming isometries -/

/-- Hamming distance is the weight of the XOR difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9611ccbb419b3dfd0f0629058f4387d0db54e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
