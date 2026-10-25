# internalizeNatTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57f0569ec92ba7297bc54f81bd6d5ad75cce8421cd431b67261fb496e68fb89b",
  "kind": "def",
  "lexical_name": "internalizeNatTerm",
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
  "slug": "internalizenatterm--2d3d12ee335c1238a0cc25cf",
  "source": {
    "blob": "2d0e24c220358ae013b8c06545e8598cb06de521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 656,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d3d12ee335c1238a0cc25cf7bb4dcbfc62f991e866fd505a4a1febe46fd6d66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57f0569ec92ba7297bc54f81bd6d5ad75cce8421cd431b67261fb496e68fb89b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def internalizeNatTerm (e type : Expr) (parent? : Option Expr) (k : SupportedTermKind) : GoalM Unit := do
  if (← isNatTerm e) then return () -- already internalized
  match k with
  | .sub => propagateNatSub e
  | .natAbs => propagateNatAbs e
  | .toNat => propagateToNat e
  | _ => pure ()
  if isForbiddenParent parent? k then return ()
  if (← get').natToIntMap.contains { expr := e } then return ()
  let e'h ← natToInt e
  trace[grind.debug.lia.internalize] "{e} : {type}"
  trace[grind.debug.lia.toInt] "{e} ==> {e'h.1}"
  modify' fun s => { s with
    natToIntMap := s.natToIntMap.insert { expr := e } e'h
  }
  cutsatExt.markTerm e
  /-
  If `e'.h` is of the form `NatCast.natCast e`, then it is wasteful to
  assert an equality
  -/
  match_expr e'h.1 with
  | NatCast.natCast _ _ a => if e == a then return ()
  | _ => pure ()
  let e'' ← toLinearExpr e'h.1
  let p := e''.norm
  let natCast_e ← shareCommon (mkIntNatCast e)
  let gen ← getGeneration e
  internalize natCast_e gen
  let x ← mkVar natCast_e
  modify' fun s => { s with natDef := s.natDef.insert { expr := e } x }
  if let some (re, rp, p') ← p.normCommRing? then
    let c := { p := .add (-1) x p', h := .defnNatCommRing e'h.2 x e'' p re rp p' : EqCnstr }
    c.assert
  else
    let c := { p := .add (-1) x p, h := .defnNat e'h.2 x e'' : EqCnstr }
    c.assert

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0e24c220358ae013b8c06545e8598cb06de521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
