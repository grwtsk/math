# extractRewriteEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c4af155d998f787797ec09d411e32bbdff08243906ecc3c6bebc31d10bb555f",
  "kind": "def",
  "lexical_name": "extractRewriteEq",
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
  "slug": "extractrewriteeq--f4e10efe33e6e8ea0ae90066",
  "source": {
    "blob": "e1dd4e51e0b55388ddbec32468ec8b3f5e775187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4e10efe33e6e8ea0ae9006654b4e4681411c3adb3271eb64d7ad9ed436fd26d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c4af155d998f787797ec09d411e32bbdff08243906ecc3c6bebc31d10bb555f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractRewriteEq (e : Expr) : MetaM (Expr × Expr) := do
  let (``Eq.mpr, #[_, _, e, _]) := e.getAppFnArgs |
    throwError "Unexpected term produced by `erw`, head is not an `Eq.mpr`."
  let (``id, #[ty, e]) := e.getAppFnArgs |
    throwError "Unexpected term produced by `erw`, not of the form: `Eq.mpr (id _) _`."
  let some (_, tgt, _) := ty.eq? |
    throwError "Unexpected term produced by `erw`, type hint is not an equality."
  let some (_, inferred, _) := (← inferType e).eq? |
    throwError "Unexpected term produced by `erw`, inferred type is not an equality."
  return (tgt, inferred)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variant3d309d7479b71b32480c64daa19031823aa1531b35aa8a4675e71f22555dfb9b.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1dd4e51e0b55388ddbec32468ec8b3f5e775187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
