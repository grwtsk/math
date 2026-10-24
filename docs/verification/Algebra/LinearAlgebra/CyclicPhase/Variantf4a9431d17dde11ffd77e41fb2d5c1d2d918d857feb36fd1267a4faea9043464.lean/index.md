# Verification target: GRWTSK.Algebra.LinearAlgebra.CyclicPhase.Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a55c55e7d1d20d8787dbff46b1b00fc4a5bfedd4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a55c55e7d1d20d8787dbff46b1b00fc4a5bfedd4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramplus--3a7046a491e09a4697e75897.md) | 13 | `declaration-track:3a7046a491e09a4697e7589732ab035ef2ccefea8fe3f09a0892cdbbd0ee2804` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramminus--e5d29cf8f8cf630cf0b5927a.md) | 15 | `declaration-track:e5d29cf8f8cf630cf0b5927a7a5e5f0b29ef0c8a4c45dd6f2324c9b1a34dd1e1` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/pairwiseprofile--a3c84f7ac1cc9e1a13da0c5c.md) | 17 | `declaration-track:a3c84f7ac1cc9e1a13da0c5cfaf40bf852eeaf4038d887070e9db465ec0e7dc2` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/triplecycle--d7fde102ad7d9173dbecaebc.md) | 19 | `declaration-track:d7fde102ad7d9173dbecaebc154eac4d6fffb7b55de80febcfb82d65964e856c` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramplus-hermitian--bbe3758e6f4a75962c95b465.md) | 21 | `result-track:bbe3758e6f4a75962c95b4651e50540ff5988de02b733ce6c9ba50998849d8d7` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramminus-hermitian--b253695d2de9f61767149f6a.md) | 24 | `result-track:b253695d2de9f61767149f6adcd2b138d79f53708ae0995c6e07a7b660b5ccc3` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramplus-energy--bdef007b582932b12ba2913d.md) | 28 | `result-track:bdef007b582932b12ba2913d352c5233bf835b85e45ab379656c09c85a3efd63` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramminus-energy--77f728c5fee9faa489e30476.md) | 34 | `result-track:77f728c5fee9faa489e3047608740ae97bf59bc3dd199f6abe71e6beb824a8e2` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/sum-sq-pos--01fc7b7fb452f6c0427f37b7.md) | 41 | `result-track:01fc7b7fb452f6c0427f37b7d567565bf138833117c0211ac5950932590d2aa4` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramplus-posdef--5fbc9bbb76b991932d629948.md) | 53 | `result-track:5fbc9bbb76b991932d629948050218add6036ded1ff9a01051e9281420c448d0` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramminus-posdef--77d50746744b50510b11f8bb.md) | 58 | `result-track:77d50746744b50510b11f8bb9126b16d4dc5c2604a0b55249c09a8e21cdaac2e` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/positive-gram-factor--65767074cf513dc4f5515e95.md) | 64 | `result-track:65767074cf513dc4f5515e957b11fcb72693ce62115f2f9c7ea985e054273a45` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramplus-realizable--d50dcc9edc28b97442a00f18.md) | 70 | `result-track:d50dcc9edc28b97442a00f188d5ae5728b8b2e059d6e49d77de1ced1d5fef820` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramminus-realizable--8d190fa553c219c1784aa843.md) | 72 | `result-track:8d190fa553c219c1784aa843da06cf93447fe0e55841f0393461bd3d75aa6e7d` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/diagonals-equal--0c01472d3158609c50c3545e.md) | 75 | `result-track:0c01472d3158609c50c3545eef0a918a23016f4ad5a6bd7b9d3aa83833a5ae64` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/pairwise-equal--34914a05122826e3e3ff69dc.md) | 78 | `result-track:34914a05122826e3e3ff69dccd12aab1af13ce4cc8852b2c90db840f8a66d096` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/triple-plus--2b73b2c04385d16e95e86b82.md) | 81 | `result-track:2b73b2c04385d16e95e86b82224f3de8247d071b54d3dbcfb984f85a58b87f24` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/triple-minus--9ee98e8463af5c02df97e1b7.md) | 83 | `result-track:9ee98e8463af5c02df97e1b7cd1c4defb7d0aeacbd057d0053563ac288a39fd6` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/triple-distinct--376a60d3a1eab579ae16ff1f.md) | 85 | `result-track:376a60d3a1eab579ae16ff1fd597bfdc1eca6353a70bdce6ef586d0f04cbb397` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/det-plus--49613039715f7177fb0036ef.md) | 89 | `result-track:49613039715f7177fb0036ef2ebf8fb6780d408599b496dd3cd6bbeaa8d2961b` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/det-minus--6092a5c7146c1c27a350022e.md) | 91 | `result-track:6092a5c7146c1c27a350022e2cfb549c04214afbef14e0f3d051f316d7bf14a7` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/det-distinct--e4782c8b508ccf98680ecfbf.md) | 93 | `result-track:e4782c8b508ccf98680ecfbfa73498cf30390cdc03bc395dbb238455bec5cc97` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/no-pairwise-triple-decoder--09f950d3a581e63d2ed6c46c.md) | 97 | `result-track:09f950d3a581e63d2ed6c46c35654fbf54a76985edfa95a5a5be8e0ac9fe7e47` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/no-pairwise-determinant-decoder--7fbe7ccfd2fcf02bdeb349c4.md) | 106 | `result-track:7fbe7ccfd2fcf02bdeb349c44039c17e9a88f76874be3fe5e37b294f26c8d5b6` |
| 25 | `theorem` | [positive_euclidean_gram](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/positive-euclidean-gram--da4cae94bc5f41f19a376025.md) | 117 | `result-track:da4cae94bc5f41f19a3760256f2e57fcce309a5f60e39adcb5228b72060df6fa` |
| 26 | `theorem` | [gramPlus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramplus-euclidean--9e0c82da4b1f899c756710d7.md) | 125 | `result-track:9e0c82da4b1f899c756710d7f52a076d7e28d6893b47eab98b3ff7b7309a6ed8` |
| 27 | `theorem` | [gramMinus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/gramminus-euclidean--57698d1b43be740fd3d69f72.md) | 129 | `result-track:57698d1b43be740fd3d69f720bd917194f834414d112c1ad315532194932859c` |
| 28 | `theorem` | [pairwiseProfile_eq_norm_sq](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/pairwiseprofile-eq-norm-sq--f33ae7f2ac0a5c82942a0768.md) | 133 | `result-track:f33ae7f2ac0a5c82942a0768346bf4d0b16fafdec5952d591e14e11b7257e9ff` |
| 29 | `theorem` | [first_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/first-trace-equal--c31d4e321f1cbd02f4f94f93.md) | 137 | `result-track:c31d4e321f1cbd02f4f94f93cdd989dc0e5c4eab8bd04e8189e6ee80a502825f` |
| 30 | `theorem` | [second_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/second-trace-equal--9cc894d3d515e7bd4bba48eb.md) | 140 | `result-track:9cc894d3d515e7bd4bba48eb1a2b9831216730813fd6c3a3f56efe372de84ed1` |
| 31 | `theorem` | [third_trace_plus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/third-trace-plus--eb1a9d08598a4bb07f3eb2b8.md) | 143 | `result-track:eb1a9d08598a4bb07f3eb2b8c6e3581bbdf7cafb2679d499c83b3b743d92e802` |
| 32 | `theorem` | [third_trace_minus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/third-trace-minus--a65ca7cbee943c3d3d6a1d2b.md) | 146 | `result-track:a65ca7cbee943c3d3d6a1d2b73148cd6ae28b361d5ebcb48bc951890d7322ff6` |
| 33 | `theorem` | [no_pairwise_third_trace_decoder](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/declarations/no-pairwise-third-trace-decoder--74fc208072cda6664dc0abdc.md) | 149 | `result-track:74fc208072cda6664dc0abdca2979c108b76026e9f50e3086fdc1cfd00348f5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
