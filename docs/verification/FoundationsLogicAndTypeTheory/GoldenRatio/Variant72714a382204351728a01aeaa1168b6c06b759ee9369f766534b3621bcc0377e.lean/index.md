# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.GoldenRatio.Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f3a4cb722607d594165d76ae139bc414ee6be01",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f3a4cb722607d594165d76ae139bc414ee6be01`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeNormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.LinearRecurrence` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatFib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldenRatio](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/goldenratio--696b6d600e0ac41daf25ec73.md) | 33 | `declaration-track:696b6d600e0ac41daf25ec730433fc7be9ef907c3376c1c492cf8e047eb37bdf` |
| 2 | `def` | [goldenConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/goldenconj--dea2af66692cb833b0f24056.md) | 39 | `declaration-track:dea2af66692cb833b0f240562ddc0abbdbc5773a999e996eba5b227f53c57181` |
| 3 | `theorem` | [inv_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/inv-gold--8e40e9a94b8ca16fba216d99.md) | 48 | `result-track:8e40e9a94b8ca16fba216d995b62340b81258de30f55b6d9e40cd00d6c613775` |
| 4 | `theorem` | [inv_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/inv-goldconj--5c12993d5f3a27225de98c8c.md) | 55 | `result-track:5c12993d5f3a27225de98c8cf69012defaf0ef25dd900be8cd76faae00ca4c9b` |
| 5 | `theorem` | [gold_mul_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/gold-mul-goldconj--99508a385e64b7c1d5482886.md) | 61 | `result-track:99508a385e64b7c1d5482886f967f8351c6cb1e72fd92e19b26a74d101ae0554` |
| 6 | `theorem` | [goldConj_mul_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/goldconj-mul-gold--4c11b2aa9141c98200093a71.md) | 68 | `result-track:4c11b2aa9141c98200093a71347008b181670d74c637dae8682269dbd0a7d202` |
| 7 | `theorem` | [gold_add_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/gold-add-goldconj--34748cc18693e7b7db328921.md) | 74 | `result-track:34748cc18693e7b7db3289211a3074ce1edc25c1dc4b7afd3688f6fa06819226` |
| 8 | `theorem` | [one_sub_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/one-sub-goldconj--68d753ab36c09ac02a8fbe4f.md) | 79 | `result-track:68d753ab36c09ac02a8fbe4ff0a774ba575ce3d5037a2f130e888692f4ecc655` |
| 9 | `theorem` | [one_sub_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/one-sub-gold--530209176a48219fd948f91a.md) | 83 | `result-track:530209176a48219fd948f91ae1c9ac3b5bc6f3ee11f06243878c6180b91f4ef1` |
| 10 | `theorem` | [gold_sub_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/gold-sub-goldconj--37f7337261139a0324f1ba3d.md) | 88 | `result-track:37f7337261139a0324f1ba3d03364665a1c2d9f5785cf31e60cc47294c12bba6` |
| 11 | `theorem` | [gold_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/gold-sq--55d5a5ebe4ca07bbcf623ba8.md) | 94 | `result-track:55d5a5ebe4ca07bbcf623ba8a82d9f5c4479430d8404134caaa7a24b4299ee01` |
| 12 | `theorem` | [goldConj_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/goldconj-sq--be259ab3e685df1e9887aab7.md) | 101 | `result-track:be259ab3e685df1e9887aab7547b16aca30b4f42935a80a97215153eea729aee` |
| 13 | `theorem` | [gold_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/gold-pos--d939165fdd41c3b354097c21.md) | 107 | `result-track:d939165fdd41c3b354097c215b428c7a5323911e3bad3ff3897366c7c29196bd` |
| 14 | `theorem` | [gold_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/gold-ne-zero--1a908a14ead5c8760e94ad90.md) | 111 | `result-track:1a908a14ead5c8760e94ad90e4341e58215dc1b0dc17e2a60a95a9ab041865bd` |
| 15 | `theorem` | [one_lt_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/one-lt-gold--9b82e273878bacfcdb20704e.md) | 115 | `result-track:9b82e273878bacfcdb20704e66140856924526f4105fd977c24774a8ed0f3ba9` |
| 16 | `theorem` | [goldConj_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/goldconj-neg--c35fb7125f5ad45bd3c8909a.md) | 120 | `result-track:c35fb7125f5ad45bd3c8909aa7d608fd573a9cf74777ee8d4f51209b42f00ae5` |
| 17 | `theorem` | [goldConj_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/goldconj-ne-zero--9b1d70bbdc79c4e50547e2aa.md) | 124 | `result-track:9b1d70bbdc79c4e50547e2aa38b7fda2091cbd5b5d1ba83d51983eed5920e760` |
| 18 | `theorem` | [neg_one_lt_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/neg-one-lt-goldconj--0063ea6615c3af83af501fc0.md) | 128 | `result-track:0063ea6615c3af83af501fc09e842364852f0695978bbe1315130b06beee31b6` |
| 19 | `theorem` | [gold_irrational](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/gold-irrational--923767ed7fdfe3481a75e5a1.md) | 139 | `result-track:923767ed7fdfe3481a75e5a19100a00f369ff154f12df54232a9603568fbcad9` |
| 20 | `theorem` | [goldConj_irrational](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/goldconj-irrational--0e2d2fe7bf74128da811a6c3.md) | 149 | `result-track:0e2d2fe7bf74128da811a6c39436263343591c617080ed706d89eb13f98e3f5a` |
| 21 | `def` | [fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/fibrec--2632b723ec584fe62546bb15.md) | 168 | `declaration-track:2632b723ec584fe62546bb15c1da2941104ecddc4d756ffea64808e563cbdd1b` |
| 22 | `theorem` | [fibRec_charPoly_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/fibrec-charpoly-eq--0e9d1e417da61673e1bf1fb2.md) | 178 | `result-track:0e9d1e417da61673e1bf1fb2a2bf8956b9eb45ad32c0758d5af3aaab1cd6c1ac` |
| 23 | `theorem` | [fib_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/fib-issol-fibrec--0f8e8333d138fcd839a8551c.md) | 187 | `result-track:0f8e8333d138fcd839a8551c34177abca03c31ef32a14b4a5468ba2e17034f05` |
| 24 | `theorem` | [geom_gold_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/geom-gold-issol-fibrec--9cc1a51655e863b066cd00b4.md) | 196 | `result-track:9cc1a51655e863b066cd00b4419cfa3b13626900a9a50c3489e77256586fd1c3` |
| 25 | `theorem` | [geom_goldConj_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/geom-goldconj-issol-fibrec--27e0642ebd7dbb01e5f24059.md) | 202 | `result-track:27e0642ebd7dbb01e5f24059b2a6d7ee12d11d499832fe9be0df277aa1f96da5` |
| 26 | `theorem` | [Real.coe_fib_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/real-coe-fib-eq--36bce32f82aee7bf17a87c7a.md) | 210 | `result-track:36bce32f82aee7bf17a87c7a8e53a25f69f17c0758d559afbbb9cb43699ed6ac` |
| 27 | `theorem` | [Real.coe_fib_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variant72714a382204351728a01aeaa1168b6c06b759ee9369f766534b3621bcc0377e.lean/declarations/real-coe-fib-eq--6425d7fd234892cb28f12ce2.md) | 233 | `result-track:6425d7fd234892cb28f12ce29d2e27e65ac71116e4c670a269f884bfbe4c90c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
