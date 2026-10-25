# evalNatCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:508bf580f8d962cd734938f34cab957dfb874e6b198643c991c62c7f0e45e72f",
  "kind": "def",
  "lexical_name": "evalNatCore",
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
  "slug": "evalnatcore--568969cb6497172e3d7a5aca",
  "source": {
    "blob": "6d5f3f35d354f40dfd6fd70c77237db72c18afd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:568969cb6497172e3d7a5acae830848889ba968d94f4bc5a50588902268eb340",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:508bf580f8d962cd734938f34cab957dfb874e6b198643c991c62c7f0e45e72f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def evalNatCore (e : Expr) : OptionT SymM Nat := do
  match_expr e with
  | Nat.zero => return 0
  | Nat.succ a => return (← evalNatCore a) + 1
  | Int.toNat a => return (← evalIntCore a).toNat
  | Int.natAbs a => return (← evalIntCore a).natAbs
  | HAdd.hAdd _ _ _ inst a b => guard (← isInstHAddNat inst); return (← evalNatCore a) + (← evalNatCore b)
  | HMul.hMul _ _ _ inst a b => guard (← isInstHMulNat inst); return (← evalNatCore a) * (← evalNatCore b)
  | HSub.hSub _ _ _ inst a b => guard (← isInstHSubNat inst); return (← evalNatCore a) - (← evalNatCore b)
  | HDiv.hDiv _ _ _ inst a b => guard (← isInstHDivNat inst); return (← evalNatCore a) / (← evalNatCore b)
  | HMod.hMod _ _ _ inst a b => guard (← isInstHModNat inst); return (← evalNatCore a) % (← evalNatCore b)
  | OfNat.ofNat _ _ _ =>
    let some n := Sym.getNatValue? e |>.run | failure
    return n
  | HPow.hPow _ _ _ inst a k =>
    guard (← isInstHPowNat inst)
    let k ← evalNatCore k
    checkExp k
    let a ← evalNatCore a
    return a ^ k
  | _ => failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantafce6f9ec97f1448f62de52870c35d44ce98f33cf9fa3a0a7b1cee0cd5a2635a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5f3f35d354f40dfd6fd70c77237db72c18afd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
