# occursInCtorTypeMask

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:307bb9d7f05b0baaf8fef6a4e1cc524decdd3b783d11a2a3be58e5286d31638b",
  "kind": "def",
  "lexical_name": "occursInCtorTypeMask",
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
  "slug": "occursinctortypemask--15fcaafc13b59225671bb299",
  "source": {
    "blob": "1ee6011087358d5dd55a0af920c386b5dd6c608f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variant230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15fcaafc13b59225671bb29934faee4e7feba16d95503abbcc7aeeec6eb8e788",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variant230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:307bb9d7f05b0baaf8fef6a4e1cc524decdd3b783d11a2a3be58e5286d31638b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def occursInCtorTypeMask (ctorName : Name) : MetaM (Array Bool) := do
  let ctorInfo ← getConstInfoCtor ctorName
  forallBoundedTelescope ctorInfo.type (some ctorInfo.numParams) fun _ ctorRet => do
    forallBoundedTelescope ctorRet (some ctorInfo.numFields) fun ys ctorRet => do
      let ctorRet ← whnf ctorRet
      let ctorRet ← Core.betaReduce ctorRet -- we 'beta-reduce' to eliminate "artificial" dependencies
      let lctx ← getLCtx
      return ys.map (occursOrInType lctx · ctorRet)

/--
Given a constructor (applied to the parameters already), brings its fields into scope twice,
but uses the same variable for fields that appear in the result type, so that the resulting
constructor applications have the same type.

Passes to `k`
* the new variables
* the indices to the type class
* the fields of the first constructor application
* the fields of the second constructor application
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variant230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variant230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6011087358d5dd55a0af920c386b5dd6c608f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
