# defaultMkProxyType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6467db61d6635d0b6e623dd9c7f628626a6084d54757cc93b6914e4fd75da0be",
  "kind": "def",
  "lexical_name": "defaultMkProxyType",
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
  "slug": "defaultmkproxytype--1999b4cfcd75a196230ba04b",
  "source": {
    "blob": "f3aafae4bc2a4f9747836ac9a9f6a3951635965c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantbfb86fff52cad8e4e2e4fd84f2b6505d5afaa68bc03393f53e76d11a478708a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1999b4cfcd75a196230ba04ba951f5222ccc681dcbd66517f2d4a49b82cabde2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantbfb86fff52cad8e4e2e4fd84f2b6505d5afaa68bc03393f53e76d11a478708a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6467db61d6635d0b6e623dd9c7f628626a6084d54757cc93b6914e4fd75da0be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultMkProxyType (ctors : Array (Name × Expr × Term))
    (decorateSum : Expr → TermElabM Expr := pure) :
    TermElabM (Expr × Array Term × TSyntax `tactic) := do
  let mut types := #[]
  let mut patts := #[]
  for h : i in [0:ctors.size] do
    let (_ctorName, ty, patt) := ctors[i]
    types := types.push ty
    patts := patts.push <| ← wrapSumAccess i ctors.size patt
  let (type, pf) ← mkCType types.toList
  return (type, patts, pf)
where
  /-- Construct the `Sum` expression, using `decorateSum` to adjust each `Sum`. -/
  mkCType (ctypes : List Expr) : TermElabM (Expr × TSyntax `tactic) :=
    match ctypes with
    | [] => return (mkConst ``Empty, ← `(tactic| cases x))
    | [x] => return (x, ← `(tactic| rfl))
    | x :: xs => do
      let (ty, pf) ← mkCType xs
      let pf ← `(tactic| cases x with | inl _ => rfl | inr x => $pf:tactic)
      return (← decorateSum (← mkAppM ``Sum #[x, ty]), pf)
  /-- Navigates into the sum type that we create in `mkCType` for the given constructor index. -/
  wrapSumAccess (cidx nctors : Nat) (spatt : Term) : TermElabM Term :=
    match cidx with
    | 0 =>
      if nctors = 1 then
        return spatt
      else
        `(term| Sum.inl $spatt)
    | cidx' + 1 => do
      let spatt ← wrapSumAccess cidx' (nctors - 1) spatt
      `(term| Sum.inr $spatt)

/-- Default configuration. Defines `proxyType` and `proxyTypeEquiv` in the namespace
of the inductive type. Uses `Unit`, `PLift`, `Sigma`, `Empty`, and `Sum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantbfb86fff52cad8e4e2e4fd84f2b6505d5afaa68bc03393f53e76d11a478708a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantbfb86fff52cad8e4e2e4fd84f2b6505d5afaa68bc03393f53e76d11a478708a8.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3aafae4bc2a4f9747836ac9a9f6a3951635965c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
