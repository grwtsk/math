# Verification target: GRWTSK.Order.Closure.FiniteDependencyClosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Order/Closure/FiniteDependencyClosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867`.

Source path: `GRWTSK/Order/Closure/FiniteDependencyClosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Order/Closure/FiniteDependencyClosure.lean.json)

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
| 1 | `inductive` | [DependencyPath](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/dependencypath--e91cdcc3f7645f46bec25c79.md) | 35 | `declaration-track:e91cdcc3f7645f46bec25c792445a55aa3fbe666b9c59a0d7516ed5570c7341a` |
| 2 | `theorem` | [trans](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/trans--b39a81642a7f6c55846b862c.md) | 46 | `result-track:b39a81642a7f6c55846b862c1a9c03a2751b2440a7a0592907c4154f67788ae1` |
| 3 | `def` | [dependencyStep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/dependencystep--5bc8230eba1711bcbac92d56.md) | 58 | `declaration-track:5bc8230eba1711bcbac92d5617b4d894f5d008c3850f3eafc5378068bd7fa117` |
| 4 | `theorem` | [mem_dependencyStep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/mem-dependencystep--8de65d43a396555204205ff5.md) | 63 | `result-track:8de65d43a396555204205ff537093e61699afe756e5cee99d71caf6112a4787b` |
| 5 | `theorem` | [subset_dependencyStep](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/subset-dependencystep--6e4b468d0ce4a5c88f355e69.md) | 68 | `result-track:6e4b468d0ce4a5c88f355e696187006b68185b3dcf9682ae2b3679ff7a7cd106` |
| 6 | `theorem` | [dependencyStep_mono](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/dependencystep-mono--4113d958df6194db4a446b9c.md) | 71 | `result-track:4113d958df6194db4a446b9ce5d52fd4acca3d9466a13855dacd8e9c2d1c8daf` |
| 7 | `def` | [affectedClosure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/affectedclosure--7cceffe7a0b23094e1a43304.md) | 81 | `declaration-track:7cceffe7a0b23094e1a4330417002e2224e0d2920df7a1bf32328ae722e69461` |
| 8 | `def` | [DependencyClosed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/dependencyclosed--1487623416584da837f9be25.md) | 94 | `declaration-track:1487623416584da837f9be25d67ded46b96637e1553501f3c3191100bfceb8b2` |
| 9 | `theorem` | [dependencyStep_eq_iff_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/dependencystep-eq-iff-closed--8b6b25c287c7dac82dff8d7e.md) | 98 | `result-track:8b6b25c287c7dac82dff8d7e7375b279e4c0b034b86791c75674b2f264e4ceb2` |
| 10 | `theorem` | [seeds_subset_affectedClosure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/seeds-subset-affectedclosure--8874d5078f1b103b87c45e81.md) | 113 | `result-track:8874d5078f1b103b87c45e81d20c26865362e1125e354b2ea097cd401269448c` |
| 11 | `theorem` | [affectedClosure_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/affectedclosure-closed--a8009f8647619616d1c3f5e8.md) | 121 | `result-track:a8009f8647619616d1c3f5e8ad9415dc64a820217a66c965efeb0526d0fba78e` |
| 12 | `theorem` | [affectedClosure_least](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/affectedclosure-least--e1a9ab2d3dd81f4ce9caad95.md) | 131 | `result-track:e1a9ab2d3dd81f4ce9caad9583f5e20debd489f83ae60793575b29a274940d81` |
| 13 | `theorem` | [dependencyPath_mem_affectedClosure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/dependencypath-mem-affectedclosure--9061a18642015c45acedcf77.md) | 147 | `result-track:9061a18642015c45acedcf7774b84cc9a55103118efcccdaa8690f7bd279b831` |
| 14 | `theorem` | [mem_affectedClosure_iff](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/mem-affectedclosure-iff--a22797388ced2038324923ad.md) | 160 | `result-track:a22797388ced2038324923adeb1f694119b16c77266ec3f9d3fb76b385490a29` |
| 15 | `theorem` | [affectedClosure_mono](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/affectedclosure-mono--f7f140eef68bd78aaf82807d.md) | 184 | `result-track:f7f140eef68bd78aaf82807d84fc11ce12b1b28d1c14291ed34c0efbb90bcfe7` |
| 16 | `theorem` | [affectedClosure_eq_of_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/affectedclosure-eq-of-closed--0ea92fd75bdf3856b3d233d8.md) | 191 | `result-track:0ea92fd75bdf3856b3d233d8787b8c2404d656739df905ecb0f467662483fc2b` |
| 17 | `theorem` | [affectedClosure_idempotent](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/affectedclosure-idempotent--35ec127200110c1a3464f53f.md) | 199 | `result-track:35ec127200110c1a3464f53f7b462032893b6d996ccb2cc88c8ee51f1a9ea285` |
| 18 | `theorem` | [unaffected_not_seed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/unaffected-not-seed--4a5b5d371908b9f0067b4f0f.md) | 205 | `result-track:4a5b5d371908b9f0067b4f0fc65fd3eb6502fc78d87e59dfb530a233b16f837d` |
| 19 | `theorem` | [unaffected_dependency_unaffected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/unaffected-dependency-unaffected--b56503f1f4163d1724630d77.md) | 211 | `result-track:b56503f1f4163d1724630d77560b7dda2a1b820ab9cdc4aca86f659508417716` |
| 20 | `theorem` | [affectedClosure_empty](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/declarations/affectedclosure-empty--cdebe222f6601458076638cf.md) | 219 | `result-track:cdebe222f6601458076638cfde9a933a5c7c0eafe111ecefeaea0382097588a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
