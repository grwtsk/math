# gi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3663df6d533d49fe3a89af7012c8b14698a9a5d6c423445051995f37f8149e7e",
  "kind": "def",
  "lexical_name": "gi",
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
  "slug": "gi--fe7bb56ebce4992cda2d5fb6",
  "source": {
    "blob": "dedfd0ed6348f5d42b435673211a6bc66660c57c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 403,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe7bb56ebce4992cda2d5fb65edce1ab1ac25cb4f50e345125219f306cbb9af9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3663df6d533d49fe3a89af7012c8b14698a9a5d6c423445051995f37f8149e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def gi : GaloisInsertion (@closure M _) SetLike.coe :=
  GaloisConnection.toGaloisInsertion (fun _ _ => closure_le) fun _ => subset_closure
#align subsemigroup.gi Subsemigroup.gi
#align add_subsemigroup.gi AddSubsemigroup.gi

variable {M}

/-- Closure of a subsemigroup `S` equals `S`. -/
@[to_additive (attr := simp) "Additive closure of an additive subsemigroup `S` equals `S`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dedfd0ed6348f5d42b435673211a6bc66660c57c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
