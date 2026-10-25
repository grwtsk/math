# mkLatticeTerminals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ab606c4a3b089393326bbcb1c8d99c07b3778190218537f29fd144d27072308",
  "kind": "def",
  "lexical_name": "mkLatticeTerminals",
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
  "slug": "mklatticeterminals--ec8208bf8064726c100dac33",
  "source": {
    "blob": "8e6a20668f4df44e498088500bfadb5f207dd1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec8208bf8064726c100dac33c14d48297308facae1fac227c316a4edd9d29206",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ab606c4a3b089393326bbcb1c8d99c07b3778190218537f29fd144d27072308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkLatticeTerminals (names : Array Name) : MetaM (Std.HashMap Name (Name × Nat)) := do
  let mut m : Std.HashMap Name (Name × Nat) := {}
  for n in names do
    let ty ← Meta.inferType (← mkConstWithFreshMVarLevels n)
    let (_, _, concl) ← forallMetaTelescopeReducing ty
    let some (_, _, _, rhs) := (← instantiateMVars concl).app4? ``PartialOrder.rel
      | throwError "lattice terminal {n} does not conclude a `⊑` relation"
    let some h := rhs.getAppFn.constName?
      | throwError "lattice terminal {n} has no head constant on its conclusion right-hand side"
    m := m.insert h (n, rhs.getAppNumArgs)
  return m

/--
Saturate `e` by rewriting at the root with the first applicable equation from `rewrites`, handling
over-application, until none applies. Returns the reduced expression and, when a rewrite fired, a proof
`e = reduced`. Unification (`isDefEq`) drives the match, so schematic operands are supported. `fuel`
bounds the rewrite chain, turning a non-terminating `@[frameproc]` rewrite set into an error.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6a20668f4df44e498088500bfadb5f207dd1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
