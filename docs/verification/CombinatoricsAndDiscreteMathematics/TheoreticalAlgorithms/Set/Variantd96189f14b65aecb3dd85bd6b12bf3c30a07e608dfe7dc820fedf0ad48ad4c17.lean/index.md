# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1d368af14451c4060b41abe554b6ce6a09f74ef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1d368af14451c4060b41abe554b6ce6a09f74ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Iterators.Lemmas.Consumers.Monadic.Set` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 18; external provider; requires a separately pinned dependency.
- `Std.Data.HashSet.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Std.Data.TreeSet.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.toHashSet_equiv_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean/declarations/iter-tohashset-equiv-oflist--8ff76886122a952f72a5c255.md) | 32 | `result-track:8ff76886122a952f72a5c2553116e7649a41f60bfc87c01898dc81550559831a` |
| 2 | `theorem` | [Iter.toExtHashSet_eq_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean/declarations/iter-toexthashset-eq-oflist--5133da57fad893a48a406ff9.md) | 39 | `result-track:5133da57fad893a48a406ff9ff0a4dd13870a7315190d9de85c80763ab33a1b8` |
| 3 | `theorem` | [Iter.toTreeSet_equiv_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean/declarations/iter-totreeset-equiv-oflist--3e5afd2d011f755320d298d5.md) | 46 | `result-track:3e5afd2d011f755320d298d5b2a5b1105ef8ff2b9d91f78f6193ef39e2095ea3` |
| 4 | `theorem` | [Iter.toExtTreeSet_eq_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantd96189f14b65aecb3dd85bd6b12bf3c30a07e608dfe7dc820fedf0ad48ad4c17.lean/declarations/iter-toexttreeset-eq-oflist--ea722d501899fd87b47c3981.md) | 53 | `result-track:ea722d501899fd87b47c3981554535ead65a93a7317e8ee95ed517fc2c3373e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
