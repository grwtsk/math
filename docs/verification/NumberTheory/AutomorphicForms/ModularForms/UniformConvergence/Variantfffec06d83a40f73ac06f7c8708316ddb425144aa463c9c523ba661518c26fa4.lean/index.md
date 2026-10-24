# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.UniformConvergence.Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0c229e96e5f3753a48c765c62c5e9c685289c3b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0c229e96e5f3753a48c765c62c5e9c685289c3b`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Box` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.EisensteinSeries.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_eq_max_natAbs](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/norm-eq-max-natabs--6c8c0fcdc3d04957ed30762a.md) | 41 | `result-track:6c8c0fcdc3d04957ed30762a95a1d5ed5bcbabb586d7abe5d4dfe8f3c32ac987` |
| 2 | `def` | [r1](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r1--5c504394b8893b1cdadda16a.md) | 50 | `declaration-track:5c504394b8893b1cdadda16a52a1104f338c20157be6c12dcf00b3bd2104ab97` |
| 3 | `lemma` | [r1_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r1-eq--022c06d1b9b891a080495959.md) | 52 | `result-track:022c06d1b9b891a080495959e6c594e3d8d1e9b04b58fc3e1e2f121ef0b6fe69` |
| 4 | `lemma` | [r1_pos](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r1-pos--7f71f543c9386abaf01f137b.md) | 55 | `result-track:7f71f543c9386abaf01f137b042c61f982e11a72241aa88e8aa905f5ba93dbfe` |
| 5 | `lemma` | [r1_aux_bound](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r1-aux-bound--49b5378f8cd7a54baac132db.md) | 60 | `result-track:49b5378f8cd7a54baac132db9e231a6a355efd33a10eb0af33289c8f60436efc` |
| 6 | `def` | [r](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r--424092cdf0db4f10cdec0ec4.md) | 71 | `declaration-track:424092cdf0db4f10cdec0ec43e6b0cce6ddf21ac181c864d15107c33e3d0d2d9` |
| 7 | `lemma` | [r_pos](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r-pos--a5299a0f2798399c71a67a35.md) | 73 | `result-track:a5299a0f2798399c71a67a35f55fc94bd9fefbb72e2ad604d8f02f3cfc77f86a` |
| 8 | `lemma` | [r_lower_bound_on_verticalStrip](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r-lower-bound-on-verticalstrip--f4ab8fb7330836868cbb44f8.md) | 76 | `result-track:f4ab8fb7330836868cbb44f839ca73c496b0e81de4608b582a1b902c7876b747` |
| 9 | `lemma` | [auxbound1](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/auxbound1--49158b772c95092b3f801561.md) | 85 | `result-track:49158b772c95092b3f801561f63f313f9704773a26b1570aac5daaabe5ed379f` |
| 10 | `lemma` | [auxbound2](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/auxbound2--913ca979b33e5c383a58d31b.md) | 93 | `result-track:913ca979b33e5c383a58d31b12e93a2df479c18058a02e6b2f4741a0d4c6aa2e` |
| 11 | `lemma` | [div_max_sq_ge_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/div-max-sq-ge-one--f15abfdc6a3387095a49b40e.md) | 99 | `result-track:f15abfdc6a3387095a49b40edfdbc1074120bde566fa59b317aa72fc44008e76` |
| 12 | `lemma` | [r_mul_max_le](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/r-mul-max-le--5e9a453c182daa0435b79e35.md) | 113 | `result-track:5e9a453c182daa0435b79e352e62558cfc196561a53cfdc2e254a2eaa91e5caa` |
| 13 | `lemma` | [summand_bound](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/summand-bound--2b075944c53a34746d8a7796.md) | 125 | `result-track:2b075944c53a34746d8a7796603f0559c16a1aa5863c18135ec517c6c54f78d2` |
| 14 | `lemma` | [summand_bound_of_mem_verticalStrip](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/summand-bound-of-mem-verticalstrip--40faa2d99800d976190920e4.md) | 137 | `result-track:40faa2d99800d976190920e47c97aad57db76718b229931ef6ad57528baf5c09` |
| 15 | `lemma` | [summable_one_div_norm_rpow](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/summable-one-div-norm-rpow--2b75b47882ad5adf5c624afb.md) | 150 | `result-track:2b75b47882ad5adf5c624afb4a76160f023ef315eecd88c8ed93c78c68e7a309` |
| 16 | `theorem` | [eisensteinSeries_tendstoLocallyUniformly](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/eisensteinseries-tendstolocallyuniformly--49f4724914cb48336c90552f.md) | 169 | `result-track:49f4724914cb48336c90552f70643123851f1155d06f0a1e50a62ef951eda0f1` |
| 17 | `lemma` | [eisensteinSeries_tendstoLocallyUniformlyOn](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/declarations/eisensteinseries-tendstolocallyuniformlyon--a5d095fc2f51c9646febdb70.md) | 185 | `result-track:a5d095fc2f51c9646febdb703d0ee8763554561dd09062c15bfda886bb5350e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
