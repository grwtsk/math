# mkDelayedProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc237bd770df159fc169236ca12eccd74ef45dbf0e2ba2599a3808b73b461f2d",
  "kind": "def",
  "lexical_name": "mkDelayedProof",
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
  "slug": "mkdelayedproof--43c8d3fc2796ab6510f96b3f",
  "source": {
    "blob": "27ead5f5dd7cce93d27c33816eff02f07b936f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43c8d3fc2796ab6510f96b3f683b1202d2cf51bd767271d157e169a41162365f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc237bd770df159fc169236ca12eccd74ef45dbf0e2ba2599a3808b73b461f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkDelayedProof (H : DelayedExpr) : CCM Expr := do
  match H with
  | .ofExpr H => return H
  | .eqProof lhs rhs => liftOption (← getEqProof lhs rhs)
  | .congrArg f h => mkCongrArg f (← mkDelayedProof h)
  | .congrFun h a => mkCongrFun (← mkDelayedProof h) (← liftOption a.toExpr)
  | .eqSymm h => mkEqSymm (← mkDelayedProof h)
  | .eqSymmOpt a₁ a₂ h =>
    mkAppOptM ``Eq.symm #[none, ← liftOption a₁.toExpr, ← liftOption a₂.toExpr, ← mkDelayedProof h]
  | .eqTrans h₁ h₂ => mkEqTrans (← mkDelayedProof h₁) (← mkDelayedProof h₂)
  | .eqTransOpt a₁ a₂ a₃ h₁ h₂ =>
    mkAppOptM ``Eq.trans
      #[none, ← liftOption a₁.toExpr, ← liftOption a₂.toExpr, ← liftOption a₃.toExpr,
        ← mkDelayedProof h₁, ← mkDelayedProof h₂]
  | .heqOfEq h => mkAppM ``heq_of_eq #[← mkDelayedProof h]
  | .heqSymm h => mkHEqSymm (← mkDelayedProof h)

/-- Use the format of `H` to try and construct a proof or `lhs = rhs`:
* If `H = .congr`, then use congruence.
* If `H = .eqTrue`, try to prove `lhs = True` or `rhs = True`,
  if they have the format `R a b`, by proving `a = b`.
* Otherwise, return the (delayed) proof encoded by `H` itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27ead5f5dd7cce93d27c33816eff02f07b936f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
