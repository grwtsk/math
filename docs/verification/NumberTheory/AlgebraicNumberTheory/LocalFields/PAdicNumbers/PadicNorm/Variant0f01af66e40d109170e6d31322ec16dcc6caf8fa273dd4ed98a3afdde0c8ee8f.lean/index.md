# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.PadicNorm.Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f76eeda29641789b0f66f3d6a400a015156ffdb4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f76eeda29641789b0f66f3d6a400a015156ffdb4`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/padicnorm--5176f9b9e267d0857176c863.md) | 47 | `declaration-track:5176f9b9e267d0857176c863df38bb67264503320b1499f98d5cd9edd1cd64c7` |
| 2 | `theorem` | [eq_zpow_of_nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/eq-zpow-of-nonzero--d9f31c37a89bcf0e12ec94c7.md) | 58 | `result-track:d9f31c37a89bcf0e12ec94c77924d0d8160ef43af3232461370dd7540b1c7778` |
| 3 | `theorem` | [nonneg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/nonneg--4feecd28e5738bd30b6a2e17.md) | 62 | `result-track:4feecd28e5738bd30b6a2e17b2714a490053b9088110575a7ad880a755ee184d` |
| 4 | `theorem` | [zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/zero--1e70dec4ccc024cfece1b1a4.md) | 72 | `result-track:1e70dec4ccc024cfece1b1a4fd0f8966e94421e4e8b6fe33f8925351b4992aa6` |
| 5 | `theorem` | [one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/one--640f2d1806efb219d69efeea.md) | 75 | `result-track:640f2d1806efb219d69efeea28713ff59e59915fe7846eaacd7ad1a705aab162` |
| 6 | `theorem` | [padicNorm_p](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/padicnorm-p--65a338f1653202a8b97a2069.md) | 80 | `result-track:65a338f1653202a8b97a2069e6f8f7b0f2a9e71ef9f7a9183de4812bc1220bad` |
| 7 | `theorem` | [padicNorm_p_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/padicnorm-p-of-prime--97b3bcc599f7ca1aab2d7d5f.md) | 87 | `result-track:97b3bcc599f7ca1aab2d7d5f961380fc48a7d55c86769e8fba6a8c59ee523ef0` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/padicnorm-of-prime-of-ne--d4a78c6b102df236a2141b50.md) | 91 | `result-track:d4a78c6b102df236a2141b504a56cff13f71cc5f9d3b9156684f4d9b68a13314` |
| 9 | `theorem` | [padicNorm_p_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/padicnorm-p-lt-one--7c09126ed2298052e34ca0b7.md) | 100 | `result-track:7c09126ed2298052e34ca0b77187a38c7f4b60488bf99b82e8bfa3ce5c6b905d` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/padicnorm-p-lt-one-of-prime--a706b744a68981a7238b2ab9.md) | 107 | `result-track:a706b744a68981a7238b2ab9bb7d7e5d36d50c3339ba9ae3b7e040def816ce06` |
| 11 | `theorem` | [values_discrete](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/values-discrete--7de18a96a52dfd5c17a9a57a.md) | 111 | `result-track:7de18a96a52dfd5c17a9a57af67bf4ace0cf5082eeb74d0343596de073b4dced` |
| 12 | `theorem` | [neg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/neg--989a0de93009f9fccdc4b109.md) | 116 | `result-track:989a0de93009f9fccdc4b1090057d4077d471326c4f834a585d65298ab12b101` |
| 13 | `theorem` | [nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/nonzero--4712abd46e1c79f7ea2a0135.md) | 122 | `result-track:4712abd46e1c79f7ea2a0135630f22b3866ddaf864be7f72aad3b1470991f6f9` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/zero-of-padicnorm-eq-zero--b68faa9b13d29a8e6e5d5eab.md) | 128 | `result-track:b68faa9b13d29a8e6e5d5eab6adfd0852144d28759335dfbd1fe1b8a04eb2849` |
| 15 | `theorem` | [mul](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/mul--297d64a83282ced1a679c0fc.md) | 137 | `result-track:297d64a83282ced1a679c0fc35b87a783466d6973359c9d0c608b9ed93fb55b7` |
| 16 | `theorem` | [div](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/div--7bf9c28e2e526d0b25113ff6.md) | 147 | `result-track:7bf9c28e2e526d0b25113ff6727f07998c5d8a1d8109c59600d8700991e6e681` |
| 17 | `theorem` | [of_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/of-int--a8c6bd83bae225d990050773.md) | 152 | `result-track:a8c6bd83bae225d990050773cb51c2c1df71ec5adfd20d3f8ee753ddbbf5d773` |
| 18 | `theorem` | [nonarchimedean_aux](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/nonarchimedean-aux--949abcaf106c377f0576f554.md) | 158 | `result-track:949abcaf106c377f0576f554b70f81545026d9778306b6b16675f692e3643004` |
| 19 | `theorem` | [nonarchimedean](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/nonarchimedean--21cc7162f4e5433527966168.md) | 180 | `result-track:21cc7162f4e5433527966168e0698986b4f13ea42df41f104fc3727921479d15` |
| 20 | `theorem` | [triangle_ineq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/triangle-ineq--cc7832d5476e7f413068cf9c.md) | 189 | `result-track:cc7832d5476e7f413068cf9c06765a929829ab5375243a06c8a7d7f54801965b` |
| 21 | `theorem` | [sub](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/sub--af6754a3565286af47415a94.md) | 197 | `result-track:af6754a3565286af47415a947f5575064e00bc0b75110cb7a8ed803646841d82` |
| 22 | `theorem` | [add_eq_max_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/add-eq-max-of-ne--66bd194f2be06d70df00cab2.md) | 203 | `result-track:66bd194f2be06d70df00cab27df39449bdc194c190613e35130761a52b2d8215` |
| 23 | `instance` | [(anonymous)](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/instance--6725b71c30a2718d690b8a3b.md) | 225 | `declaration-track:6725b71c30a2718d690b8a3bca26090d10e639450be82d98364822d32311b5e5` |
| 24 | `theorem` | [dvd_iff_norm_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/dvd-iff-norm-le--fa3266973f6446f3e73ae5be.md) | 231 | `result-track:fa3266973f6446f3e73ae5bed2ecd109c3d79bd8ab5c74c26f2a6529918126ac` |
| 25 | `theorem` | [int_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/int-eq-one-iff--63c713ca2000384b2a93054d.md) | 245 | `result-track:63c713ca2000384b2a93054dd5b65e70af21ada897f09f57870732df22977361` |
| 26 | `theorem` | [int_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/int-lt-one-iff--3d6c3d0fefd3fa37cf80eb88.md) | 264 | `result-track:3d6c3d0fefd3fa37cf80eb885214e3167db3f0c7d887c56f736231fb4af75347` |
| 27 | `theorem` | [of_nat](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/of-nat--05fe069d77c2c224bd65b176.md) | 268 | `result-track:05fe069d77c2c224bd65b17626c1d08ed7d56b49f9fe57119297ec3cf79aa2f8` |
| 28 | `theorem` | [nat_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/nat-eq-one-iff--df87d83c7645244da08b1234.md) | 272 | `result-track:df87d83c7645244da08b1234fab67d0a37e554c0830925a870afb4914592ef4b` |
| 29 | `theorem` | [nat_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/nat-lt-one-iff--18599c5de981e1e1fabe3016.md) | 275 | `result-track:18599c5de981e1e1fabe3016a0308266e8c3de9c9cf8924f2dc8f21611e0e362` |
| 30 | `theorem` | [not_int_of_not_padic_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/not-int-of-not-padic-int--ab6c0aec09e99659f0c1ad59.md) | 279 | `result-track:ab6c0aec09e99659f0c1ad593cffa52ba236334ce55b2423a0ec78b37a0f6768` |
| 31 | `theorem` | [sum_lt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/sum-lt--1dd74b3d9992bc07ae4ada28.md) | 285 | `result-track:1dd74b3d9992bc07ae4ada282fb1e146940c110d3c7d7ce7be3aebdadc82481d` |
| 32 | `theorem` | [sum_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/sum-le--19ecd5db5a22bd6b0f78e527.md) | 298 | `result-track:19ecd5db5a22bd6b0f78e52723dc9e134a9ad15f5dfa02aa90825fcef0059d8e` |
| 33 | `theorem` | [sum_lt'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/sum-lt--c5ef2293c2201abd95bea9c7.md) | 311 | `result-track:c5ef2293c2201abd95bea9c7388924c00a16196e9adc5206cbdc855f38ad6147` |
| 34 | `theorem` | [sum_le'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant0f01af66e40d109170e6d31322ec16dcc6caf8fa273dd4ed98a3afdde0c8ee8f.lean/declarations/sum-le--1dd46c6720749fa3356780ae.md) | 317 | `result-track:1dd46c6720749fa3356780aec12d3adcfa958f4d7e2ee48028bcd19f56a3f627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
