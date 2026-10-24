# Verification target: GRWTSK.Algebra.CommutativeAlgebra.EraseLead.Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe80dafe3b06825c7e78ce197b8a0d5827f8498e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe80dafe3b06825c7e78ce197b8a0d5827f8498e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead--7b4cc49d87e5229379a89ed1.md) | 36 | `declaration-track:7b4cc49d87e5229379a89ed103dd3d095ea6ae290b570c1fec4a9879967583b7` |
| 2 | `theorem` | [eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-support--ec2c6154922013f3c8d6cdad.md) | 42 | `result-track:ec2c6154922013f3c8d6cdada76f45c3a9aca76fb7d989a5ab4a7588e5dafdf9` |
| 3 | `theorem` | [eraseLead_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-coeff--445d488ceb5cb0bc502c4820.md) | 46 | `result-track:445d488ceb5cb0bc502c482008731ed091df76f45f8a940e43a745e808556001` |
| 4 | `theorem` | [eraseLead_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-coeff-natdegree--7fab6f624ab5bbfb3adfa59e.md) | 51 | `result-track:7fab6f624ab5bbfb3adfa59e531652a4993399857fad0c15cf1c2a0ba045f2e3` |
| 5 | `theorem` | [eraseLead_coeff_of_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-coeff-of-ne--b92c579a7806f5913f9ea06a.md) | 54 | `result-track:b92c579a7806f5913f9ea06afb163d05118ee6e6a517b06db7066a7c05a0578c` |
| 6 | `theorem` | [eraseLead_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-zero--f11cd2b8f2f5ec46e450b0ee.md) | 59 | `result-track:f11cd2b8f2f5ec46e450b0eecc3511090322740be0cc04a9483f92616093ac95` |
| 7 | `theorem` | [eraseLead_add_monomial_natDegree_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-add-monomial-natdegree-leadingcoeff--5b811b8cffcdfa46fd1c84f4.md) | 63 | `result-track:5b811b8cffcdfa46fd1c84f4313898927452bdde385866a3c32e4058cbac3cb7` |
| 8 | `theorem` | [eraseLead_add_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-add-c-mul-x-pow--f4fccb2be333c82dcf0f8415.md) | 69 | `result-track:f4fccb2be333c82dcf0f8415c1460f8477a64afc21ee9e5351e86d588a23d83e` |
| 9 | `theorem` | [self_sub_monomial_natDegree_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/self-sub-monomial-natdegree-leadingcoeff--5b349a06f813331ed4b07557.md) | 76 | `result-track:5b349a06f813331ed4b07557b7e032cc12b9564341085912567c32a05e9328c2` |
| 10 | `theorem` | [self_sub_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/self-sub-c-mul-x-pow--24616a4b04fca00ea68efd2b.md) | 82 | `result-track:24616a4b04fca00ea68efd2b6a64d61fd5d28918ff59734066615ef077259a05` |
| 11 | `theorem` | [eraseLead_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-ne-zero--d9ab2d739e4520610736947b.md) | 88 | `result-track:d9ab2d739e4520610736947b8f2571d4da0ec80bb0d2bc2f5d61b353b8696f47` |
| 12 | `theorem` | [lt_natDegree_of_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/lt-natdegree-of-mem-eraselead-support--cb51e2ec34f409a70d722c7a.md) | 94 | `result-track:cb51e2ec34f409a70d722c7a88f90a7e660677797454fee556dacb120d895cd7` |
| 13 | `theorem` | [ne_natDegree_of_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/ne-natdegree-of-mem-eraselead-support--1eb8a2520652eb848507546c.md) | 100 | `result-track:1eb8a2520652eb848507546c3ea3cedfb4ecdf7d5493cc4bed53b9d384b87f7b` |
| 14 | `theorem` | [natDegree_not_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/natdegree-not-mem-eraselead-support--06bb6be586ab1a5b85cc673c.md) | 105 | `result-track:06bb6be586ab1a5b85cc673c5f47602c3feba95cadb0ccad49a283ecea3ad942` |
| 15 | `theorem` | [eraseLead_support_card_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-support-card-lt--5f4b28087a313be0d91db401.md) | 109 | `result-track:5f4b28087a313be0d91db4010731d40b589e3a841659578d71f487840f573192` |
| 16 | `theorem` | [eraseLead_card_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-card-support--30fcbc4ca22710e943ee42b0.md) | 114 | `result-track:30fcbc4ca22710e943ee42b06fb6808b578331d2c141d84c61cdd514decfe26f` |
| 17 | `theorem` | [eraseLead_card_support'](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-card-support--018cc0c0cf9ab7fddaa7422e.md) | 121 | `result-track:018cc0c0cf9ab7fddaa7422ee041fd465df39318ca36dd8dd2d4df1433fa7bfb` |
| 18 | `theorem` | [eraseLead_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-monomial--6efb81226125694cf90298c4.md) | 127 | `result-track:6efb81226125694cf90298c4aba5d665645caec940b4a61f4a535166e2e0f99d` |
| 19 | `theorem` | [eraseLead_C](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-c--76dfbe9754f6509bac9aa47e.md) | 135 | `result-track:76dfbe9754f6509bac9aa47e501d31a2d5ad78e39339b246db71139e78781a9e` |
| 20 | `theorem` | [eraseLead_X](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-x--926c2672d446e2f7094c881a.md) | 141 | `result-track:926c2672d446e2f7094c881a3bac2ebdf9460a2f93b9d62d2da195df750f35c6` |
| 21 | `theorem` | [eraseLead_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-x-pow--15ba0d99e27ff4b5e888f558.md) | 147 | `result-track:15ba0d99e27ff4b5e888f558b979074b0121f586d6eb889cbd7a19a14d1d72c6` |
| 22 | `theorem` | [eraseLead_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-c-mul-x-pow--dc1092f36257602e8125d7cf.md) | 153 | `result-track:dc1092f36257602e8125d7cf2d21be1013c92141f234c19202bc1284d0d739a8` |
| 23 | `theorem` | [eraseLead_add_of_natDegree_lt_left](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-add-of-natdegree-lt-left--d05dcafcbe6f44e678caca81.md) | 158 | `result-track:d05dcafcbe6f44e678caca81b51ede3afe0e5c551c8cad07d97fc18874a1e41f` |
| 24 | `theorem` | [eraseLead_add_of_natDegree_lt_right](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-add-of-natdegree-lt-right--307f416709234c413e75c6b7.md) | 169 | `result-track:307f416709234c413e75c6b753f60f8fa28c26202574d3d2ba8e86ae59993f7a` |
| 25 | `theorem` | [eraseLead_degree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-degree-le--b764eb8c2f9ecd9acb2bfd39.md) | 180 | `result-track:b764eb8c2f9ecd9acb2bfd39c0f25ba5eda8a674a87662acb96bb17c14243b75` |
| 26 | `theorem` | [eraseLead_natDegree_le_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-natdegree-le-aux--beb2e11b84e8d5c62428f475.md) | 184 | `result-track:beb2e11b84e8d5c62428f4753088b1e3d319cb7e654c87e06faa576bb15de36b` |
| 27 | `theorem` | [eraseLead_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-natdegree-lt--55668e6bfb37e3c9990de626.md) | 188 | `result-track:55668e6bfb37e3c9990de6269407302e0ae0b86502abef2a1ce6725a9417cc3d` |
| 28 | `theorem` | [eraseLead_natDegree_lt_or_eraseLead_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-natdegree-lt-or-eraselead-eq-zero--ca76534907029ea71b9c69bc.md) | 194 | `result-track:ca76534907029ea71b9c69bce2509cccf7a6dd6d1c3a35d8a7704db8e6902db4` |
| 29 | `theorem` | [eraseLead_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/eraselead-natdegree-le--4768e597c54e8fdf5296662c.md) | 204 | `result-track:4768e597c54e8fdf5296662ce64f31f4e71054ffa817a1cd6a33943c9479aa23` |
| 30 | `theorem` | [induction_with_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/induction-with-natdegree-le--d1bf6b34a56347bba774e882.md) | 216 | `result-track:d1bf6b34a56347bba774e8824597ffe1591b1db713af0447d151a25f276036b3` |
| 31 | `theorem` | [mono_map_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/mono-map-natdegree-eq--eecacf5a8a208827d0b04775.md) | 253 | `result-track:eecacf5a8a208827d0b04775374a70316858b7ce0149d11fa56a5e0263b002e9` |
| 32 | `theorem` | [map_natDegree_eq_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/map-natdegree-eq-sub--7a85b1ddff0cf2600c5f11bd.md) | 273 | `result-track:7a85b1ddff0cf2600c5f11bd7bbe77de5725c6119b77d9cdf710d3a123023b09` |
| 33 | `theorem` | [map_natDegree_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/map-natdegree-eq-natdegree--750659da34f888b04673b226.md) | 282 | `result-track:750659da34f888b04673b22655a5306c1986a1f969545fb059795eb0c88c427f` |
| 34 | `theorem` | [card_support_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/card-support-eq--ac869440f282adce53e8d53b.md) | 291 | `result-track:ac869440f282adce53e8d53b248edcaf344bea319bb38cbfc7edca682a4a4b25` |
| 35 | `theorem` | [card_support_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/card-support-eq--117011a220a57d9bf0a2e727.md) | 306 | `result-track:117011a220a57d9bf0a2e72760ae7beae7cd07d9169a6185eaa5a6f81c40017b` |
| 36 | `theorem` | [card_support_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/card-support-eq-one--215c93172e09b940422b292f.md) | 352 | `result-track:215c93172e09b940422b292f1860f18b098d3f940ea85d1ec9ed94ba584d753c` |
| 37 | `theorem` | [card_support_eq_two](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/card-support-eq-two--fbcbfec57af7179cd4ca5a4d.md) | 361 | `result-track:fbcbfec57af7179cd4ca5a4dd1cce458f1e7f13bb2853f200705e4bf2b05d307` |
| 38 | `theorem` | [card_support_eq_three](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variantee23dea6750618149f58f0a7071d622e9e87804b750effa8fe2813caa08fcfd5.lean/declarations/card-support-eq-three--9ae3cc70b40ab5e8efb3f336.md) | 374 | `result-track:9ae3cc70b40ab5e8efb3f3369bb30ef92ea385984ed368da72635f3d411780bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
