# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyClosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyClosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyClosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyClosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 4; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DependencyPath](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/dependencypath--3463f377058c452c857da513.md) | 35 | `declaration-track:3463f377058c452c857da513c97f967a5e7252d70b0059aa9d57199f659a1797` |
| 2 | `theorem` | [trans](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/trans--a64ec5080c4542c6c346d1a8.md) | 46 | `result-track:a64ec5080c4542c6c346d1a8fcc65cc370082166c2bf71b4b917a667b3d7e924` |
| 3 | `def` | [dependencyStep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/dependencystep--506a69e80782923a75df86fd.md) | 58 | `declaration-track:506a69e80782923a75df86fd1a77b79d4f767fe8fcb8f8810284fcf2a38734a3` |
| 4 | `theorem` | [mem_dependencyStep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/mem-dependencystep--7b1844b94dfc641c5c1d384b.md) | 63 | `result-track:7b1844b94dfc641c5c1d384b67cab4a79de2d5ab4a3503d42fb6cadd0fee88b8` |
| 5 | `theorem` | [subset_dependencyStep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/subset-dependencystep--3c25bb93ed44d596b335b2b7.md) | 68 | `result-track:3c25bb93ed44d596b335b2b7273a4ec41c20325edaf52832f5c22d290ec23f1b` |
| 6 | `theorem` | [dependencyStep_mono](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/dependencystep-mono--fbfe6cd04deb554d02b11b18.md) | 71 | `result-track:fbfe6cd04deb554d02b11b18732e794f4c0fdf292982c7d5db1b4c07140bd63e` |
| 7 | `def` | [affectedClosure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/affectedclosure--5ab0a3b094be7b28755b740d.md) | 81 | `declaration-track:5ab0a3b094be7b28755b740d41ceb41377be1e27d749c8fec7b13026182ae042` |
| 8 | `def` | [DependencyClosed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/dependencyclosed--3b15c164b87f271a5815afd2.md) | 94 | `declaration-track:3b15c164b87f271a5815afd2cfb830cb0b6533414f5be199497fdbb11d84c740` |
| 9 | `theorem` | [dependencyStep_eq_iff_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/dependencystep-eq-iff-closed--225c3c6b3d9fced4c8fc40ba.md) | 98 | `result-track:225c3c6b3d9fced4c8fc40ba9bb7117843b189a39957a4eff2fac763d0706cd5` |
| 10 | `theorem` | [seeds_subset_affectedClosure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/seeds-subset-affectedclosure--274f9a0ffae4bc1ffe21520b.md) | 113 | `result-track:274f9a0ffae4bc1ffe21520bd8845a435c8e3880fe0e377b72c056569b7d1752` |
| 11 | `theorem` | [affectedClosure_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/affectedclosure-closed--c0fbfa7966fb6d33e9e9332c.md) | 121 | `result-track:c0fbfa7966fb6d33e9e9332c03b0d27f561747500a65fba214b38c9137aae2d9` |
| 12 | `theorem` | [affectedClosure_least](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/affectedclosure-least--000507e4ac5ca553e91174db.md) | 131 | `result-track:000507e4ac5ca553e91174db5d6cb9d95371caad5e50e1202a3ab1a41656b4b6` |
| 13 | `theorem` | [dependencyPath_mem_affectedClosure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/dependencypath-mem-affectedclosure--5bbf4fc38bbb3b0194b27bc3.md) | 147 | `result-track:5bbf4fc38bbb3b0194b27bc3afea24f4fd1ac474139ff582cec6d7c1c910081f` |
| 14 | `theorem` | [mem_affectedClosure_iff](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/mem-affectedclosure-iff--ee3fed7ed1b69b62b59fd14e.md) | 160 | `result-track:ee3fed7ed1b69b62b59fd14edabb4a2058496e25ad107c912255d9a4cd35ee04` |
| 15 | `theorem` | [affectedClosure_mono](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/affectedclosure-mono--97fb4d97632bfe83a4e47ac7.md) | 184 | `result-track:97fb4d97632bfe83a4e47ac78b18c061d0c92af706e865d74702d25fbc2db818` |
| 16 | `theorem` | [affectedClosure_eq_of_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/affectedclosure-eq-of-closed--d3b82f5b417515121fa59041.md) | 191 | `result-track:d3b82f5b417515121fa59041d4a987a8413a200d3ac06366de4dadeb913cd102` |
| 17 | `theorem` | [affectedClosure_idempotent](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/affectedclosure-idempotent--8ed4abcc8fafa998c8f15974.md) | 199 | `result-track:8ed4abcc8fafa998c8f15974b00d33ef4363c0824e2b982ca494abe093a32070` |
| 18 | `theorem` | [unaffected_not_seed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/unaffected-not-seed--235597c17c4383e59af1dc2a.md) | 205 | `result-track:235597c17c4383e59af1dc2a86100913cb1aeb33ebb912b7867d17bf4737c21c` |
| 19 | `theorem` | [unaffected_dependency_unaffected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/unaffected-dependency-unaffected--126a7539b7739a8e6c72de26.md) | 211 | `result-track:126a7539b7739a8e6c72de26b210845f3aef74df175ec73cf07a30de216b14cd` |
| 20 | `theorem` | [affectedClosure_empty](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/declarations/affectedclosure-empty--5cf98b6813e588f51683e49f.md) | 219 | `result-track:5cf98b6813e588f51683e49f412d319176ab9b69eca4821480bc4857baf57292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
