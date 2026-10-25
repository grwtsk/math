# containsAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c07f4cccf3bab36502c713996c0a314dd6bf9c5528b7c34face3cec14c6f6439",
  "kind": "def",
  "lexical_name": "containsAtom",
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
  "slug": "containsatom--85ca4ae5fae64e709feaada9",
  "source": {
    "blob": "3e3abfe3269aad9215aca5868eb659ea1ebdc3e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant26dd031e2ca8234bef77405cb398e512be42a00522cffe004e916ca762fb6971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85ca4ae5fae64e709feaada9135a8a6f019ce988679b1eb688f696ae065375ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant26dd031e2ca8234bef77405cb398e512be42a00522cffe004e916ca762fb6971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c07f4cccf3bab36502c713996c0a314dd6bf9c5528b7c34face3cec14c6f6439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def containsAtom (e : Expr) (atom : String) : MetaM Bool := do
  let rec attempt (p : Expr) (tryWhnf : Bool) : MetaM Bool := do
    match p.getAppFnArgs with
    | (``ParserDescr.node, #[_, _, p]) => containsAtom p atom
    | (``ParserDescr.trailingNode, #[_, _, _, p]) => containsAtom p atom
    | (``ParserDescr.unary, #[.app _ (.lit (.strVal _)), p]) => containsAtom p atom
    | (``ParserDescr.binary, #[.app _ (.lit (.strVal "andthen")), p, _]) => containsAtom p atom
    | (``ParserDescr.nonReservedSymbol, #[.lit (.strVal tk), _]) => pure (tk.trimAscii == atom.toSlice)
    | (``ParserDescr.symbol, #[.lit (.strVal tk)]) => pure (tk.trimAscii == atom.toSlice)
    | (``Parser.withAntiquot, #[_, p]) => containsAtom p atom
    | (``Parser.leadingNode, #[_, _, p]) => containsAtom p atom
    | (``HAndThen.hAndThen, #[_, _, _, _, p1, p2]) =>
      containsAtom p1 atom <||> containsAtom p2 atom
    | (``Parser.nonReservedSymbol, #[.lit (.strVal tk), _]) => pure (tk.trimAscii == atom.toSlice)
    | (``Parser.symbol, #[.lit (.strVal tk)]) => pure (tk.trimAscii == atom.toSlice)
    | (``Parser.symbol, #[_nonlit]) => pure false
    | (``Parser.withCache, #[_, p]) => containsAtom p atom
    | _ => if tryWhnf then attempt (← Meta.whnf p) false else pure false
  attempt e true

/--
Checks whether a syntax descriptor's value contains the given atom. If so, the residual value after
the atom is returned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant26dd031e2ca8234bef77405cb398e512be42a00522cffe004e916ca762fb6971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Keywords/Variant26dd031e2ca8234bef77405cb398e512be42a00522cffe004e916ca762fb6971.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3abfe3269aad9215aca5868eb659ea1ebdc3e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
