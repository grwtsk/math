# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt06.Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf62950125ac894dbfd4faa9496a95510c130bb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf62950125ac894dbfd4faa9496a95510c130bb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/coefficientmap--3aed5ee7fde544a611ad5cdf.md) | 22 | `declaration-track:3aed5ee7fde544a611ad5cdf1727eac8faca70a8ec85139ba593bea5242be00b` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/coefficient-eq-expect--5a3e1522d04d830a29fc4ba2.md) | 28 | `result-track:5a3e1522d04d830a29fc4ba28a6cbbf2a848721f20d18677998e59171ee2204e` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/trivial-coefficient-eq-mean--fbf457d5a9458d495047a45c.md) | 33 | `result-track:fbf457d5a9458d495047a45cdf8c8450b68d449fa52825d80010fbe601620ef6` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/coefficient-character--2625668114fca5ba05b53ccf.md) | 38 | `result-track:2625668114fca5ba05b53ccfd4791cb96bfff9b6285a8a56df512dcdb787238c` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/coefficient-eq-basis-repr--e0c712f8e91306b2e8cc0ee3.md) | 43 | `result-track:e0c712f8e91306b2e8cc0ee30e17d6a564f7feb518ec2cff4f4e81536cca1465` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/complete-reconstruction--8740fa32bd1e24e5611af101.md) | 51 | `result-track:8740fa32bd1e24e5611af101b956c9c315e697ab29406c191f672e6db55de973` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/incompletereconstruction--1880c86d4f40b78bb9dc9d9f.md) | 57 | `declaration-track:1880c86d4f40b78bb9dc9d9f1a70c80560836c081f3f86383e09fed29a046575` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/reconstruction-split--1a8331f2d20a0c26402777e2.md) | 62 | `result-track:1a8331f2d20a0c26402777e2943f8efbdde4af4189da966edd2f193651805a62` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/incomplete-eq-self-iff--2b692456a58a2fdebbc95004.md) | 76 | `result-track:2b692456a58a2fdebbc9500433c655d0f38e85dd3c9c66f67caed1d3c88a179e` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/nontrivialspan--c3e4a70af4b6af40cf751a75.md) | 88 | `declaration-track:c3e4a70af4b6af40cf751a750896d97061f47ffc6d7699873250ea6cda87e944` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/nontrivialspan-le-trivial-kernel--980b0260921d33a70761cb0d.md) | 91 | `result-track:980b0260921d33a70761cb0dc40995c57d32b4edb87e4fe93358c8292c5b2910` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/trivial-not-mem-nontrivialspan--1d16beb3641fd62fcc342901.md) | 100 | `result-track:1d16beb3641fd62fcc3429017fc850d9fd44aac6ae1613036bef355934a049a9` |
| 13 | `theorem` | [mem_nontrivialSpan_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/mem-nontrivialspan-iff--ed31b9499cdc0d27be1ef11d.md) | 112 | `result-track:ed31b9499cdc0d27be1ef11dfbb512e7b3d38f4ce6fd6159eb25f921356865c7` |
| 14 | `theorem` | [nontrivialSpan_eq_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/nontrivialspan-eq-trivial-kernel--0d379f1d0e8ef3300dab385f.md) | 127 | `result-track:0d379f1d0e8ef3300dab385fb69d2300fcc8a3c839c7f1d3ba9f4493837827c5` |
| 15 | `theorem` | [coefficient_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/coefficient-constant--992f93e4820523627491ad2b.md) | 132 | `result-track:992f93e4820523627491ad2b9562c2a30665ec25330d9ca8431c894ada85f9fa` |
| 16 | `def` | [nontrivialStack](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/nontrivialstack--21a672370b49d360c4b0bfa8.md) | 141 | `declaration-track:21a672370b49d360c4b0bfa85e19da9733af893be01492c5b576055926d48732` |
| 17 | `theorem` | [nontrivialStack_add_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/nontrivialstack-add-constant--d7428c1c9a71af168a2ed73f.md) | 144 | `result-track:d7428c1c9a71af168a2ed73f6b0ba36a287da88c1c747d5f88f6775cdf637568` |
| 18 | `theorem` | [nontrivialStack_eq_iff_constant_difference](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/nontrivialstack-eq-iff-constant-difference--41bc9db1d34576318e15939b.md) | 150 | `result-track:41bc9db1d34576318e15939b694bf30a0e59d0b3e10163340852d7f140a6d7e2` |
| 19 | `theorem` | [no_trivial_coefficient_decoder](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/no-trivial-coefficient-decoder--55c7a0cca8a48bc9db3cdfa4.md) | 167 | `result-track:55c7a0cca8a48bc9db3cdfa44a9999e3bfb2e6e9358fb273e55fac07869456b4` |
| 20 | `def` | [scalarFiber](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/scalarfiber--1f070fe21fe9fe92e2a18e97.md) | 180 | `declaration-track:1f070fe21fe9fe92e2a18e979f89c690e7d6682a705c32d10669d7461a88bff8` |
| 21 | `theorem` | [scalarFiber_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/scalarfiber-sum--ed77c3af1cc64f12906acc8d.md) | 182 | `result-track:ed77c3af1cc64f12906acc8d8c217074696822425f70c5bc8927b8cd239c6845` |
| 22 | `theorem` | [scalarFiber_positive_total](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/scalarfiber-positive-total--e1161f6ac331f8e79aa83578.md) | 194 | `result-track:e1161f6ac331f8e79aa83578475ebb2b1db5db035bed1e26fc3586273447e81a` |
| 23 | `theorem` | [scalarFiber_negative_trivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/scalarfiber-negative-trivial--7b720eeb55429f22aab06a34.md) | 202 | `result-track:7b720eeb55429f22aab06a34ecf3ee97fce1c1251b8c8f3e3df4637bbb44a56e` |
| 24 | `theorem` | [scalarFiber_positive_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/scalarfiber-positive-nontrivial--01dd090b90f1d26145822ba7.md) | 206 | `result-track:01dd090b90f1d26145822ba7669c084a03b61c74c87ca47a89b0d63b7e8b8bbd` |
| 25 | `theorem` | [positive_total_not_fiberwise](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/declarations/positive-total-not-fiberwise--c5d9428cabfd3f59b00aa951.md) | 211 | `result-track:c5d9428cabfd3f59b00aa9519be1388873ee694cfad1120c8fa130396ab8f527` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
