# equivInduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b795d20dd6daf8fb87b39e82bba63b79f8a29682662af1b4bb916df7cde9706",
  "kind": "def",
  "lexical_name": "equivInduced",
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
  "slug": "equivinduced--d732c5bb66007f8d70db9584",
  "source": {
    "blob": "327db752eefbeb8719c4f26e3af52ca02a0f995c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant62a9c00b60324b7964d1237748d6a8ec1f69153187cf4f01a2f3212b7e65b8c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d732c5bb66007f8d70db9584b53a19a8804841f3e82d6924dded0c166ba8a7ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant62a9c00b60324b7964d1237748d6a8ec1f69153187cf4f01a2f3212b7e65b8c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b795d20dd6daf8fb87b39e82bba63b79f8a29682662af1b4bb916df7cde9706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivInduced {M : ModelType.{u, v, w} T} {N : Type w'} (e : M ≃ N) :
    ModelType.{u, v, w'} T where
  Carrier := N
  struc := e.inducedStructure
  is_model := @StrongHomClass.theory_model L M N _ e.inducedStructure T
    _ _ _ e.inducedStructureEquiv _
  nonempty' := e.symm.nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant62a9c00b60324b7964d1237748d6a8ec1f69153187cf4f01a2f3212b7e65b8c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant62a9c00b60324b7964d1237748d6a8ec1f69153187cf4f01a2f3212b7e65b8c4.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `327db752eefbeb8719c4f26e3af52ca02a0f995c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
