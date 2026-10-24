# Verification target: GRWTSK.Algebra.LinearAlgebra.Fold.Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "826a5e5393725f1b9f5df8df0262ad1701ae47db",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `826a5e5393725f1b9f5df8df0262ad1701ae47db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foldr](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr--f5848b76a0aed5c70d981e8d.md) | 47 | `declaration-track:f5848b76a0aed5c70d981e8d6f9933b8e484ff24d5b18363125962b55c93ca1b` |
| 2 | `theorem` | [foldr_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr--5d4d2415252d51c61c953712.md) | 52 | `result-track:5d4d2415252d51c61c9537122fa2c6dbdbd77213a99a02d0b72b7cf337d85037` |
| 3 | `theorem` | [foldr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-algebramap--154735d001d1b5d6d402886d.md) | 56 | `result-track:154735d001d1b5d6d402886d167d2ff8ee0991612aeeea392a9fa35fe87375f8` |
| 4 | `theorem` | [foldr_one](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-one--0513801e75c09d623a39b820.md) | 61 | `result-track:0513801e75c09d623a39b82033767867176ff14346a1ef4afaef479137e6a4f0` |
| 5 | `theorem` | [foldr_mul](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-mul--5f00092ffadbe71cfd8fbd57.md) | 65 | `result-track:5f00092ffadbe71cfd8fbd57767018ca226eb1fafea2cb056aa6d1680f120569` |
| 6 | `theorem` | [foldr_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-prod-map--d02b13c7041460966bd00f5e.md) | 70 | `result-track:d02b13c7041460966bd00f5ead649209933e28e7f4a2f2bedcb1f524e769cc11` |
| 7 | `def` | [foldl](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldl--07b58ab814283ed6ffbdc400.md) | 84 | `declaration-track:07b58ab814283ed6ffbdc4003708ecc938cd71e4829f882aafc414da2abbd9bb` |
| 8 | `theorem` | [foldl_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldl-reverse--2078e729992b9988a70f37b8.md) | 89 | `result-track:2078e729992b9988a70f37b8d10e4ecb1a6263cfb5acaa66bd8b48b238484fc4` |
| 9 | `theorem` | [foldr_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-reverse--5e0749ef139bdcb206337b00.md) | 94 | `result-track:5e0749ef139bdcb206337b006b40bb980f5f41a0945214ad4ee0e29cb7290de6` |
| 10 | `theorem` | [foldl_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldl--54d3d42632b2a7e568f0b09f.md) | 99 | `result-track:54d3d42632b2a7e568f0b09fa5e069726383117437f0782332447f2107a834fe` |
| 11 | `theorem` | [foldl_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldl-algebramap--cb8bf4723b990336a11981aa.md) | 103 | `result-track:cb8bf4723b990336a11981aae4285a1e4d87e5e1d482d2d56fe2b82101a49741` |
| 12 | `theorem` | [foldl_one](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldl-one--98037b986279477d10c5867e.md) | 108 | `result-track:98037b986279477d10c5867e73500b8e1928a1464138f0b0243e30717e54be87` |
| 13 | `theorem` | [foldl_mul](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldl-mul--bb1f02ac92210cba54ebbbaa.md) | 112 | `result-track:bb1f02ac92210cba54ebbbaa342163ff2ef4890aab578f218463f8f263999a4f` |
| 14 | `theorem` | [foldl_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldl-prod-map--9c9b87619a134591a9f4bfa0.md) | 117 | `result-track:9c9b87619a134591a9f4bfa0e996de3d402571738ce2f4856919900bfe71ff8d` |
| 15 | `theorem` | [right_induction](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/right-induction--2dfa8a0568b55f815a547486.md) | 124 | `result-track:2dfa8a0568b55f815a54748631c40d665480165e5bd5497d0e1579861d9cf7e4` |
| 16 | `theorem` | [left_induction](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/left-induction--159c38624da68251a5b10704.md) | 144 | `result-track:159c38624da68251a5b107041c6b85d1af228b40ebb8be4e6140f3c180e41c2f` |
| 17 | `def` | [foldr'Aux](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-aux--db227cbb66606a756aeaacbc.md) | 157 | `declaration-track:db227cbb66606a756aeaacbc1cbb1837225b9036c1cad1eda2fee7531943e85e` |
| 18 | `theorem` | [foldr'Aux_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-aux-apply-apply--2436728e4ea560781fa5b05c.md) | 171 | `result-track:2436728e4ea560781fa5b05c5bec06f048f2d98afce4ddc32e4054b54e376199` |
| 19 | `theorem` | [foldr'Aux_foldr'Aux](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-aux-foldr-aux--e20048711ad53a27d26fd06c.md) | 175 | `result-track:e20048711ad53a27d26fd06ccedc9cb9439c13e8640aaf2f445b52e4f12febc9` |
| 20 | `def` | [foldr'](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr--093e5475a331ba937ee3374b.md) | 186 | `declaration-track:093e5475a331ba937ee3374bf243196fb9b6c082b9562d2bceac3dcbf63ca5ed` |
| 21 | `theorem` | [foldr'_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-algebramap--181f6077cf60fb61fb3001b9.md) | 190 | `result-track:181f6077cf60fb61fb3001b9cb0284a77f0c2e8fdeae066a9a3fe7d05f40ca86` |
| 22 | `theorem` | [foldr'_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr--c710635edad5881f4c4fbedc.md) | 195 | `result-track:c710635edad5881f4c4fbedc2cbf797bdbc2acf2f53074d417715d4dcbacb0f9` |
| 23 | `theorem` | [foldr'_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/declarations/foldr-mul--6f22c65b4930b4ae9d361cbe.md) | 200 | `result-track:6f22c65b4930b4ae9d361cbe442269fb25699222fef0e7274d166c4848ce42ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
