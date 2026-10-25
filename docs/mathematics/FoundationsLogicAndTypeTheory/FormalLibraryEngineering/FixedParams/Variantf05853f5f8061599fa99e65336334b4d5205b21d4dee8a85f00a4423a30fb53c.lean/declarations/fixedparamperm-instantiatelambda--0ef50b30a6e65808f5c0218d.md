# FixedParamPerm.instantiateLambda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26fd6b0595e36875085f732bdac357a8d8a31914831e4774d1cde90f93192a20",
  "kind": "def",
  "lexical_name": "FixedParamPerm.instantiateLambda",
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
  "slug": "fixedparamperm-instantiatelambda--0ef50b30a6e65808f5c0218d",
  "source": {
    "blob": "afeecda5628ed5e7fd48e4a45c2eabe4757a8f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 361,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ef50b30a6e65808f5c0218db4f6aa8d4fd12bd45e821e5011bfdc4e54a4f093",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26fd6b0595e36875085f732bdac357a8d8a31914831e4774d1cde90f93192a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FixedParamPerm.instantiateLambda (perm : FixedParamPerm) (value₀ : Expr) (xs : Array Expr) : MetaM Expr := do
  assert! xs.size = perm.numFixed
  let mask := perm.toList
  go mask value₀
where
  go | [], value => pure value
     | (.some fixedParamIdx)::mask, value => do
        assert! fixedParamIdx < xs.size
        go mask (← Meta.instantiateLambda value #[xs[fixedParamIdx]!])
     | .none::mask, value =>
        if mask.all Option.isNone then
          -- Nothing left to do. Also helpful if we may encounter an eta-contracted value
          return value
        else
          lambdaBoundedTelescope value 1 fun ys value => do
            assert! ys.size = 1
            mkLambdaFVars ys (← go mask value)

/--
If `xs` are arguments to the `funIdx`'s function, pick only the fixed ones, and reorder appropriately.
Expects `xs` to match the arity of the function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afeecda5628ed5e7fd48e4a45c2eabe4757a8f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
