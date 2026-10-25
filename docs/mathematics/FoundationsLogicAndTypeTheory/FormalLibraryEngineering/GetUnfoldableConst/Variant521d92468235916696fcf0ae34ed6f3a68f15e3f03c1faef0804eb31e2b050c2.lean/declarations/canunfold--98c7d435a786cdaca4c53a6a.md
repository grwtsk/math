# canUnfold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27f72136af828b9478f232463e785a40a776eb5116dbe3e4138aa9b8af31dd81",
  "kind": "def",
  "lexical_name": "canUnfold",
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
  "slug": "canunfold--98c7d435a786cdaca4c53a6a",
  "source": {
    "blob": "da247a3be675e635b6ce9b8136cfd358b416a282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetUnfoldableConst/Variant521d92468235916696fcf0ae34ed6f3a68f15e3f03c1faef0804eb31e2b050c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98c7d435a786cdaca4c53a6ac55a09107d6f2b0befe3019fc218b67cdcdec5be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetUnfoldableConst/Variant521d92468235916696fcf0ae34ed6f3a68f15e3f03c1faef0804eb31e2b050c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27f72136af828b9478f232463e785a40a776eb5116dbe3e4138aa9b8af31dd81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canUnfold (info : ConstantInfo) : MetaM Bool := do
  let ctx ← read
  let cfg ← getConfig
  if let some f := ctx.canUnfold? then
    f cfg info
  else
    canUnfoldDefault cfg info

/--
Look up a constant name, returning the `ConstantInfo`
if it is a def/theorem that should be unfolded at the current reducibility settings,
or `none` otherwise.

This is part of the implementation of `whnf`.
External users wanting to look up names should be using `Lean.getConstInfo`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetUnfoldableConst/Variant521d92468235916696fcf0ae34ed6f3a68f15e3f03c1faef0804eb31e2b050c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetUnfoldableConst/Variant521d92468235916696fcf0ae34ed6f3a68f15e3f03c1faef0804eb31e2b050c2.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da247a3be675e635b6ce9b8136cfd358b416a282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
