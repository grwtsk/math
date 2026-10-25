# evalIntCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:912b14c9fd52a8aa33f2a379e2dfd29e6d046d8c48f64b7adb801aa0b22da6a7",
  "kind": "def",
  "lexical_name": "evalIntCore",
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
  "slug": "evalintcore--20ca35b18b08235566ce98a3",
  "source": {
    "blob": "2650f7342472bd3f6b44ef08dba127e7409a9769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20ca35b18b08235566ce98a3bd0e9242fbdbbbe2196715463b6c6bc41b8075bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:912b14c9fd52a8aa33f2a379e2dfd29e6d046d8c48f64b7adb801aa0b22da6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def evalIntCore (e : Expr) : OptionT SymM Int := do
  match_expr e with
  | Neg.neg _ i a => guard (← isInstNegInt i); return - (← evalIntCore a)
  | HAdd.hAdd _ _ _ i a b => guard (← isInstHAddInt i); return (← evalIntCore a) + (← evalIntCore b)
  | HSub.hSub _ _ _ i a b => guard (← isInstHSubInt i); return (← evalIntCore a) - (← evalIntCore b)
  | HMul.hMul _ _ _ i a b => guard (← isInstHMulInt i); return (← evalIntCore a) * (← evalIntCore b)
  | HDiv.hDiv _ _ _ i a b => guard (← isInstHDivInt i); return (← evalIntCore a) / (← evalIntCore b)
  | HMod.hMod _ _ _ i a b => guard (← isInstHModInt i); return (← evalIntCore a) % (← evalIntCore b)
  | HPow.hPow _ _ _ i a k =>
    guard (← isInstHPowInt i)
    let a ← evalIntCore a
    let k ← evalNatCore k
    checkExp k
    return a ^ k
  | OfNat.ofNat _ _ _ =>
    let some n := Sym.getIntValue? e |>.run | failure
    return n
  | NatCast.natCast _ i a =>
    let_expr instNatCastInt ← i | failure
    return (← evalNatCore a)
  | Nat.cast _ i a =>
    let_expr instNatCastInt ← i | failure
    return (← evalNatCore a)
  | _ => failure

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variant34bf4b1452b6682796def9dda4e8c9e466fd0b5177c4e346869aaac78f413e61.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2650f7342472bd3f6b44ef08dba127e7409a9769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
