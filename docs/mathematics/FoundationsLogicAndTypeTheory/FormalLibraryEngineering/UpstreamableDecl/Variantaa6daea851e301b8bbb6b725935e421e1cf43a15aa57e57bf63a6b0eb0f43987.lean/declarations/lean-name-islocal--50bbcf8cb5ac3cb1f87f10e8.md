# Lean.Name.isLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:468eaf92578b788e7200765c389f7894ade1d3d011b7b65ccd00005b2c9d0f9a",
  "kind": "def",
  "lexical_name": "Lean.Name.isLocal",
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
  "slug": "lean-name-islocal--50bbcf8cb5ac3cb1f87f10e8",
  "source": {
    "blob": "c4586e3c4d744b22beea9f27ab7caff433b0ce9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50bbcf8cb5ac3cb1f87f10e802870dfa7fffdd59efaa7701b36d8a9f15c5a3d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:468eaf92578b788e7200765c389f7894ade1d3d011b7b65ccd00005b2c9d0f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Name.isLocal (env : Environment) (decl : Name) : Bool :=
  (env.getModuleIdxFor? decl).isNone

open Mathlib.Command.MinImports

/-- Does the declaration with this name depend on definitions in the current file?

Here, "definition" means everything that is not a theorem, and so includes `def`,
`structure`, `inductive`, etc.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4586e3c4d744b22beea9f27ab7caff433b0ce9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
