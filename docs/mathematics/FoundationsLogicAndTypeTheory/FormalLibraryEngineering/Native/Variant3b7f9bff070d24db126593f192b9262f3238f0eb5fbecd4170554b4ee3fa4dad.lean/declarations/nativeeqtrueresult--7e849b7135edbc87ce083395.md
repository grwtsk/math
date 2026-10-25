# NativeEqTrueResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca2e63c0e4aa8cdd00cd8f8e4ace88801b6a0135c61b4df719a3f3d349152601",
  "kind": "inductive",
  "lexical_name": "NativeEqTrueResult",
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
  "slug": "nativeeqtrueresult--7e849b7135edbc87ce083395",
  "source": {
    "blob": "57722b18c33865f623def70a08bfa38faabadc82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variant3b7f9bff070d24db126593f192b9262f3238f0eb5fbecd4170554b4ee3fa4dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e849b7135edbc87ce083395677e3ee53d91e99910c998a55c2c77b2802737db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variant3b7f9bff070d24db126593f192b9262f3238f0eb5fbecd4170554b4ee3fa4dad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca2e63c0e4aa8cdd00cd8f8e4ace88801b6a0135c61b4df719a3f3d349152601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive NativeEqTrueResult where
  /-- The given expression `e` evaluates to true. `prf` is a proof of `e = true`. -/
  | success (prf : Expr)
  /-- The given expression `e` evaluates to false. -/
  | notTrue

/--
A call to `nativeEqTrue tacName e`, where `e` is a closed value of type `Bool`, will compile and run
that value, check that it evaluates to `true`, and if so, will add an axiom asserting `e = true` and
return that axiom.

It is the basis for `native_decide` and `bv_decide` tactics.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variant3b7f9bff070d24db126593f192b9262f3238f0eb5fbecd4170554b4ee3fa4dad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variant3b7f9bff070d24db126593f192b9262f3238f0eb5fbecd4170554b4ee3fa4dad.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57722b18c33865f623def70a08bfa38faabadc82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
