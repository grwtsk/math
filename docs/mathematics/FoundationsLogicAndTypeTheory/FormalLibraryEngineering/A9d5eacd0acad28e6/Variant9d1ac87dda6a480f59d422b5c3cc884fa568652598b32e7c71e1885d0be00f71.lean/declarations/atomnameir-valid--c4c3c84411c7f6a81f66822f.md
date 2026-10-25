# AtomNameIR.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a20da0441ebad9927b3bf45576e8cacdb82377c9103021c8869f0ea3ac1620d",
  "kind": "def",
  "lexical_name": "AtomNameIR.Valid",
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
  "slug": "atomnameir-valid--c4c3c84411c7f6a81f66822f",
  "source": {
    "blob": "67f6b41902036eeec2ca4fb05713972daa0c4953",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d5eacd0acad28e6/Variant9d1ac87dda6a480f59d422b5c3cc884fa568652598b32e7c71e1885d0be00f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4c3c84411c7f6a81f66822f6187009c6be588da1ef86e7a0683a65d8909fbfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d5eacd0acad28e6/Variant9d1ac87dda6a480f59d422b5c3cc884fa568652598b32e7c71e1885d0be00f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a20da0441ebad9927b3bf45576e8cacdb82377c9103021c8869f0ea3ac1620d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AtomNameIR.Valid (evidence : NamingEvidence) (value : AtomNameIR) : Prop :=
  value.schema = "math-discovery/atom-name-ir/1" ∧
  value.atomId = evidence.atomId ∧ value.name.Valid ∧
  ∀ supportId, supportId ∈ value.supportIds → evidence.Supports supportId

end MathDiscovery.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d5eacd0acad28e6/Variant9d1ac87dda6a480f59d422b5c3cc884fa568652598b32e7c71e1885d0be00f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d5eacd0acad28e6/Variant9d1ac87dda6a480f59d422b5c3cc884fa568652598b32e7c71e1885d0be00f71.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f6b41902036eeec2ca4fb05713972daa0c4953` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
