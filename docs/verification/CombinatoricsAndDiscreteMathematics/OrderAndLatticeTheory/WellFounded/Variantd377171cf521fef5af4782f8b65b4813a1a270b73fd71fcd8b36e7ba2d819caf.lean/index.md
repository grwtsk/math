# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WellFounded.Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03bb86da43ef0c3fd22b8e8a96cd775fd651454a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03bb86da43ef0c3fd22b8e8a96cd775fd651454a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antisymmetrization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lex_fibration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-fibration--80378c6edd37496d298c3558.md) | 75 | `result-track:80378c6edd37496d298c35580b7a166b5694535d59809fe93703d394f5b85cd1` |
| 2 | `theorem` | [Lex.acc_of_single_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-acc-of-single-erase--fdb8d51f123d4bc17c2449ed.md) | 108 | `result-track:fdb8d51f123d4bc17c2449ed22b2578bc13a098ae98dadef25592d69b0b8da52` |
| 3 | `theorem` | [Lex.acc_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-acc-zero--007261f243e5964012ef7838.md) | 117 | `result-track:007261f243e5964012ef78386465d52e48864316cc9cf27f7040aa269b793ea2` |
| 4 | `theorem` | [Lex.acc_of_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-acc-of-single--f0f2a452c10e6ab86b5ad852.md) | 120 | `result-track:f0f2a452c10e6ab86b5ad852b7082c9b2280c3af2732c8bb4d9ebfb6e60f7c2f` |
| 5 | `theorem` | [Lex.acc_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-acc-single--72a5cbe7841af9be2a53a7d1.md) | 134 | `result-track:72a5cbe7841af9be2a53a7d192561e80ae0abefab159dc43f083ee402408b851` |
| 6 | `theorem` | [Lex.acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-acc--96fa80cc560ce5d756e23979.md) | 156 | `result-track:96fa80cc560ce5d756e23979725b28cebf7940cc8a40456f4052da0c37c554ad` |
| 7 | `theorem` | [Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-wellfounded--5141f4dacc30f46478fdfe1b.md) | 161 | `result-track:5141f4dacc30f46478fdfe1bad58577726e26f305a4a7d2875ee4571163baf9a` |
| 8 | `theorem` | [Lex.wellFounded'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-wellfounded--be17ab3e4acee2286b28771d.md) | 165 | `result-track:be17ab3e4acee2286b28771dd6c92cd2ee3f26edfc33c7cb7a47b059178a21bc` |
| 9 | `instance` | [Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/lex-wellfoundedlt--b25771a86557f08cf6d93c19.md) | 173 | `declaration-track:b25771a86557f08cf6d93c19a349cde2db08b4147ab09abeb3b76fbba06eaa22` |
| 10 | `theorem` | [Pi.Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/pi-lex-wellfounded--c6d43100b0ce4d83a7356e19.md) | 185 | `result-track:c6d43100b0ce4d83a7356e19eb2d504074f679bd35fbb9229389bcd0f51cc000` |
| 11 | `instance` | [Pi.Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/pi-lex-wellfoundedlt--98f6641c4bc55afc35c95626.md) | 194 | `declaration-track:98f6641c4bc55afc35c956266fa8af93518d081723668886b337cebdb1f44559` |
| 12 | `instance` | [Function.Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/function-lex-wellfoundedlt--64779dc4389df29ca413e175.md) | 198 | `declaration-track:64779dc4389df29ca413e17577a6b828e73b1a11d8f3dcbfcb037f19140da372` |
| 13 | `theorem` | [DFinsupp.Lex.wellFounded_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/dfinsupp-lex-wellfounded-of-finite--2c7c2df1a0120fc2caf63216.md) | 202 | `result-track:2c7c2df1a0120fc2caf632165a1e37d4eb7a2968100b472e528a19bb3c6a5482` |
| 14 | `instance` | [DFinsupp.Lex.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/dfinsupp-lex-wellfoundedlt-of-finite--559cab8d71a2aa1bdc4b8caa.md) | 207 | `declaration-track:559cab8d71a2aa1bdc4b8caabeefe8d0d8437e28242717dfb965b200a8fc7395` |
| 15 | `theorem` | [DFinsupp.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/dfinsupp-wellfoundedlt--1c155516bacc4e6ef7a073eb.md) | 211 | `result-track:1c155516bacc4e6ef7a073ebe843aec05300973dad61a0ecac513915437a8765` |
| 16 | `instance` | [DFinsupp.wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/dfinsupp-wellfoundedlt--ff6c6346c740f38e3ecabaa7.md) | 230 | `declaration-track:ff6c6346c740f38e3ecabaa7c6ed196f341df73f9485fb41388db4908cb7d12a` |
| 17 | `instance` | [Pi.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/pi-wellfoundedlt--3ef6295f510cbac1dd14507e.md) | 235 | `declaration-track:3ef6295f510cbac1dd14507e3eb1303419018177e6eeba5af7b54df9305adcc7` |
| 18 | `instance` | [Function.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/function-wellfoundedlt--c76e831edf740b319279a0a2.md) | 245 | `declaration-track:c76e831edf740b319279a0a2d60ba14cadf7af4ceb7f6146db905a79958099b2` |
| 19 | `instance` | [DFinsupp.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variantd377171cf521fef5af4782f8b65b4813a1a270b73fd71fcd8b36e7ba2d819caf.lean/declarations/dfinsupp-wellfoundedlt-of-finite--f34ea8ae59a7d9102bfc6dc3.md) | 249 | `declaration-track:f34ea8ae59a7d9102bfc6dc31eb979c8c2a9f160160ad968e973f27f6115bc3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
