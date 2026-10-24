# Verification target: GRWTSK.Algebra.LinearAlgebra.Length.Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af4cf6580d583719b9e3010c0eee2daced7dc833",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af4cf6580d583719b9e3010c0eee2daced7dc833`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean.json)

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
| 1 | `def` | [Module.length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length--b7eb0715c3823af80a6d575b.md) | 32 | `declaration-track:b7eb0715c3823af80a6d575b3fae624b8c1b5a868c01bed5cd0cd4238bb38122` |
| 2 | `lemma` | [Module.coe_length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-coe-length--122eeb13d1d9beef2e6c92bf.md) | 35 | `result-track:122eeb13d1d9beef2e6c92bfb9943e3ca5517eb9bd3ece50c4b5ac4ddc38237e` |
| 3 | `lemma` | [Module.length_eq_height](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-height--7f59f3364aa8e9229055f58f.md) | 39 | `result-track:7f59f3364aa8e9229055f58f8f124e63748c1067bd00df892466630416cc1d80` |
| 4 | `lemma` | [Module.length_eq_coheight](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-coheight--c93fe8cfe72c7df4fb3680b9.md) | 43 | `result-track:c93fe8cfe72c7df4fb3680b92f19ee657bf4749b111e7aea30ae2faec5486ab4` |
| 5 | `lemma` | [Module.length_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-zero-iff--bf88ec2cf69d1a2195fcf053.md) | 49 | `result-track:bf88ec2cf69d1a2195fcf0530674533156f96099213d7ca3adb919e26de8f302` |
| 6 | `lemma` | [Module.length_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-zero--73aa3771d14d657300ac12ee.md) | 54 | `result-track:73aa3771d14d657300ac12ee9719c54134e119881167748f0b420e8bb014cc44` |
| 7 | `lemma` | [Module.length_eq_zero_of_subsingleton_ring](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-zero-of-subsingleton-ring--c7f64967567f385b2451d186.md) | 58 | `result-track:c7f64967567f385b2451d1868190f7b16335dbdb756141caca5ee9e1e1e5f197` |
| 8 | `lemma` | [Module.length_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-pos-iff--bc15d298e529763bc2c586d3.md) | 62 | `result-track:bc15d298e529763bc2c586d3fad1e243ddd939dbdc2637ed79b53baee527a5e5` |
| 9 | `lemma` | [Module.length_pos](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-pos--ec0f52b0c56df436fa30f98c.md) | 65 | `result-track:ec0f52b0c56df436fa30f98c4249ac4deb80c8478d87f14259e60abc53151fec` |
| 10 | `lemma` | [Module.length_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-compositionseries--ab3f9bdf546a69a1f4a7ea8c.md) | 68 | `result-track:ab3f9bdf546a69a1f4a7ea8ce1107ce59c452a6ccfaf56d21f290b68fc61cca9` |
| 11 | `lemma` | [Module.length_eq_top_iff_infiniteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-top-iff-infinitedimensionalorder--5483e34f6bcd31bd910c19ba.md) | 85 | `result-track:5483e34f6bcd31bd910c19bac84c5418f9ba3cd7d3dd19c2ead86405220c2c84` |
| 12 | `lemma` | [Module.length_ne_top_iff_finiteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-ne-top-iff-finitedimensionalorder--c9525e424505fc6045fe1c1c.md) | 90 | `result-track:c9525e424505fc6045fe1c1ccfa8411e67b40442df57298a5cc8c80d71ef2341` |
| 13 | `lemma` | [Module.length_ne_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-ne-top-iff--7144ff80c356135ee09ebd8f.md) | 94 | `result-track:7144ff80c356135ee09ebd8fc33ba7f6a81411f2ea65f93e9909d56346609c4e` |
| 14 | `lemma` | [Module.length_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-ne-top--a0d6e5358c86e10dff7328d0.md) | 106 | `result-track:a0d6e5358c86e10dff7328d0a6896a03b6a60186b6ea3241f95794299e360681` |
| 15 | `lemma` | [Module.finiteDimensionalOrder_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-finitedimensionalorder-submodule-iff--c532613e20e9222e0ff6ef34.md) | 111 | `result-track:c532613e20e9222e0ff6ef341745437395aec91fb4d9707588ff3a408c076e3d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/instance--943ac6dead5541c2c9aa9a6a.md) | 115 | `declaration-track:943ac6dead5541c2c9aa9a6a8a66a5c022dd79c65fb04d4c73e552c3b014b07d` |
| 17 | `lemma` | [Module.length_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-submodule--eb20b69f7fe8a24b1dd1b7d1.md) | 119 | `result-track:eb20b69f7fe8a24b1dd1b7d1cd17bee4175d383edbef374667dadcf77caa37fc` |
| 18 | `lemma` | [Module.length_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-quotient--ddbed490fbadc6972662c7fa.md) | 124 | `result-track:ddbed490fbadc6972662c7fa23cae2b6763e2eead3b8fd8a97d6299ca0d3a7e5` |
| 19 | `lemma` | [LinearEquiv.length_eq](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/linearequiv-length-eq--e16bdd93b7dc7fce72365e44.md) | 130 | `result-track:e16bdd93b7dc7fce72365e44a9aab2769b96a78c7556976f19bbbcbeb6d563e5` |
| 20 | `theorem` | [Module.length_eq_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-of-surjective--aad160b48089e4bf088ebff4.md) | 136 | `result-track:aad160b48089e4bf088ebff4f08788df74d2f280e24b8899614c088489d53991` |
| 21 | `lemma` | [Module.length_bot](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-bot--2b3d8ddaaf0936a8660c1cbf.md) | 144 | `result-track:2b3d8ddaaf0936a8660c1cbfb08a0d60da59e158fdf9873a8d341dbcd4fd562a` |
| 22 | `lemma` | [Module.length_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-top--8608438a201c408ac7749041.md) | 148 | `result-track:8608438a201c408ac774904179ab6857f7ffb2dc4578b676530195085c040eb1` |
| 23 | `lemma` | [Submodule.height_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/submodule-height-lt-top--afe72b101d953abd4dbb4309.md) | 152 | `result-track:afe72b101d953abd4dbb4309517c1bd1201158d142ccd3e81ed16ebe5e876b1b` |
| 24 | `lemma` | [Submodule.height_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/submodule-height-strictmono--d1bc7def1e6e51c5ff8cc085.md) | 156 | `result-track:d1bc7def1e6e51c5ff8cc0855f19c5c13c5792d8a1f176c073949a18f0f10b45` |
| 25 | `lemma` | [Submodule.length_lt](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/submodule-length-lt--8ddada96b80cbd9fa54837a5.md) | 160 | `result-track:8ddada96b80cbd9fa54837a50c5ef4edc5b5985aeabaa796b64a173c2501feb9` |
| 26 | `lemma` | [Module.length_eq_add_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-add-of-exact--0425a2955ce5edc04779b22c.md) | 170 | `result-track:0425a2955ce5edc04779b22cedf557109f5a0512193cab44c10d46c080bc4782` |
| 27 | `lemma` | [Module.length_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-le-of-injective--54e0c851c534ae484be555d4.md) | 197 | `result-track:54e0c851c534ae484be555d4d6301aae7646e133fb58398c66c885df463fffea` |
| 28 | `lemma` | [Module.length_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-le-of-surjective--6b8cbf325287d24812555d1c.md) | 203 | `result-track:6b8cbf325287d24812555d1c80e0b74e27c081cf590a30dd92121f8fa8fc77bd` |
| 29 | `lemma` | [Module.length_prod](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-prod--cc883783dfe4173f12092896.md) | 210 | `result-track:cc883783dfe4173f12092896a443bce17a518c7b390e2c58530d9dd6c6b831b1` |
| 30 | `lemma` | [Module.length_pi_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-pi-of-fintype--451fb8e6fda532349d43e3d0.md) | 216 | `result-track:451fb8e6fda532349d43e3d07ee13cd9b14462871bb8c47a60bc61f41f7ca11f` |
| 31 | `lemma` | [Module.length_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-finsupp--53d0d065ec8e3eb0ec91ec0a.md) | 230 | `result-track:53d0d065ec8e3eb0ec91ec0a38e504fe05cb54cbab6d92d1fe6c6066431ea83b` |
| 32 | `lemma` | [Module.length_pi](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-pi--ba1a938b0a97646e1b4f9b5a.md) | 247 | `result-track:ba1a938b0a97646e1b4f9b5a8c7b911424b8abc6f9403ec20553a734740d6eaf` |
| 33 | `lemma` | [Module.length_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-of-free--a7fc725dd7d8f144095e3bd2.md) | 260 | `result-track:a7fc725dd7d8f144095e3bd25f7bddeb0a374ffcbbe0dfbe4db2fbe16797582e` |
| 34 | `lemma` | [Module.length_of_free_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-of-free-of-finite--8ea8b2710673b090d9c71bc8.md) | 273 | `result-track:8ea8b2710673b090d9c71bc8505d176bd72647123c752b0d6098abb6acac7162` |
| 35 | `lemma` | [Module.length_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-one-iff--5eacbc14497717b12beeba8a.md) | 278 | `result-track:5eacbc14497717b12beeba8a5d1fdb8d3f9260d87ef3e16e59a53041c2de4db6` |
| 36 | `lemma` | [Module.length_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-one--99de7aab0b65c7577cb7d224.md) | 285 | `result-track:99de7aab0b65c7577cb7d2247d613ac8a1d223f87990bd1464f5d3da392efe24` |
| 37 | `lemma` | [Module.length_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-rank--24d2ad826564b05ff3c03a81.md) | 289 | `result-track:24d2ad826564b05ff3c03a81ee086db6d0594faa983931b9453d44b43b312d76` |
| 38 | `lemma` | [Module.length_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/module-length-eq-finrank--9a141d9b116d14910662a911.md) | 294 | `result-track:9a141d9b116d14910662a911d3eefb40e62dc08857652ad418a3e94ffeb2851d` |
| 39 | `theorem` | [Submodule.length_le_length_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/submodule-length-le-length-restrictscalars--2725909261ea134f56b7eb98.md) | 299 | `result-track:2725909261ea134f56b7eb98dc442df52d4bd89dbca84b35e0da1f13f7211a4c` |
| 40 | `theorem` | [Submodule.length_quotient_lt](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant045b7b6b1ec5313a6d199f3996442c8b34f114c027f0ece0e82898bf46139600.lean/declarations/submodule-length-quotient-lt--c3dddd5573ba91a3b265450b.md) | 305 | `result-track:c3dddd5573ba91a3b265450baa1f9319620f3fb49dc8a9046b0973410b0d4fb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
