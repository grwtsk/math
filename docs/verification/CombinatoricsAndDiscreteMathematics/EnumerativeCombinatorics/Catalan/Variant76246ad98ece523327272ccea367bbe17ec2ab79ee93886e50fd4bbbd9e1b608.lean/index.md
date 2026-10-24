# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Catalan.Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "169813d9dd29684e26e393376b59621f6990f081",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `169813d9dd29684e26e393376b59621f6990f081`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Central` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Tree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan--fac524216162f9ba0bf35f64.md) | 57 | `declaration-track:fac524216162f9ba0bf35f64c37df6192710eea2a83a1e3268188c1fd891056a` |
| 2 | `theorem` | [catalan_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan-zero--df62cdfdf985729fe782bd61.md) | 65 | `result-track:df62cdfdf985729fe782bd61405897f971ba1edec7b97fda333e14e7af3c0cce` |
| 3 | `theorem` | [catalan_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan-succ--cd2f7a0fbf13f7677252578d.md) | 68 | `result-track:cd2f7a0fbf13f7677252578daa7c207fedd1c7eeba3622838e2d68e36edbb6bb` |
| 4 | `theorem` | [catalan_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan-succ--a34c03d1a3fae80ddd5a775b.md) | 72 | `result-track:a34c03d1a3fae80ddd5a775b51d0c918404b068d61237108838bccb2e6c51202` |
| 5 | `theorem` | [catalan_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan-one--0fb3be7955a8feee3bf6714d.md) | 79 | `result-track:0fb3be7955a8feee3bf6714d7a139b690a7dc80b15d1573a544f7293345a44e3` |
| 6 | `def` | [gosperCatalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/gospercatalan--c8702dab5af6bd81de3e99d3.md) | 84 | `declaration-track:c8702dab5af6bd81de3e99d3edae267886715553035e855ceb26018ac779ae88` |
| 7 | `theorem` | [gosper_trick](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/gosper-trick--fa8122a2c53dd00117c4bb90.md) | 87 | `result-track:fa8122a2c53dd00117c4bb90c796f3dd623c3878985b3ea07314813c4db71ef7` |
| 8 | `theorem` | [gosper_catalan_sub_eq_central_binom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/gosper-catalan-sub-eq-central-binom-div--85b08f7c5218f7f248a7741e.md) | 106 | `result-track:85b08f7c5218f7f248a7741ec1a9c09bcc9a71322d829a25acf37e64133362a4` |
| 9 | `theorem` | [catalan_eq_centralBinom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan-eq-centralbinom-div--3f3e1fc3a86ba4f5eadc3829.md) | 115 | `result-track:3f3e1fc3a86ba4f5eadc38292ee2a5894b85fc70e050ef6dd622c676e63926f7` |
| 10 | `theorem` | [succ_mul_catalan_eq_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/succ-mul-catalan-eq-centralbinom--9364de7eb86b144d57fd5db5.md) | 139 | `result-track:9364de7eb86b144d57fd5db5850d7ef3ec06c73f51cc048b5c8dcc8913a9c249` |
| 11 | `theorem` | [catalan_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan-two--03e7545a8e2487c8cf04cdb1.md) | 143 | `result-track:03e7545a8e2487c8cf04cdb1d1271cd43bf16fb18182932c4109c14822191474` |
| 12 | `theorem` | [catalan_three](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/catalan-three--84a5e8ae7f67adb19fc6a771.md) | 147 | `result-track:84a5e8ae7f67adb19fc6a771e5b121401db164ed369ed7fc25b11a01b0725edf` |
| 13 | `def` | [pairwiseNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/pairwisenode--34d94f3812f541a8f9f1c562.md) | 158 | `declaration-track:34d94f3812f541a8f9f1c5627de0af793530d28dc08f81659867449e68539981` |
| 14 | `def` | [treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/treesofnumnodeseq--7c0f770736a889562d238099.md) | 163 | `declaration-track:7c0f770736a889562d2380993537785fdd8960d177855021eff6bb4688a7b37b` |
| 15 | `theorem` | [treesOfNumNodesEq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/treesofnumnodeseq-zero--fceabf27e433e783766bd9de.md) | 179 | `result-track:fceabf27e433e783766bd9def78eb4602ec9ef868b54ad995f258a30389fd248` |
| 16 | `theorem` | [treesOfNumNodesEq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/treesofnumnodeseq-succ--54e61ad983a84e868873de16.md) | 182 | `result-track:54e61ad983a84e868873de16c2649f0fa9d76929671aefe9df6ddb837cdaea78` |
| 17 | `theorem` | [mem_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/mem-treesofnumnodeseq--864e4f7f5d16e7d3aa088bac.md) | 192 | `result-track:864e4f7f5d16e7d3aa088bacac926e927b0b103f8f44c323d7a0ff065a17c45a` |
| 18 | `theorem` | [mem_treesOfNumNodesEq_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/mem-treesofnumnodeseq-numnodes--16cbbb32ff12e2c99cad2dc9.md) | 199 | `result-track:16cbbb32ff12e2c99cad2dc9d20917f5baf4f59cea4c30c3066213e825e5ec01` |
| 19 | `theorem` | [coe_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/coe-treesofnumnodeseq--cd4510a29f1aec267ce8d029.md) | 204 | `result-track:cd4510a29f1aec267ce8d029a0b53bf19449685f9c163326587f2e730006ab40` |
| 20 | `theorem` | [treesOfNumNodesEq_card_eq_catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/declarations/treesofnumnodeseq-card-eq-catalan--f56d3811c0446c8dde38ece7.md) | 209 | `result-track:f56d3811c0446c8dde38ece7e3b1725683d633185105bd642e16488c72b9ca60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
