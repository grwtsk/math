# Verification target: GRWTSK.Algebra.LinearAlgebra.ZetaSpinFlipCarrier.Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf7c80192b6f20fa56add13e91e5882454478b22",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf7c80192b6f20fa56add13e91e5882454478b22`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.BitMatrixCarrierPadding` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ZetaSpin](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zetaspin--b9b1e932c04b631de812acc1.md) | 20 | `declaration-track:b9b1e932c04b631de812acc1d6488d8c5ba8c3987de05e71428dd790bcc2e251` |
| 2 | `def` | [ZetaSpin.sign](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zetaspin-sign--04a1122b45fa29bbd5f9ed43.md) | 26 | `declaration-track:04a1122b45fa29bbd5f9ed43193175328d9dd2271450acef5edc75f82cda27d7` |
| 3 | `abbrev` | [FlipCarrier](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/flipcarrier--791a4b99b922f4a9729fd4da.md) | 31 | `declaration-track:791a4b99b922f4a9729fd4dabf910b535329de340da5a8d1bfc477b15f9fa7c2` |
| 4 | `abbrev` | [FlipGroupRingCarrier](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/flipgroupringcarrier--51cf1dbc7eef61f30aad289d.md) | 35 | `declaration-track:51cf1dbc7eef61f30aad289d367843340fbaf67bcb4a588db9dc241249843242` |
| 5 | `def` | [zeroFlip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zeroflip--9d47c68aba037a18fd2b4fea.md) | 39 | `declaration-track:9d47c68aba037a18fd2b4fea9be6a19029630ce17e516ba7fca4a554df4d0f90` |
| 6 | `def` | [flipMul](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/flipmul--11d34b22bbdb1d76a8fa82b0.md) | 43 | `declaration-track:11d34b22bbdb1d76a8fa82b0bebc79ca832d95f019a7d23053aac925de16946b` |
| 7 | `def` | [controlIndex](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/controlindex--cf7432751a58af4e14fea722.md) | 47 | `declaration-track:cf7432751a58af4e14fea7224c35b0f46ed5a005c4ec225f62f2458fc3ae11e9` |
| 8 | `def` | [harmonicIndex](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/harmonicindex--c906f24f444e748db2f611f5.md) | 51 | `declaration-track:c906f24f444e748db2f611f5bde7c98bd1aa2feb2dd9b5327561f2be35c8fa75` |
| 9 | `def` | [singleFlip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/singleflip--698c40143fda8ac3de3b3ff8.md) | 55 | `declaration-track:698c40143fda8ac3de3b3ff8a8b748c71e50a0fd999514475fbe8680b0946678` |
| 10 | `def` | [controlFlip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/controlflip--d6e9995009a1476c4ff28eb5.md) | 59 | `declaration-track:d6e9995009a1476c4ff28eb50a5446029d919d14e16c18646870278e39fc50cb` |
| 11 | `def` | [harmonicFlip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/harmonicflip--f55923227a182cdd9f8cd83b.md) | 63 | `declaration-track:f55923227a182cdd9f8cd83bdf98de9849f582f0017370d848a805ffe62344c9` |
| 12 | `def` | [basisFlip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/basisflip--9ca36fb9fba08236eb920038.md) | 67 | `declaration-track:9ca36fb9fba08236eb9200388481aefdeea3fd74565f2c290d39a71ff975c9c5` |
| 13 | `def` | [controlBasis](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/controlbasis--65613a4f60410dbad4b0834b.md) | 71 | `declaration-track:65613a4f60410dbad4b0834b807e964e8c722534b381d99fc2aaef065159ab29` |
| 14 | `def` | [harmonicBasis](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/harmonicbasis--358081f1ab9a9d1cc6899158.md) | 75 | `declaration-track:358081f1ab9a9d1cc68991584aaaf35704eb310736329cfd26d51841c932141b` |
| 15 | `structure` | [ZetaHarmonicWeights](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zetaharmonicweights--45f2160dc7a290fa970bd136.md) | 79 | `declaration-track:45f2160dc7a290fa970bd1362c7ac7467104300dc17a74a8aae4b4ee0a3a8672` |
| 16 | `def` | [weightedHarmonicFlip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/weightedharmonicflip--7e3673dd9e9b5468ecf5a955.md) | 83 | `declaration-track:7e3673dd9e9b5468ecf5a955098bef3cd3191eb7dc02f7865a9df2e8830d7508` |
| 17 | `structure` | [ZetaSpinFlipCarrier](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zetaspinflipcarrier--08c4687d92364eef679f9d1d.md) | 89 | `declaration-track:08c4687d92364eef679f9d1d13a1d172b19d0c750eb50ed2e7d5537e7bc2b2c2` |
| 18 | `theorem` | [zeta_spin_flip_control_coordinate_eq](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zeta-spin-flip-control-coordinate-eq--858be28791f94b01be486aca.md) | 108 | `result-track:858be28791f94b01be486aca0e921e1625e616e9c7c082961f634427c2e27426` |
| 19 | `theorem` | [zeta_spin_flip_harmonic_coordinate_eq](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zeta-spin-flip-harmonic-coordinate-eq--e21ccc860f29aec5e9d6270b.md) | 114 | `result-track:e21ccc860f29aec5e9d6270bb2290cb819cf6772c19d3234d75b24a3a2a12f07` |
| 20 | `def` | [finiteZetaSpinFlipCarrier](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/finitezetaspinflipcarrier--347151680a640c62eaae6f49.md) | 120 | `declaration-track:347151680a640c62eaae6f49de24ed8d867d6315959b9610ce27f8662e94bb12` |
| 21 | `theorem` | [finite_zeta_spin_flip_denies_analytic_continuation](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/finite-zeta-spin-flip-denies-analytic-continuation--3e216ea70a630c47f1550be2.md) | 141 | `result-track:3e216ea70a630c47f1550be27a9e431a1a2a398400d177514f6f8c33f0df0b04` |
| 22 | `theorem` | [finite_zeta_spin_flip_denies_functional_equation](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/finite-zeta-spin-flip-denies-functional-equation--693af93b18408de5eae6f4e2.md) | 147 | `result-track:693af93b18408de5eae6f4e261cd35eba1722999a7a5b765499ddcd2c415486d` |
| 23 | `theorem` | [finite_zeta_spin_flip_denies_zero_location](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/finite-zeta-spin-flip-denies-zero-location--e407ee86b6ff1800102a5d79.md) | 153 | `result-track:e407ee86b6ff1800102a5d7989b712a50072e1e292777ed881154ad6c75da787` |
| 24 | `theorem` | [finite_zeta_spin_flip_denies_spectral_authority](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/finite-zeta-spin-flip-denies-spectral-authority--f06d6e76decba7f968ecbb6a.md) | 159 | `result-track:f06d6e76decba7f968ecbb6a8cf7d43bb48814bf8e7b5f3e15d51dcc3ea57042` |
| 25 | `theorem` | [finite_zeta_spin_flip_denies_infinite_convergence](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/finite-zeta-spin-flip-denies-infinite-convergence--a49f87f772f5ea3874e6f5f8.md) | 165 | `result-track:a49f87f772f5ea3874e6f5f8cdf50a4eb56bc301c3413bdc010aff8a87dc3003` |
| 26 | `def` | [coefficientAtZeroFlip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/coefficientatzeroflip--5cf51e0305a506aeedae961d.md) | 171 | `declaration-track:5cf51e0305a506aeedae961dbdbac66aed2922d388c1a58c22a3811c5309d774` |
| 27 | `theorem` | [coefficientAtZeroFlip_weighted_harmonic_flip](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/coefficientatzeroflip-weighted-harmonic-flip--ea0e301fe13c2c336e237bb0.md) | 175 | `result-track:ea0e301fe13c2c336e237bb0508ce48d07852cc53e07095a6debc1a64f47fee1` |
| 28 | `theorem` | [every_harmonic_index_has_flip_basis](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/every-harmonic-index-has-flip-basis--59c06afdbc166e4add6b4f16.md) | 182 | `result-track:59c06afdbc166e4add6b4f16fc4e497cefa1572b798f775eae39d252c95abb15` |
| 29 | `theorem` | [control_spin_has_basis](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/control-spin-has-basis--c1d3d7c94ea9375f54801b16.md) | 188 | `result-track:c1d3d7c94ea9375f54801b161051e03c63909fcc7f6e1dec8bcf30d5d542aa0e` |
| 30 | `theorem` | [zeta_spin_flip_has_N_harmonic_slots](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zeta-spin-flip-has-n-harmonic-slots--60e561db249edccb61720aa7.md) | 194 | `result-track:60e561db249edccb61720aa73d8c6fd1dcc7aedb2315f4eee63c014fe5dd433e` |
| 31 | `structure` | [ZetaSpinFlipAuthoritySurface](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/zetaspinflipauthoritysurface--5ff5c429327d7acf94073a8e.md) | 203 | `declaration-track:5ff5c429327d7acf94073a8eea5f864602433ebd11139bfe909cca9ecacb5595` |
| 32 | `def` | [defaultZetaSpinFlipAuthoritySurface](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/defaultzetaspinflipauthoritysurface--30552622f4b63f81fc113edc.md) | 217 | `declaration-track:30552622f4b63f81fc113edced770cf6897191d73852e0edbf013a7d6768e6ee` |
| 33 | `theorem` | [default_zeta_spin_flip_is_finite_carrier](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/default-zeta-spin-flip-is-finite-carrier--e69f6a71ccf4e2e94858ce42.md) | 229 | `result-track:e69f6a71ccf4e2e94858ce42bf143a538e5e971298fff24477c80d2624322382` |
| 34 | `theorem` | [default_zeta_spin_flip_has_spin_control_bit](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/default-zeta-spin-flip-has-spin-control-bit--4823940aedf8760016dbf995.md) | 233 | `result-track:4823940aedf8760016dbf9950cfff05444aab764181cd197ef6ace600e1084fc` |
| 35 | `theorem` | [default_zeta_spin_flip_has_harmonic_flips](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/default-zeta-spin-flip-has-harmonic-flips--0fe05c90cb26bf45f6063969.md) | 237 | `result-track:0fe05c90cb26bf45f60639695bc11f0b27525f4a47746946f6eff6205cd2d7c5` |
| 36 | `theorem` | [default_zeta_spin_flip_has_group_ring_carrier](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/default-zeta-spin-flip-has-group-ring-carrier--8d3e9a63cd9413f5b117c9a5.md) | 241 | `result-track:8d3e9a63cd9413f5b117c9a56e84552bbe33392ba123b6c4d1002926bd9bdc78` |
| 37 | `theorem` | [default_zeta_spin_flip_denies_zeta_theorem_claim](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/default-zeta-spin-flip-denies-zeta-theorem-claim--8d41296676c8f9af269ae6af.md) | 245 | `result-track:8d41296676c8f9af269ae6af564440b16b6a865eb058bae541813ae7b04a73b1` |
| 38 | `theorem` | [default_zeta_spin_flip_denies_rh_claim](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/default-zeta-spin-flip-denies-rh-claim--175c4bd4a535df4981f832a5.md) | 249 | `result-track:175c4bd4a535df4981f832a5d7a74bd85cbbdae589973603d07e8b8a0b4f5b52` |
| 39 | `theorem` | [default_zeta_spin_flip_denies_theorem_promotion](../../../../../mathematics/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Variant6bf524f2182828a78c02a8078b82ab6df543770ddd818d20f7a96150d3e84271.lean/declarations/default-zeta-spin-flip-denies-theorem-promotion--b5415a9bfba0dc4d5d364929.md) | 253 | `result-track:b5415a9bfba0dc4d5d3649294a81ca983bfae71353d68d8241759288b1b147da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
