# withSharedCtorIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:442410514b7d022efe355c596943e0f2284a7872dd1cc4b7da4ce2f4b50f3a7c",
  "kind": "def",
  "lexical_name": "withSharedCtorIndices",
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
  "slug": "withsharedctorindices--2e9c6b58e58d9e3ae06de1c7",
  "source": {
    "blob": "42fb120f5df04564c4588abbf02aa465acc29beb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variantc556aedfdc270b52497d1d0897fb147eac6eb570ee77d92c7c7a660db5849198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e9c6b58e58d9e3ae06de1c7e684af9bcfb8b17103107bc4a09733459e41c5e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variantc556aedfdc270b52497d1d0897fb147eac6eb570ee77d92c7c7a660db5849198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:442410514b7d022efe355c596943e0f2284a7872dd1cc4b7da4ce2f4b50f3a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def withSharedCtorIndices (ctor : Expr)
    (k : Array Expr → Array Expr → Array Expr → Array Expr → MetaM α) : MetaM α := do
  let ctorType ← inferType ctor
  forallTelescopeReducing ctorType fun zs ctorRet => do
    let ctorRet ← whnf ctorRet
    let ctorRet ← Core.betaReduce ctorRet -- we 'beta-reduce' to eliminate "artificial" dependencies
    let indInfo ← getConstInfoInduct ctorRet.getAppFn.constName!
    let indices := ctorRet.getAppArgsN indInfo.numIndices

    let rec go zs2 mask todo acc := do
      match mask, todo with
      | true::mask', z::todo' =>
        go (zs2.push z) mask' todo' acc
      | false::mask', _::todo' =>
        let t ← whnfForall (← inferType (mkAppN ctor zs2))
        assert! t.isForall
        withLocalDeclD (t.bindingName!.appendAfter "'") t.bindingDomain! fun z' => do
          go (zs2.push z') mask' todo' (acc.push z')
      | _, _ =>
        k acc indices zs zs2

    let mask ← occursInCtorTypeMask ctor.getAppFn.constName!
    go #[] mask.toList zs.toList zs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variantc556aedfdc270b52497d1d0897fb147eac6eb570ee77d92c7c7a660db5849198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SameCtorUtils/Variantc556aedfdc270b52497d1d0897fb147eac6eb570ee77d92c7c7a660db5849198.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42fb120f5df04564c4588abbf02aa465acc29beb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
