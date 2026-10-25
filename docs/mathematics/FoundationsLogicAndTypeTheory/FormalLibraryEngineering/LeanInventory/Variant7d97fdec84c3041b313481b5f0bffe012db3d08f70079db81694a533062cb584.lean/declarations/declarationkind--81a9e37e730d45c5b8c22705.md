# declarationKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39062f54e941bbe9a93b228a29c7e6490f2d7f95f53804a14c91c002ca63a1c0",
  "kind": "def",
  "lexical_name": "declarationKind",
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
  "slug": "declarationkind--81a9e37e730d45c5b8c22705",
  "source": {
    "blob": "a4ce5bbf56672345c89cc8c366b250f574b610c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81a9e37e730d45c5b8c22705ae9511b753961880797fd3508e2eccc495b29ded",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39062f54e941bbe9a93b228a29c7e6490f2d7f95f53804a14c91c002ca63a1c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def declarationKind (env : Environment) (ci : ConstantInfo) : String :=
  if Meta.isInstanceCore env ci.name then "instance"
  else if isClass env ci.name then "class"
  else if isStructure env ci.name then "structure"
  else match ci with
    | .thmInfo _ => "theorem"
    | .defnInfo _ => "definition"
    | .opaqueInfo _ => "opaque"
    | .axiomInfo _ => "axiom"
    | .inductInfo _ => "inductive"
    | .ctorInfo _ => "definition"
    | .recInfo _ => "definition"
    | .quotInfo _ => "definition"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4ce5bbf56672345c89cc8c366b250f574b610c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
