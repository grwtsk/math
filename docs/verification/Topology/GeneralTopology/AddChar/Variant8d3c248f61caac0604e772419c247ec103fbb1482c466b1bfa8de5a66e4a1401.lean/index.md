# Verification target: GRWTSK.Topology.GeneralTopology.AddChar.Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba46b13f35477af2b2edf406d918b152b89b0bc4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba46b13f35477af2b2edf406d918b152b89b0bc4`.

Source path: `GRWTSK/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.MahlerBasis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid.AddChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AddChar.tendsto_eval_one_sub_pow](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/addchar-tendsto-eval-one-sub-pow--bd25414a2dac0d56f62e5ae2.md) | 46 | `result-track:bd25414a2dac0d56f62e5ae2d1143e0b16a90b2903b4430d2ae98a57dee0bb86` |
| 2 | `def` | [addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/addchar-of-value-at-one--a7860eccfa858c898deb43b4.md) | 55 | `declaration-track:a7860eccfa858c898deb43b4395039be29ecc4553fa462658c67b516da87de37` |
| 3 | `lemma` | [continuous_addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/continuous-addchar-of-value-at-one--65a3abcc8c77b9352ff78735.md) | 76 | `result-track:65a3abcc8c77b9352ff787357268be4952ba058ea541cb0bda6ace67a9e968f6` |
| 4 | `lemma` | [coe_addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/coe-addchar-of-value-at-one--861839b920d1a01f85993b69.md) | 80 | `result-track:861839b920d1a01f85993b6908d0f9d59ba5a9d4bf0f266affad975d7165ebe9` |
| 5 | `lemma` | [addChar_of_value_at_one_def](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/addchar-of-value-at-one-def--c4f8694a67c311f0f5366abc.md) | 85 | `result-track:c4f8694a67c311f0f5366abcde5b661ef6f574a5f8554518134a9f7e80278f32` |
| 6 | `lemma` | [eq_addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/eq-addchar-of-value-at-one--75145425ddf75affc9e99e4a.md) | 91 | `result-track:75145425ddf75affc9e99e4a331e371a340006b4dd948182e8b32b4355415a7e` |
| 7 | `def` | [continuousAddCharEquiv](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/continuousaddcharequiv--869d8ed4b75f23bb0796dd34.md) | 98 | `declaration-track:869d8ed4b75f23bb0796dd34fd3c555cd2076f226fe542f10473109222b8d7a6` |
| 8 | `lemma` | [continuousAddCharEquiv_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/continuousaddcharequiv-apply--a8068e0957428698ae239769.md) | 105 | `result-track:a8068e0957428698ae23976983935c4f2f6c022bf012dc253d0ce694750ca369` |
| 9 | `lemma` | [continuousAddCharEquiv_symm_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/continuousaddcharequiv-symm-apply--b22dad3245d121a858616fdd.md) | 109 | `result-track:b22dad3245d121a858616fddd785c83f4b25990649bbf23e7f1a38c84d7197b5` |
| 10 | `def` | [continuousAddCharEquiv_of_norm_mul](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/continuousaddcharequiv-of-norm-mul--e64337ba471b5338b18285a9.md) | 120 | `declaration-track:e64337ba471b5338b18285a9c402216773ccc4d4f8e56d076d84e2ee21999ab7` |
| 11 | `lemma` | [continuousAddCharEquiv_of_norm_mul_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/continuousaddcharequiv-of-norm-mul-apply--8dacb19ecc9f1472eb10e1bf.md) | 125 | `result-track:8dacb19ecc9f1472eb10e1bf6d9dac57edb424a183672a4bb1264dcbba2c4cfd` |
| 12 | `lemma` | [continuousAddCharEquiv_of_norm_mul_symm_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant8d3c248f61caac0604e772419c247ec103fbb1482c466b1bfa8de5a66e4a1401.lean/declarations/continuousaddcharequiv-of-norm-mul-symm-apply--c3980cc74268c631521acccd.md) | 129 | `result-track:c3980cc74268c631521acccd8063f313eab5cd4cb1629bb1747d8f82e9fc68c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
