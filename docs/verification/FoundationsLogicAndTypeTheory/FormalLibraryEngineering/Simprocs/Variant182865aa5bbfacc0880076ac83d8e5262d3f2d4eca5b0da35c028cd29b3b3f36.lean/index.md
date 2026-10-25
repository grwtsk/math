# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simprocs.Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6991c50ac19d74710a3b2161de3f5f055ccf00fd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6991c50ac19d74710a3b2161de3f5f055ccf00fd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Eval` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Parser.Command` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Even` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalNatExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean/declarations/evalnatexpr--830e9a626830575c5e8a34d8.md) | 11 | `declaration-track:830e9a626830575c5e8a34d8063a926e1b5ea63b212e1d6286e373ec70da4130` |
| 2 | `lemma` | [count_201_true_eq_201](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean/declarations/count-201-true-eq-201--8ca68677c8fc3d7f90b2a008.md) | 24 | `result-track:8ca68677c8fc3d7f90b2a008b5e42ffe528705920a02c3d389c6bbb9b6cbb71e` |
| 3 | `lemma` | [count_even_201_eq_101](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean/declarations/count-even-201-eq-101--f365e9b536dc506cbd364dc1.md) | 27 | `result-track:f365e9b536dc506cbd364dc1d7f51ea3fce9dedc1b60fd059d860033b0e61bb6` |
| 4 | `lemma` | [count_even_2010_eq_1010](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simprocs/Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36.lean/declarations/count-even-2010-eq-1010--da89e2a04c7017e990da2c1c.md) | 30 | `result-track:da89e2a04c7017e990da2c1c95f208fce291701fc244d239c6129fc8267d9d84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
