# shouldReplayContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58792034bc9289de136a73c9268f9b396621328969b4ab1dd4a745cb881da871",
  "kind": "def",
  "lexical_name": "shouldReplayContext",
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
  "slug": "shouldreplaycontext--115d6e88c91009fa3c0b5de8",
  "source": {
    "blob": "d4c9a8148a44d7c115b8e492a46369e99f9b8bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant1e4ae8360d4852085a3511c0f8c4f260413ba271827fb7cb0c8962149499665d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:115d6e88c91009fa3c0b5de8be6456619ef93598c7e152f21b951e34448818a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant1e4ae8360d4852085a3511c0f8c4f260413ba271827fb7cb0c8962149499665d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58792034bc9289de136a73c9268f9b396621328969b4ab1dd4a745cb881da871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shouldReplayContext (kind source : String) : Bool :=
  kind == "Lean.Parser.Command.namespace" || kind == "Lean.Parser.Command.section" ||
  kind == "Lean.Parser.Command.end" || kind == "Lean.Parser.Command.open" ||
  kind == "Lean.Parser.Command.variable" || kind == "Lean.Parser.Command.universe" ||
  kind == "Lean.Parser.Command.include" || kind == "Lean.Parser.Command.omit" ||
  kind == "Lean.Parser.Command.setOption" ||
  source.startsWith "noncomputable section"

end MathDiscoveryLeanSource
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant1e4ae8360d4852085a3511c0f8c4f260413ba271827fb7cb0c8962149499665d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Providers/Variant1e4ae8360d4852085a3511c0f8c4f260413ba271827fb7cb0c8962149499665d.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4c9a8148a44d7c115b8e492a46369e99f9b8bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
