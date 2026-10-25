# evalNatCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9e7ee5bdbdea5be15bf99e954f5b0051fc3a04728b10e5be9f98ce37a9c3c90",
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
  "slug": "evalnatcore--fab07532fa2f7df0b4abddbd",
  "source": {
    "blob": "e1fd546cde47a225af03da8031bc18a4f6830a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fab07532fa2f7df0b4abddbdd928555d11f8b050cbd130e672a7ad8c5d98afaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9e7ee5bdbdea5be15bf99e954f5b0051fc3a04728b10e5be9f98ce37a9c3c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def evalNatCore (e : Expr) : OptionT GrindM Nat := do
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
    let some n ← getNatValue? e | failure
    return n
  | HPow.hPow _ _ _ inst a k =>
    guard (← isInstHPowNat inst)
    let k ← evalNatCore k
    checkExp k
    let a ← evalNatCore a
    return a ^ k
  /-
  Remark: possible improvements
  - Expand constants
  - `whnfCore`
  - `evalExpr` as an expensive fallback.
  -/
  | _ => failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalNum/Variantbcdf23aa7d7fe73836c890751e23c71b006d20890ba3123fa8a79403385f022e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1fd546cde47a225af03da8031bc18a4f6830a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
