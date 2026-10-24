# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "632682c68f63641c045f045d5136214da6f7e519",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `632682c68f63641c045f045d5136214da6f7e519`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Find.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Pred` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Iterate` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-bool-eq-some-iff--bdf32e9717b46cb7399d9f83.md) | 36 | `result-track:bdf32e9717b46cb7399d9f831de7f3829151c64a7d2f7d792c6d2e768cce8833` |
| 2 | `theorem` | [find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-prop-eq-some-iff--82e023d5e672958b3869d04d.md) | 41 | `result-track:82e023d5e672958b3869d04d9027bb368b64f0c87f7729f1bac4f01844a02812` |
| 3 | `theorem` | [find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-bool-eq-some-iff-splits--f4557a82c4b0f74205b1ba76.md) | 47 | `result-track:f4557a82c4b0f74205b1ba76b3f6755966ca9dc4410e15c75d068087e63b1dac` |
| 4 | `theorem` | [find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-prop-eq-some-iff-splits--21416f373aba376f69e7fa86.md) | 62 | `result-track:21416f373aba376f69e7fa864528c3fe2eef6b9e1a5f27053cea4cd16d5f845b` |
| 5 | `theorem` | [contains_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/contains-bool-eq--5c3f35be1b093c9066043394.md) | 70 | `result-track:5c3f35be1b093c9066043394dce6fd84603614a4ba60373f6aac10e16d07951b` |
| 6 | `theorem` | [contains_prop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/contains-prop-eq--65a36cacd207b97c66f299a1.md) | 77 | `result-track:65a36cacd207b97c66f299a117eec0174e78da56b68d5178c3a51bf2b97010db` |
| 7 | `theorem` | [Pos.find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-some-iff--9fedbbb12d3a4619bcf64de6.md) | 81 | `result-track:9fedbbb12d3a4619bcf64de65ebe822796c804409addf7644148ec1d37dfaa2c` |
| 8 | `theorem` | [Pos.find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-some-iff-splits--44ceff90fb60ddb903f0657a.md) | 88 | `result-track:44ceff90fb60ddb903f0657a5aa47f22794053da4f4030a540397803dcfd2202` |
| 9 | `theorem` | [Pos.find?_bool_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-none-iff--2f01fc62c5af8e05185a1399.md) | 125 | `result-track:2f01fc62c5af8e05185a1399ebcb0ff212729d1a783594b65f968c2f49a54e34` |
| 10 | `theorem` | [Pos.find?_bool_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-none-iff-of-splits--117ddce2a30a415d35b120dd.md) | 130 | `result-track:117ddce2a30a415d35b120dd4a8a810eee67d2e548f5cfcc802c718f0b908276` |
| 11 | `theorem` | [Pos.find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-some-iff--422ef4e09708cd501705a925.md) | 141 | `result-track:422ef4e09708cd501705a925c42041dd41a011d3ac3278886bd11ce4d1cc2950` |
| 12 | `theorem` | [Pos.find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-some-iff-splits--1391ed9b694f7a2b469e3360.md) | 150 | `result-track:1391ed9b694f7a2b469e336071a67fef0f4ba1c6cca09ddd966567f8548de9b6` |
| 13 | `theorem` | [Pos.find?_prop_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-none-iff--9c15ecb5e49c9380c3b2de59.md) | 157 | `result-track:9c15ecb5e49c9380c3b2de59e24583f8b5fb5b03280545f55b09efa218b1de1f` |
| 14 | `theorem` | [Pos.find?_prop_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-none-iff-of-splits--f5f9b0e00f7c9104f61971cd.md) | 162 | `result-track:f5f9b0e00f7c9104f61971cd217762046ea1d2d176065f9223e981ff91ac169a` |
| 15 | `theorem` | [Pos.find?_prop_eq_find?_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-find-decide--199a2dee6ba084c1ef67c21c.md) | 172 | `result-track:199a2dee6ba084c1ef67c21c6917779da632efede752d1de21fd13163668b16d` |
| 16 | `theorem` | [find?_prop_eq_find?_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-prop-eq-find-decide--5a0976b910760413d86450ae.md) | 178 | `result-track:5a0976b910760413d86450ae1a619760f14a5982127bc68fe9af874313654ce9` |
| 17 | `theorem` | [contains_prop_eq_contains_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/contains-prop-eq-contains-decide--71695fd3b22d76493dda953c.md) | 184 | `result-track:71695fd3b22d76493dda953c1d26bc5d4c7f88f9a88020176a6f88608c332b76` |
| 18 | `theorem` | [Pos.find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-some-iff--73dff4286baf865c5fedd818.md) | 189 | `result-track:73dff4286baf865c5fedd818b66f361fdb7e1e18072b1148537907aef58e2cc4` |
| 19 | `theorem` | [Pos.find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-some-iff-splits--5311fd2db49df4620642835b.md) | 209 | `result-track:5311fd2db49df4620642835bd95d31aaea826dc42327e0df98daf1d32f251f30` |
| 20 | `theorem` | [Pos.find?_bool_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-none-iff--c20dc6615d7c81b9e9ff3c71.md) | 222 | `result-track:c20dc6615d7c81b9e9ff3c7105845780a7fe6a8e79acf8606450103ba49527ef` |
| 21 | `theorem` | [Pos.find?_bool_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-bool-eq-none-iff-of-splits--b3fc8e8c43f0a43e0705e281.md) | 235 | `result-track:b3fc8e8c43f0a43e0705e281a8bdfa6bd42b490b522ef6ce94f5c001e5cba9f1` |
| 22 | `theorem` | [Pos.find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-some-iff--262dc2589db52364ccd2de58.md) | 241 | `result-track:262dc2589db52364ccd2de58e96622be653c90eb89977f48a1cc64095ab58239` |
| 23 | `theorem` | [Pos.find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-some-iff-splits--c78f7dd8c51ce42f1f7aecf3.md) | 250 | `result-track:c78f7dd8c51ce42f1f7aecf3af1d02b28988864381053973539e9a05c7f8514c` |
| 24 | `theorem` | [Pos.find?_prop_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-none-iff--84223657fb38ac4e9b147650.md) | 257 | `result-track:84223657fb38ac4e9b1476502dea828d2b549022f9c70da5785c3a19d73b6e51` |
| 25 | `theorem` | [Pos.find?_prop_eq_none_iff_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/pos-find-prop-eq-none-iff-of-splits--a05e3e51045cb660d621001a.md) | 263 | `result-track:a05e3e51045cb660d621001a3cef9f4ef99616da6bddbaca178538679c665f88` |
| 26 | `theorem` | [find?_bool_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-bool-eq-some-iff--873eef8b1a77a2af17d671fb.md) | 269 | `result-track:873eef8b1a77a2af17d671fb00598d9bd9f92dcdd6a01b3b6cbbf07e7054ba7b` |
| 27 | `theorem` | [find?_bool_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-bool-eq-some-iff-splits--3140db255884ae97b2e7db58.md) | 283 | `result-track:3140db255884ae97b2e7db582bb57fcb1e379f00b50499a6511ac94d488e21c2` |
| 28 | `theorem` | [find?_prop_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-prop-eq-some-iff--a1391f06f0daa72bf3d43ba5.md) | 294 | `result-track:a1391f06f0daa72bf3d43ba5d0a4a5ba930dc4af8ccd570eb372eb09f58a6886` |
| 29 | `theorem` | [find?_prop_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/find-prop-eq-some-iff-splits--26103e09d1f096c64b033b27.md) | 300 | `result-track:26103e09d1f096c64b033b273d3adb220e8fe9095212ef109d43c24820b17f61` |
| 30 | `theorem` | [contains_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/contains-bool-eq--626555081bed476406ccb69c.md) | 308 | `result-track:626555081bed476406ccb69cc0f2857f1e46ac07c4665b6b71fed7cf33115e1c` |
| 31 | `theorem` | [contains_prop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/declarations/contains-prop-eq--df2bf87dfe8e28d26330d55e.md) | 312 | `result-track:df2bf87dfe8e28d26330d55e77dfd36b3288719c9929bc598cc651b7b9323e2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
