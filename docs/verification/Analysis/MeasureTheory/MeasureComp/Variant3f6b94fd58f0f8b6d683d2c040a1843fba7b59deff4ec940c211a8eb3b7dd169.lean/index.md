# Verification target: GRWTSK.Analysis.MeasureTheory.MeasureComp.Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b2ffd8a7ce142a0125dcd0387d3ff233d77b10c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b2ffd8a7ce142a0125dcd0387d3ff233d77b10c`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.CompNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_assoc](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/comp-assoc--86050b7481dad73e6881fe72.md) | 34 | `result-track:86050b7481dad73e6881fe727e94f9e070336f2b1ccee165f3d0dc4bfcbc733a` |
| 2 | `lemma` | [comp_eq_comp_const_apply](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/comp-eq-comp-const-apply--fdad9c6b16b28a99f9864347.md) | 39 | `result-track:fdad9c6b16b28a99f98643478e04dfa2c3c6874a07a5841b86da03e65b3cd4c6` |
| 3 | `lemma` | [comp_eq_sum_of_countable](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/comp-eq-sum-of-countable--92e70d278b887d4ea8d63217.md) | 42 | `result-track:92e70d278b887d4ea8d632172dec25c76f32461bdde42213f7ccebdf27f56811` |
| 4 | `lemma` | [snd_compProd](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/snd-compprod--b1b2b0c4562250ded6d2b7af.md) | 49 | `result-track:b1b2b0c4562250ded6d2b7afca09d8c8eab68b5140c583d5c8c6f878ab092c4c` |
| 5 | `lemma` | [ae_ae_of_ae_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/ae-ae-of-ae-comp--d94d2e7cef2b0788ec9dd241.md) | 56 | `result-track:d94d2e7cef2b0788ec9dd2413e393cb21847236a35b9f8dde3030448a051513f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/instance--56edb4677af534741760346d.md) | 61 | `declaration-track:56edb4677af534741760346ddfee382144f326e59c285eaf0d48664611c65da5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/instance--bd79eac9ce638683ee52cc8c.md) | 64 | `declaration-track:bd79eac9ce638683ee52cc8c6b455bc0bd4f60b74efa20afe93587c8096ad63e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/instance--5a758235df045a838b0065b0.md) | 67 | `declaration-track:5a758235df045a838b0065b070da5750a9a0667e4038dddbb780f9d127b1a97c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/instance--b3b0fc2b152991e53f671483.md) | 70 | `declaration-track:b3b0fc2b152991e53f671483e8ace3782379e678185247bb26dc4da1e55ad4d7` |
| 10 | `lemma` | [map_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/map-comp--ab262023af34c2a8469e06d1.md) | 74 | `result-track:ab262023af34c2a8469e06d1ced05a9ef0a592921784b631919936ecfc003e2b` |
| 11 | `lemma` | [compProd_eq_comp_prod](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/compprod-eq-comp-prod--8170f68ff5231b506b3d88a2.md) | 83 | `result-track:8170f68ff5231b506b3d88a2a72ee8507a19bd4a5939edc7deaddc28db5ee632` |
| 12 | `lemma` | [compProd_id_eq_copy_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/compprod-id-eq-copy-comp--41ae5a0299432a17b3633793.md) | 88 | `result-track:41ae5a0299432a17b36337934da3db6f7efcfa95ebf35ba462591a3fdd6827f9` |
| 13 | `lemma` | [comp_compProd_comm](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/comp-compprod-comm--c48af9666e442fd9edc00c0c.md) | 91 | `result-track:c48af9666e442fd9edc00c0cc05cd7d4ace6f7592b7afa5d21a5c39215323464` |
| 14 | `lemma` | [prodMkLeft_comp_compProd](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/prodmkleft-comp-compprod--afbb3446e9c3b149b70a888c.md) | 106 | `result-track:afbb3446e9c3b149b70a888c61858dd0cb047c51fc99e40cfad5250c1ac6b0b3` |
| 15 | `lemma` | [comp_add](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/comp-add--a856a93d5d937ea00b4900fe.md) | 116 | `result-track:a856a93d5d937ea00b4900fefce4e742c9f71ff2c987aaa0fa8ccfb704555d10` |
| 16 | `lemma` | [add_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/add-comp--5b270ce75b74bb2b5e4c9aae.md) | 119 | `result-track:5b270ce75b74bb2b5e4c9aae04f6f305c8568e88b5f43dcf1716947cfbb9192d` |
| 17 | `lemma` | [add_comp'](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/add-comp--43817541b3045c00153207e7.md) | 125 | `result-track:43817541b3045c00153207e78b518462beb1dc98348c7ee84e6bfea8647ec638` |
| 18 | `lemma` | [comp_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/comp-smul--18e36ed0420b59fa18935531.md) | 128 | `result-track:18e36ed0420b59fa1893553148cf538737464b3db24902e61e5eb607b3a08dbb` |
| 19 | `lemma` | [AbsolutelyContinuous.comp_right](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/absolutelycontinuous-comp-right--c60085f010e6d90a7dabdc17.md) | 136 | `result-track:c60085f010e6d90a7dabdc173b3a3bbc3e070c53f2deed864f9ab42817e632d9` |
| 20 | `lemma` | [AbsolutelyContinuous.comp_left](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/absolutelycontinuous-comp-left--8e8a40b2e969edd44c41c604.md) | 143 | `result-track:8e8a40b2e969edd44c41c604d7205cc1d75c1f0d65db87f4b670c01aa0ca1777` |
| 21 | `lemma` | [AbsolutelyContinuous.comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/absolutelycontinuous-comp--921a2dbe9c312f9a4bd2be5a.md) | 150 | `result-track:921a2dbe9c312f9a4bd2be5ae5edc408b23310d5beace58a2704152ec507da9e` |
| 22 | `lemma` | [absolutelyContinuous_comp_of_countable](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant3f6b94fd58f0f8b6d683d2c040a1843fba7b59deff4ec940c211a8eb3b7dd169.lean/declarations/absolutelycontinuous-comp-of-countable--5122c8ea2c4ef8028dd8aba8.md) | 154 | `result-track:5122c8ea2c4ef8028dd8aba83ebce65fd12909947947efbf69ea68c32d711779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
