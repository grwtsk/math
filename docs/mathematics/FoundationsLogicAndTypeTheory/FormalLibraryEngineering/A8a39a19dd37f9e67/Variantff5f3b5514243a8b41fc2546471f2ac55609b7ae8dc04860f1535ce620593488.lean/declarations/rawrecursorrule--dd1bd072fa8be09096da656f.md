# RawRecursorRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f246782136c4ade43fcb5f0b1b8160202d7acaedd307d57d8f6954152bf9fc7b",
  "kind": "structure",
  "lexical_name": "RawRecursorRule",
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
  "slug": "rawrecursorrule--dd1bd072fa8be09096da656f",
  "source": {
    "blob": "905a292ee599d93b8ae9494148e81579b96382da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a39a19dd37f9e67/Variantff5f3b5514243a8b41fc2546471f2ac55609b7ae8dc04860f1535ce620593488.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd1bd072fa8be09096da656fa7425439ea9d48afe68ddf313a076920c39be7da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a39a19dd37f9e67/Variantff5f3b5514243a8b41fc2546471f2ac55609b7ae8dc04860f1535ce620593488.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f246782136c4ade43fcb5f0b1b8160202d7acaedd307d57d8f6954152bf9fc7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RawRecursorRule where
  constructor : String
  numFields : Nat
  rhs : RawExpression
  deriving ToJson

end MathematicsLeanEnvironmentExtract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a39a19dd37f9e67/Variantff5f3b5514243a8b41fc2546471f2ac55609b7ae8dc04860f1535ce620593488.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a39a19dd37f9e67/Variantff5f3b5514243a8b41fc2546471f2ac55609b7ae8dc04860f1535ce620593488.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `905a292ee599d93b8ae9494148e81579b96382da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
