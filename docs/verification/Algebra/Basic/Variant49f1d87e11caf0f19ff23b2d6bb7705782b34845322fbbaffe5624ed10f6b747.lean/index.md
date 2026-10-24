# Verification target: GRWTSK.Algebra.Basic.Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a410ba9386fd249027d28542151c7254af761d4e",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a410ba9386fd249027d28542151c7254af761d4e`.

Source path: `GRWTSK/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventSet](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/resolventset--e52d85e25fa551810add59d8.md) | 59 | `declaration-track:e52d85e25fa551810add59d855fa47352d13cff98210506a860924626faf4651` |
| 2 | `def` | [spectrum](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/spectrum--47d53f59ea6da1321471b514.md) | 67 | `declaration-track:47d53f59ea6da1321471b5145ef3d093a71a4d10cc3c7c554aee2ff70b0fce98` |
| 3 | `def` | [resolvent](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/resolvent--b4021ce59596e71d1cf5ba23.md) | 75 | `declaration-track:b4021ce59596e71d1cf5ba233f0fcb0c00c83249fa562979a803007f420fc350` |
| 4 | `def` | [IsUnit.subInvSMul](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/isunit-subinvsmul--560031029cfa82ac42cfee0d.md) | 80 | `declaration-track:560031029cfa82ac42cfee0d5f24d1e28affbd811e01d4149d5efc1a73532104` |
| 5 | `theorem` | [mem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/mem-iff--20ba129ac5a3e094f4ada9dc.md) | 99 | `result-track:20ba129ac5a3e094f4ada9dc17376be4f71cab29ceaa40b57858d69b72c78d31` |
| 6 | `theorem` | [notMem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/notmem-iff--7d8621bcfbcbacc07f4ec617.md) | 102 | `result-track:7d8621bcfbcbacc07f4ec617d51fb4ebbe7581589992ba748713a84bee9bdd73` |
| 7 | `theorem` | [zero_mem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/zero-mem-iff--e8869bc326ec4fec196c3497.md) | 110 | `result-track:e8869bc326ec4fec196c34976fdba9df50591dce18ad922cc2d1c1b4c0c8d8b0` |
| 8 | `theorem` | [zero_notMem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/zero-notmem-iff--295a532067fb4ba9c7171a4e.md) | 115 | `result-track:295a532067fb4ba9c7171a4e4d7adcc41de45ff32135f373113408dc74b71b9d` |
| 9 | `lemma` | [_root_.Units.zero_notMem_spectrum](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/root-units-zero-notmem-spectrum--0bd2c1a797419de147075e40.md) | 126 | `result-track:0bd2c1a797419de147075e408115d0b4195436097defcaf83237c5002ecbcccc` |
| 10 | `lemma` | [subset_singleton_zero_compl](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/subset-singleton-zero-compl--9bed4e359e3662f7868db961.md) | 132 | `result-track:9bed4e359e3662f7868db961f94ee58b6273e3da4ff550cd8367a8ec07bf813d` |
| 11 | `theorem` | [mem_resolventSet_of_left_right_inverse](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/mem-resolventset-of-left-right-inverse--641da113ec790448c049e2e8.md) | 137 | `result-track:641da113ec790448c049e2e8eedd326128f968500ed776577f6915f3db39cd2b` |
| 12 | `theorem` | [mem_resolventSet_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/mem-resolventset-iff--38e01a9165b50a35c4d0cb9b.md) | 141 | `result-track:38e01a9165b50a35c4d0cb9b0f03e1553fcfc86d90bc485fb2abdb2dd59d26b5` |
| 13 | `theorem` | [algebraMap_mem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/algebramap-mem-iff--c0ca9e1ee8f5ef3384ca63cb.md) | 145 | `result-track:c0ca9e1ee8f5ef3384ca63cbe97bd26d87704bff59eebd5da662739fd9f75c65` |
| 14 | `theorem` | [preimage_algebraMap](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/preimage-algebramap--86f8a5433ee49d71fca8979e.md) | 153 | `result-track:86f8a5433ee49d71fca8979e7aab35eec518558dbaaf8c2423882242397db019` |
| 15 | `theorem` | [resolventSet_of_subsingleton](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/resolventset-of-subsingleton--682d7a03a9cb9cb192c550cb.md) | 159 | `result-track:682d7a03a9cb9cb192c550cb545e883d9a55dae685dab71fb6c21ae442885674` |
| 16 | `theorem` | [of_subsingleton](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/of-subsingleton--206915fe18e8c837eeb550b9.md) | 163 | `result-track:206915fe18e8c837eeb550b97263c7f12dcd8757cc2606e35d2e36c1ca9d9e3e` |
| 17 | `theorem` | [resolvent_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/resolvent-eq--7b4c04d26162df4d9e81dab2.md) | 166 | `result-track:7b4c04d26162df4d9e81dab2f717b753cb9b95e513b4416db8ce45b333b5cd70` |
| 18 | `theorem` | [units_smul_resolvent](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/units-smul-resolvent--f9665b29a9ee874422dca6c2.md) | 169 | `result-track:f9665b29a9ee874422dca6c27e86029e8d014fbfb82a16c7fd24fcf63ba17c83` |
| 19 | `theorem` | [units_smul_resolvent_self](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/units-smul-resolvent-self--cdfe132cac2f699d342923fd.md) | 185 | `result-track:cdfe132cac2f699d342923fd3bc05d2bb8968919c56dc352b0b7044502d43762` |
| 20 | `theorem` | [isUnit_resolvent](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/isunit-resolvent--7823b3164af2fadf5a747964.md) | 191 | `result-track:7823b3164af2fadf5a747964eefea2f13dd23c272f95a32c8699e581aaf49561` |
| 21 | `theorem` | [inv_mem_resolventSet](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/inv-mem-resolventset--1958060eabd4adc15c76af4b.md) | 194 | `result-track:1958060eabd4adc15c76af4b3bbc6c6192b4ebe8f5d8d6a23e958b13860ee54b` |
| 22 | `theorem` | [inv_mem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/inv-mem-iff--e5f9f73efacee8d9d6a3ad67.md) | 205 | `result-track:e5f9f73efacee8d9d6a3ad6720d6f60763fb85603aaa137d2b0f5e80de9e4f6a` |
| 23 | `theorem` | [zero_mem_resolventSet_of_unit](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/zero-mem-resolventset-of-unit--ff3c7481ffb4e85da5d67b48.md) | 208 | `result-track:ff3c7481ffb4e85da5d67b48b68d82796a6d22460d5b1ccf57f3d4f9a73149cb` |
| 24 | `theorem` | [ne_zero_of_mem_of_unit](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/ne-zero-of-mem-of-unit--72c5fd904bf0f522b16ec576.md) | 211 | `result-track:72c5fd904bf0f522b16ec576dc4b7d453112497ff396a80a84efa7f5cbf5cd8a` |
| 25 | `theorem` | [add_mem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/add-mem-iff--eb0f15baf631cd65fde3644d.md) | 214 | `result-track:eb0f15baf631cd65fde3644dd79e979a49aa78e3b7a8902b1fe1a6fc2ade8122` |
| 26 | `theorem` | [add_mem_add_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/add-mem-add-iff--adc60f83175d6d6869586fb6.md) | 217 | `result-track:adc60f83175d6d6869586fb6a31c7a7f2bf1ed01ed313576eb90fa7a19b64a90` |
| 27 | `theorem` | [smul_mem_smul_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/smul-mem-smul-iff--66eb4e442c849fe4bbf14b49.md) | 220 | `result-track:66eb4e442c849fe4bbf14b496c3102b1bd5d22d41a77c3b8b1a7ab1dc2ca3c83` |
| 28 | `theorem` | [unit_smul_eq_smul](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/unit-smul-eq-smul--fadd5caeb9de165c3b069343.md) | 224 | `result-track:fadd5caeb9de165c3b069343cb4db9223e74bd423cd39fd9363f99586b74d77d` |
| 29 | `theorem` | [unit_mem_mul_comm](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/unit-mem-mul-comm--74457715844c207b55ed5139.md) | 235 | `result-track:74457715844c207b55ed51392c2fdb749b2ad15fac0db61139b207d4985cb3ee` |
| 30 | `theorem` | [preimage_units_mul_comm](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/preimage-units-mul-comm--fcb6bf762d8749b79cd0fd07.md) | 253 | `result-track:fcb6bf762d8749b79cd0fd07fe1bb743cbcee4c1c02e51d78edc56ca1564dbf7` |
| 31 | `theorem` | [setOf_isUnit_inter_mul_comm](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/setof-isunit-inter-mul-comm--92e4a2ad1c8e13074d00281b.md) | 260 | `result-track:92e4a2ad1c8e13074d00281bde78faa66fed75572af6a435b8ae9f1a45853023` |
| 32 | `theorem` | [star_mem_resolventSet_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/star-mem-resolventset-iff--6b73c41dc7e646b602b8a657.md) | 269 | `result-track:6b73c41dc7e646b602b8a6579791d7593fa0e5ccedde3ddaee2ed0288a2d92f1` |
| 33 | `theorem` | [map_star](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/map-star--a8a0bbddda90707445affc3c.md) | 275 | `result-track:a8a0bbddda90707445affc3c87c8e7aef62aac8108f186f6e88e1507cbf992ed` |
| 34 | `theorem` | [subset_subalgebra](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/subset-subalgebra--d97c122a4866cca5ce7b3f2e.md) | 292 | `result-track:d97c122a4866cca5ce7b3f2ea38f64f76242f62e44e995190765bbd25ca9cf63` |
| 35 | `theorem` | [singleton_add_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/singleton-add-eq--83ae02267ad82e29132e742f.md) | 297 | `result-track:83ae02267ad82e29132e742fa9d8e44e87fe97e918aa5fb8cae257ea60fe1c3d` |
| 36 | `theorem` | [add_singleton_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/add-singleton-eq--75eec946f31deb220bdb3fd3.md) | 301 | `result-track:75eec946f31deb220bdb3fd31cd171f23a49c9f1586b8504fdcb2b39509013ae` |
| 37 | `theorem` | [vadd_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/vadd-eq--4473b38b685a9718f2179b3f.md) | 304 | `result-track:4473b38b685a9718f2179b3ffd0393126894be00a6ccfab6b61403bcc9814c2b` |
| 38 | `theorem` | [neg_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/neg-eq--7f709b2ef66b7958a7052d32.md) | 307 | `result-track:7f709b2ef66b7958a7052d3248dc01269a88bfa6ba0c749457fb0a997c217330` |
| 39 | `theorem` | [singleton_sub_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/singleton-sub-eq--e28c71598d76f88cb56f77cd.md) | 311 | `result-track:e28c71598d76f88cb56f77cd6025faf83f656cfea09bb3934e6a32e916ce5499` |
| 40 | `theorem` | [sub_singleton_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/sub-singleton-eq--c054de4266a00ab597042722.md) | 314 | `result-track:c054de4266a00ab597042722e493dc4cafe8e33b6b619fba0b3f914ac6fc8626` |
| 41 | `lemma` | [inv₀_mem_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/inv-mem-iff--1e768af2b136633770d5e5ad.md) | 324 | `result-track:1e768af2b136633770d5e5adc26c135270b64a70196db472d4a556c0f3910803` |
| 42 | `lemma` | [inv₀_mem_inv_iff](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/inv-mem-inv-iff--9ae4d4c5126edc377aa1ee64.md) | 331 | `result-track:9ae4d4c5126edc377aa1ee643496b1dc2b5e99adf94e3329ed1f0d2a9acfe484` |
| 43 | `theorem` | [zero_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/zero-eq--f8bdfb640074aa34c36c8785.md) | 351 | `result-track:f8bdfb640074aa34c36c8785b7743adee392a9b6d2bf9a38fcf098923f1a2835` |
| 44 | `theorem` | [scalar_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/scalar-eq--9e78241c1fc499f387a0c6f2.md) | 360 | `result-track:9e78241c1fc499f387a0c6f2dedc41aca7bbab32c78e551f7094ec3f958c9418` |
| 45 | `theorem` | [one_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/one-eq--fede7c3ce418767e27d3b8d5.md) | 364 | `result-track:fede7c3ce418767e27d3b8d58104f6ad156b01e68805e9a77a902b61f168b2f5` |
| 46 | `theorem` | [smul_eq_smul](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/smul-eq-smul--903a02cbd99e2b11093ce818.md) | 371 | `result-track:903a02cbd99e2b11093ce818b93df95868466a8e9a8c83121c59d772e9d2d2f3` |
| 47 | `theorem` | [nonzero_mul_comm](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/nonzero-mul-comm--3148c0bf2730cf3b2ab7bd9d.md) | 377 | `result-track:3148c0bf2730cf3b2ab7bd9d553c2c15ce4e1d40d47023a2b2bd5ddc89d5e7bc` |
| 48 | `theorem` | [map_inv](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/map-inv--1fd562f71490c9987db40339.md) | 384 | `result-track:1fd562f71490c9987db4033990955ac420b8efa82b12dc6d917e3d37a1e14c90` |
| 49 | `theorem` | [mem_resolventSet_apply](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/mem-resolventset-apply--a55e54245cb89906db1724ed.md) | 409 | `result-track:a55e54245cb89906db1724ed08c3d9801d43a962870b459a7bc3af69fd760270` |
| 50 | `theorem` | [spectrum_apply_subset](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/spectrum-apply-subset--29608042d570ff618fa93787.md) | 413 | `result-track:29608042d570ff618fa93787703cdf1883608341c7c1f9de07890f33399fd09c` |
| 51 | `theorem` | [apply_mem_spectrum](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/apply-mem-spectrum--0a1b013e9cb40a4d8675a20e.md) | 427 | `result-track:0a1b013e9cb40a4d8675a20e7a204fb94470dc9abaa2ef11bd9e5642c49dd9e7` |
| 52 | `theorem` | [AlgEquiv.spectrum_eq](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/algequiv-spectrum-eq--5b052ddb44db3351c7806409.md) | 439 | `result-track:5b052ddb44db3351c78064090718295e33b04d160cd61277fe3f78fe2da995e4` |
| 53 | `lemma` | [spectrum.units_conjugate](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/spectrum-units-conjugate--fc0baf0ced37f405f42618a8.md) | 452 | `result-track:fc0baf0ced37f405f42618a8634e5da746ef72d3431ec35ec2c375505abe0de5` |
| 54 | `lemma` | [spectrum.units_conjugate'](../../../../mathematics/Algebra/Basic/Variant49f1d87e11caf0f19ff23b2d6bb7705782b34845322fbbaffe5624ed10f6b747.lean/declarations/spectrum-units-conjugate--0d5916611c645b7f914c26bd.md) | 465 | `result-track:0d5916611c645b7f914c26bd3339e151ab4fa0fe88a727caf86c331e39f030cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
