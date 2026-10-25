# lratBitblaster

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd2aa75cb9b33bb53a7b3450c099955f410e9bd7c0b42095c5a9091981f8cfd7",
  "kind": "def",
  "lexical_name": "lratBitblaster",
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
  "slug": "lratbitblaster--df72504ae056be7e6ee235c5",
  "source": {
    "blob": "deb3c192d08f555c94eb4f621915c4a0212bbb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df72504ae056be7e6ee235c541b97840965d214b6c91af66534ab9751b48a210",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd2aa75cb9b33bb53a7b3450c099955f410e9bd7c0b42095c5a9091981f8cfd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def lratBitblaster (ctx : TacticContext) : UnsatProver LratCert :=
  fun (goal : MVarId) (reflectionResult : ReflectionResult) (atomsAssignment : Std.HashMap Nat (Nat × Expr × Bool)) => do
  withTraceNode `Meta.Tactic.bv (fun _ => return "Preparing LRAT reflection term") do
    let bvExpr := reflectionResult.bvExpr
    let entry ←
      withTraceNode `Meta.Tactic.bv (fun _ => return "Bitblasting BVLogicalExpr to AIG") do
        -- lazyPure to prevent compiler lifting
        IO.lazyPure (fun _ => bvExpr.bitblast)
    let aigSize := entry.aig.decls.size
    trace[Meta.Tactic.bv] s!"AIG has {aigSize} nodes."

    if ctx.config.graphviz then
      IO.FS.writeFile ("." / "aig.gv") <| AIG.toGraphviz entry

    let (cnf, map) ←
      withTraceNode `Meta.Tactic.sat (fun _ => return "Converting AIG to CNF") do
        -- lazyPure to prevent compiler lifting
        IO.lazyPure (fun _ =>
          let (entry, map) := entry.relabelNat'
          let cnf := AIG.toCNF entry
          (cnf, map)
        )

    let res ←
      withTraceNode `Meta.Tactic.sat (fun _ => return "Obtaining external proof certificate") do
        runExternal
          cnf
          ctx.solver
          ctx.lratPath
          ctx.config.trimProofs
          ctx.config.timeout
          ctx.config.binaryProofs
          ctx.config.solverMode

    match res with
    | .ok cert =>
      trace[Meta.Tactic.sat] "SAT solver found a proof."
      let proof ← cert.toReflectionProof ctx reflectionResult
      return .ok ⟨proof, cert⟩
    | .error assignment =>
      trace[Meta.Tactic.sat] "SAT solver found a counter example."
      let equations := reconstructCounterExample map assignment aigSize atomsAssignment
      return .error { goal, unusedHypotheses := reflectionResult.unusedHypotheses, equations }


/--
Given a pre-existing LRAT certificate in `ctx.lratPath` use it to produce a proof of UNSAT.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant30b7c18485bdb819a5cb4832a6a337c650ba09d7ce15b19e07248661dec07e30.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb3c192d08f555c94eb4f621915c4a0212bbb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
