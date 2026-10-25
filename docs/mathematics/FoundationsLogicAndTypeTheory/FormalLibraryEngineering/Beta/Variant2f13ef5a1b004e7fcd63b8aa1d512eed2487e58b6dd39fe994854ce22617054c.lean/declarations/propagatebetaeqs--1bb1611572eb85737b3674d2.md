# propagateBetaEqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5510f2cfa930c270c95f4ae0d80696cd69dcd1efc7eefeab51451a07ae151d90",
  "kind": "def",
  "lexical_name": "propagateBetaEqs",
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
  "slug": "propagatebetaeqs--1bb1611572eb85737b3674d2",
  "source": {
    "blob": "37611859b0318da85cf13846b78a5b201708e02c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Beta/Variant2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bb1611572eb85737b3674d229fc2d97cdae0f0d0b9c8f2143a1b15e26596de9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Beta/Variant2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5510f2cfa930c270c95f4ae0d80696cd69dcd1efc7eefeab51451a07ae151d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateBetaEqs (lams : Array Expr) (f : Expr) (args : Array Expr) : GoalM Unit := do
  if args.isEmpty then return ()
  for lam in lams do
    let rhs := lam.beta args
    unless rhs.isLambda do
      let gen := Nat.max (← getGeneration lam) (← getGeneration f)
      let gen ← args.foldlM (init := gen) fun gen arg => return Nat.max gen (← getGeneration arg)
      let gen := gen + 1
      if gen ≥ (← getMaxGeneration) then
        return ()
      let lhs := mkAppN f args
      if (← hasSameType f lam) then
        let mut h ← mkEqProof f lam
        for arg in args do
          h ← mkCongrFun h arg
        let eq ← mkEq lhs rhs
        trace_goal[grind.beta] "{eq}, using {lam}"
        addNewRawFact h eq gen (.beta lam) .other

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Beta/Variant2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Beta/Variant2f13ef5a1b004e7fcd63b8aa1d512eed2487e58b6dd39fe994854ce22617054c.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37611859b0318da85cf13846b78a5b201708e02c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
