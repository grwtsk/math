# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntegralNormalization.Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9316a57600e1fb93f51b2129948c99c290d3253d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9316a57600e1fb93f51b2129948c99c290d3253d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization--6b9226889a77cf267a1479bf.md) | 39 | `declaration-track:6b9226889a77cf267a1479bf092b5a0ba5dbd966b9ca381802ebf97de48acccb` |
| 2 | `theorem` | [integralNormalization_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-zero--29c9d066621c964454ea2458.md) | 44 | `result-track:29c9d066621c964454ea245812a421a948ef10b9c66463fede92f0e720af09d9` |
| 3 | `theorem` | [integralNormalization_C](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-c--34da149b3deab4ae0fc7a3d3.md) | 48 | `result-track:34da149b3deab4ae0fc7a3d3a2743dd41968e1f6da91b437cb093bbf99cee9c7` |
| 4 | `theorem` | [integralNormalization_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-coeff--25fbf62849168e08bd624f68.md) | 53 | `result-track:25fbf62849168e08bd624f681bffa9f21651286a0fd751365ccabb1ad26ad894` |
| 5 | `theorem` | [support_integralNormalization_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/support-integralnormalization-subset--0669cd0c2763b9d560081ec2.md) | 60 | `result-track:0669cd0c2763b9d560081ec2230bcbee693cd20f609b18d3a93f0f98e74c7cc1` |
| 6 | `theorem` | [integralNormalization_coeff_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-coeff-degree--d295551c846d6d475b608ae2.md) | 65 | `result-track:d295551c846d6d475b608ae2ad2f652a49fcd6eac522ddec5cd981b6bd772433` |
| 7 | `theorem` | [integralNormalization_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-coeff-natdegree--aec511b0c3c8dfab60e7f1f1.md) | 68 | `result-track:aec511b0c3c8dfab60e7f1f1bce015be3b502be0b1fa39a69c436197117420b6` |
| 8 | `theorem` | [integralNormalization_coeff_degree_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-coeff-degree-ne--50f850b8dcce073861096fe2.md) | 72 | `result-track:50f850b8dcce073861096fe2e9bb7af4296811f6c7eeb61965c5ac72e4c5496c` |
| 9 | `theorem` | [integralNormalization_coeff_ne_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-coeff-ne-natdegree--96fce3ce8dccb894f6293b78.md) | 76 | `result-track:96fce3ce8dccb894f6293b78f9139012ef9fc22d38b2b7f155569073b21797e4` |
| 10 | `lemma` | [degree_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/degree-integralnormalization--50b6f36c44230d07afe28058.md) | 81 | `result-track:50b6f36c44230d07afe28058afed7854a77587e1672aad86ce071158a939a9ec` |
| 11 | `lemma` | [natDegree_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/natdegree-integralnormalization--7559b952ae85ebdae49e9d0a.md) | 90 | `result-track:7559b952ae85ebdae49e9d0a981130c88d8faf3ac62c6e3212463b318edc36f7` |
| 12 | `theorem` | [monic_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/monic-integralnormalization--871a4260aab604b71e02f8c0.md) | 95 | `result-track:871a4260aab604b71e02f8c0de9c9ff4437e63c6946b7f48d3976730cbe0b4d9` |
| 13 | `theorem` | [integralNormalization_coeff_mul_leadingCoeff_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-coeff-mul-leadingcoeff-pow--da19366909745e7b6e182d14.md) | 101 | `result-track:da19366909745e7b6e182d14112357365ffb56eedefd4fc675d826e603072f5d` |
| 14 | `theorem` | [integralNormalization_mul_C_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-mul-c-leadingcoeff--9758a78048b1063086fd203a.md) | 115 | `result-track:9758a78048b1063086fd203ae8c6a3037269cfa09c9d46d024b963de94ecd94a` |
| 15 | `theorem` | [leadingCoeff_smul_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/leadingcoeff-smul-integralnormalization--2f13a8e7357f2ec77edc05d4.md) | 130 | `result-track:2f13a8e7357f2ec77edc05d4f7d2de3ca960fc5ecf30998294f7aa3e7b847153` |
| 16 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-eval-leadingcoeff-mul-of-commute--1ce0366482f2268017f62983.md) | 134 | `result-track:1ce0366482f2268017f62983c6fe356d2fa499ff37cea38ccc7a48a27776ebf3` |
| 17 | `theorem` | [integralNormalization_eval₂_leadingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-eval-leadingcoeff-mul--b9cfe9942616c08eca51979a.md) | 145 | `result-track:b9cfe9942616c08eca51979a7042385b4e5e6959ce3be31561982cc8c471e0a7` |
| 18 | `lemma` | [integralNormalization_aeval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-aeval-smul--6f4d8fc7ae6b2065532ecf61.md) | 150 | `result-track:6f4d8fc7ae6b2065532ecf61cfc4543b28cf209bc1a3bcc930b1d89959572f00` |
| 19 | `theorem` | [integralNormalization_eval₂_eq_zero_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-eval-eq-zero-of-commute--a9d443c02510a69c633935ea.md) | 157 | `result-track:a9d443c02510a69c633935eaf15acf3dfd9debad78fff86423ad80c87b919581` |
| 20 | `theorem` | [integralNormalization_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-eval-eq-zero--75b46f7e1191f60617da7c6c.md) | 169 | `result-track:75b46f7e1191f60617da7c6c3676b8b5ff0f6d31d2ef25e078a2c7dc8e186b99` |
| 21 | `theorem` | [integralNormalization_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-aeval-eq-zero--a15d61bd0c693b45137a1370.md) | 174 | `result-track:a15d61bd0c693b45137a1370fba9879ff4b342a26c950a5c8a445ed71578a746` |
| 22 | `lemma` | [integralNormalization_map](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/integralnormalization-map--0c58adad0980795c08b9aa72.md) | 180 | `result-track:0c58adad0980795c08b9aa724b4c5d66ce23c2b5fe6ace0f93e9d9cbb58a9458` |
| 23 | `theorem` | [support_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/declarations/support-integralnormalization--cd6b4313d43ebb95dc91e037.md) | 193 | `result-track:cd6b4313d43ebb95dc91e0372185e932c4d561c919671c3a46bbd1a852d25fc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
