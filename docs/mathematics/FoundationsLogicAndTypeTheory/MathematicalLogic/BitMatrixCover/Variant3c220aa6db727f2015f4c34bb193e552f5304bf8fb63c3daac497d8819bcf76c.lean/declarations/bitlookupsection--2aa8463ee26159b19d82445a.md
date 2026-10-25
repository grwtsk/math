# BitLookupSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4ce84fc61130c32c00f3c5c0ec8ba2d420bf70cc6103b36b7b3e68a8b93750e",
  "kind": "def",
  "lexical_name": "BitLookupSection",
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
  "slug": "bitlookupsection--2aa8463ee26159b19d82445a",
  "source": {
    "blob": "d4efa27058028a2cbaf9ec3f26208c00dfd1dbca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aa8463ee26159b19d82445a7d10e77085d523610f8b85fcfc5feb9ceb2f3f28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4ce84fc61130c32c00f3c5c0ec8ba2d420bf70cc6103b36b7b3e68a8b93750e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BitLookupSection
    (M : BitMatrix) (target : BitInterval M) : Type :=
  ∀ i : Fin (M.rows * M.cols),
    target.Contains i → BitLookupPathAt M i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4efa27058028a2cbaf9ec3f26208c00dfd1dbca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
