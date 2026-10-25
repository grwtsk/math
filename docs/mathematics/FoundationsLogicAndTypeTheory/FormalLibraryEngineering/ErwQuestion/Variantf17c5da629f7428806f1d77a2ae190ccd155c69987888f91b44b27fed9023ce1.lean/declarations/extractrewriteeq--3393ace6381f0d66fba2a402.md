# extractRewriteEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f48979af9a8b120a0fc9f10508c25bf4782782d606257ffecdcdaa902c8b7f23",
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
  "slug": "extractrewriteeq--3393ace6381f0d66fba2a402",
  "source": {
    "blob": "57e47d862869fc601ac3d5fcc7abca08df27cb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3393ace6381f0d66fba2a4026f2af834827d0cc0dc8b1680d75130086f2a0d02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f48979af9a8b120a0fc9f10508c25bf4782782d606257ffecdcdaa902c8b7f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–98.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e47d862869fc601ac3d5fcc7abca08df27cb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
