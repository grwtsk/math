# getArrayLitElems?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2642f9409eef722c5a4b8e191667bcb7ac12e32af51f42c3a839c9a1f67cb29",
  "kind": "def",
  "lexical_name": "getArrayLitElems?",
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
  "slug": "getarraylitelems--1d29eca57883dfa295877c36",
  "source": {
    "blob": "db89f26dd9d3536c3938c04cdd9bdaf54b0e3064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant453d85d47be49abf03a0e3065d5dcd9ad32a76982d65c587d95db0ad5516a960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d29eca57883dfa295877c366329c22501cd16d4e85ff98da3b16a3f12defd07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant453d85d47be49abf03a0e3065d5dcd9ad32a76982d65c587d95db0ad5516a960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2642f9409eef722c5a4b8e191667bcb7ac12e32af51f42c3a839c9a1f67cb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getArrayLitElems? (e : Expr) : Option <| Array Expr :=
  match_expr e with
  | Array.mk _ as => getListLitElems as
  | _ => none

/-- Reduce `#[...][n]` for literal arrays and literal `Nat` indices. -/
builtin_cbv_simproc cbv_eval simpArrayGetElem (@GetElem.getElem (Array _) Nat _ _ _ _ _ _) := fun e => do
  let_expr GetElem.getElem _ _ _ _ _ xs n _ := e | return .rfl
  let some elems := getArrayLitElems? xs | return .rfl
  let some idx := Sym.getNatValue? n | return .rfl
  if h : idx < elems.size then
    let result := elems[idx]
    return .step result (← Sym.mkEqRefl result)
  else
    return .rfl

/-- Reduce `#[...][n]?` for literal arrays and literal `Nat` indices. -/
builtin_cbv_simproc cbv_eval simpArrayGetElem? (@GetElem?.getElem? (Array _) Nat _ _ _ _ _) := fun e => do
  let_expr GetElem?.getElem? _ _ α _ _ xs n := e | return .rfl
  let some elems := getArrayLitElems? xs | return .rfl
  let some idx := Sym.getNatValue? n | return .rfl
  let sortLevel ← Sym.getLevel α
  let .succ u := sortLevel | return .rfl
  let result ←
    if h : idx < elems.size then
      Sym.share <| mkApp2 (mkConst ``Option.some [u]) α elems[idx]
    else
      Sym.share <| mkApp (mkConst ``Option.none [u]) α
  return .step result (← Sym.mkEqRefl result)

end Lean.Meta.Tactic.Cbv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant453d85d47be49abf03a0e3065d5dcd9ad32a76982d65c587d95db0ad5516a960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Array/Variant453d85d47be49abf03a0e3065d5dcd9ad32a76982d65c587d95db0ad5516a960.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db89f26dd9d3536c3938c04cdd9bdaf54b0e3064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
