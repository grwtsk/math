# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f12e182084cd98129f0c79cb428c1330a2ac4f9b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f12e182084cd98129f0c79cb428c1330a2ac4f9b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Graded.External` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/gradedtensorproduct--e1876a6563230b983b89cfd1.md) | 76 | `declaration-track:e1876a6563230b983b89cfd11704a0109b51e0d7a8ea6287e40354b6e6ba95f2` |
| 2 | `instance` | [instAddCommGroupWithOne](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/instaddcommgroupwithone--26017ed554362bf0e695d636.md) | 89 | `declaration-track:26017ed554362bf0e695d6368a5da0ce2de23cacf16d20f1c8e81ccd8336593c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/instance--9856da7e0ca8253eed61deff.md) | 91 | `declaration-track:9856da7e0ca8253eed61deffd2ba54efc1c504f9de6ec86a3026866638571239` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/of--00e4a5ab800eb82e1b3fb0ed.md) | 95 | `declaration-track:00e4a5ab800eb82e1b3fb0ed00ec066fac728c3e14a886525c99d477f901c427` |
| 5 | `theorem` | [of_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/of-one--e2b6d1034309543808902429.md) | 98 | `result-track:e2b6d1034309543808902429aa2a8b14ab24b9cb902cf48e8a7a62d39f7be778` |
| 6 | `theorem` | [of_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/of-symm-one--afc3e04e632dba6dbdc8fe2b.md) | 101 | `result-track:afc3e04e632dba6dbdc8fe2b4ec739bf39495383394209f35ae9e8ef6ddc4b47` |
| 7 | `theorem` | [of_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/of-symm-of--68b3fb0392947d1fbbfe40ba.md) | 104 | `result-track:68b3fb0392947d1fbbfe40ba71c46708849359661c754f5bc41c2fdda1d8a66d` |
| 8 | `theorem` | [symm_of_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/symm-of-of--6c41db8c2625f01378b44bad.md) | 107 | `result-track:6c41db8c2625f01378b44badd7b8ccdadad08bcdb6f3810b1b89d60124d5d9ee` |
| 9 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/hom-ext--73b0a488b04f6158e9f01346.md) | 112 | `result-track:73b0a488b04f6158e9f01346040a009974be238258bdc0bf3bfc231b31fb139d` |
| 10 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul--858055fa9f0f5edc3b168133.md) | 119 | `declaration-track:858055fa9f0f5edc3b168133528dafecdbf0a365627c09d6b06f1de50971d7ee` |
| 11 | `def` | [auxEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/auxequiv--50cd298cac0514594c0813a2.md) | 130 | `declaration-track:50cd298cac0514594c0813a2d27982f6d0f5c18d505827220688cbe206a5dfea` |
| 12 | `theorem` | [auxEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/auxequiv-tmul--4a2c0f71cf8fc033e76a167e.md) | 135 | `result-track:4a2c0f71cf8fc033e76a167e3806fa5a312016bb0785fceed4b34521422bfbf7` |
| 13 | `theorem` | [auxEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/auxequiv-one--92e7f6f618fbff7fe5ea41cd.md) | 138 | `result-track:92e7f6f618fbff7fe5ea41cda5c9376ba51a71bfa591b57417ae88fee09acca0` |
| 14 | `theorem` | [auxEquiv_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/auxequiv-symm-one--266663e81270a6f6f278df63.md) | 142 | `result-track:266663e81270a6f6f278df63471f51a6295437f45943d0377295588e56e0747f` |
| 15 | `def` | [mulHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/mulhom--6b16ae58f2438d23a4df78ec.md) | 149 | `declaration-track:6b16ae58f2438d23a4df78ece0ff681ad0286a09cb2824a5920a26745c4870a9` |
| 16 | `theorem` | [mulHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/mulhom-apply--97630c3ae0489e009960a10a.md) | 155 | `result-track:97630c3ae0489e009960a10a423a6ea080cb6869c17ba8332d2db6725df2c4e4` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/instance--dee096fb64fe8abbb56c3943.md) | 163 | `declaration-track:dee096fb64fe8abbb56c39431cec59d29e5c440e4dab6a435f452a1e380b6393` |
| 18 | `theorem` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/mul-def--e7ae29a28b131ad7c05f76f3.md) | 165 | `result-track:e7ae29a28b131ad7c05f76f30563dcdeea7183eae5657bd5779db8e1d607d58b` |
| 19 | `theorem` | [auxEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/auxequiv-mul--d95b4750f8c279471c0c49d9.md) | 168 | `result-track:d95b4750f8c279471c0c49d956fc187292163b5b7f3770da941460ff3175b480` |
| 20 | `instance` | [instMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/instmonoid--73169fb15b3b07d7b5db77dc.md) | 172 | `declaration-track:73169fb15b3b07d7b5db77dca6d7af99b4ed2feea15da319dd9708530b198e74` |
| 21 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/instring--c1f7e6481b5097cff5aaecf3.md) | 181 | `declaration-track:c1f7e6481b5097cff5aaecf3f1a71bc6119586a0e25bc03c630c121863f1cd90` |
| 22 | `theorem` | [tmul_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-coe-mul-coe-tmul--db26f0ff4d653c2a8f94cb41.md) | 190 | `result-track:db26f0ff4d653c2a8f94cb413651de605a3342ebea51df78cc40929018e574d3` |
| 23 | `theorem` | [tmul_zero_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-zero-coe-mul-coe-tmul--90baf7ef64d80ac75867f466.md) | 207 | `result-track:90baf7ef64d80ac75867f46672e10ae8f9b0dd297aaec05a50762fbdd5e6493d` |
| 24 | `theorem` | [tmul_coe_mul_zero_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-coe-mul-zero-coe-tmul--cf214644b8b0ae21525c80b1.md) | 213 | `result-track:cf214644b8b0ae21525c80b1b6c704a34156ca75451194b5eae8417cdce030b1` |
| 25 | `theorem` | [tmul_one_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-one-mul-coe-tmul--089276458f4d5d83c4b1a6b5.md) | 218 | `result-track:089276458f4d5d83c4b1a6b5e6273354d18a1c47f213a0f1a19ebd411b7bc604` |
| 26 | `theorem` | [tmul_coe_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-coe-mul-one-tmul--4f6d7e537142e642cad40434.md) | 223 | `result-track:4f6d7e537142e642cad404347032c2db96954db3880a5b5367fecac1421616ab` |
| 27 | `theorem` | [tmul_one_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-one-mul-one-tmul--1d65378d71a1e646e72a09b1.md) | 228 | `result-track:1d65378d71a1e646e72a09b177e413d2e1ea8f54c2b5f73391909e343b6c913a` |
| 28 | `def` | [includeLeftRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/includeleftringhom--690231505bea97f5a76383c5.md) | 237 | `declaration-track:690231505bea97f5a76383c557c4aa601f5032c0e73885708595f70bed2bf28a` |
| 29 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/instalgebra--b3b3d6c5b1dc586db9782322.md) | 251 | `declaration-track:b3b3d6c5b1dc586db9782322c449207612bb32aa715b052f3df66ae7bd32b203` |
| 30 | `lemma` | [algebraMap_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/algebramap-def--0fc70bec01f7abc845026619.md) | 264 | `result-track:0fc70bec01f7abc8450266190b86289470518b4fdc17cd42e6ed4736822866ac` |
| 31 | `theorem` | [tmul_algebraMap_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-algebramap-mul-coe-tmul--a3e16ecda5b4965eb81208be.md) | 266 | `result-track:a3e16ecda5b4965eb81208be8f64b4252503579e5050f1685ce8cc9163a54180` |
| 32 | `theorem` | [tmul_coe_mul_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/tmul-coe-mul-algebramap-tmul--2eb15f95b0620697d3bb175b.md) | 271 | `result-track:2eb15f95b0620697d3bb175b873c09b586d8873574fd0d11cdb0790877f0787d` |
| 33 | `def` | [includeLeft](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/includeleft--6c76b45d3958c51eea4dd206.md) | 278 | `declaration-track:6c76b45d3958c51eea4dd206b5ee4b7d7cf557abbc21d35d418e9fdc899a2c60` |
| 34 | `def` | [includeRight](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/includeright--2b9cac530ff89dafe9afb977.md) | 284 | `declaration-track:2b9cac530ff89dafe9afb977afae652761159a7a7c15b05b271f4bef82183795` |
| 35 | `lemma` | [algebraMap_def'](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/algebramap-def--c55878f2c2922ade31fafa1a.md) | 298 | `result-track:c55878f2c2922ade31fafa1a56606ede6acd6f18f1dea9a99070abd0640861be` |
| 36 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/lift--450b1601187d8323e2c79365.md) | 306 | `declaration-track:450b1601187d8323e2c7936540f70f869b84e57cbb2d1326a3b58f04801010fe` |
| 37 | `theorem` | [lift_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/lift-tmul--2d013c34204936448eeae391.md) | 333 | `result-track:2d013c34204936448eeae3910688a82354fdc95b9c72881d5788b7d603ec883d` |
| 38 | `def` | [liftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/liftequiv--56863874e676c7561c6e8357.md) | 341 | `declaration-track:56863874e676c7561c6e83572184cb5bd7dd6403b159d6fb5cdf7d42a425c01b` |
| 39 | `lemma` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/alghom-ext--8c14c4933229deb7667b22c5.md) | 360 | `result-track:8c14c4933229deb7667b22c5ab55ce29408c302f8c7af1461acbb99f71a1e51f` |
| 40 | `def` | [comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/comm--11d33f7cac03e07e28f9148c.md) | 367 | `declaration-track:11d33f7cac03e07e28f9148ce57ae3a8e743fb13757e2bf67c20c903ad511893` |
| 41 | `lemma` | [auxEquiv_comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/auxequiv-comm--93e361070736f73764eebed2.md) | 378 | `result-track:93e361070736f73764eebed23fe57e4b43e00d24cf10c5fd9248e78d44495740` |
| 42 | `lemma` | [comm_coe_tmul_coe](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/declarations/comm-coe-tmul-coe--7e29a3a5b253c66a467782fc.md) | 382 | `result-track:7e29a3a5b253c66a467782fc985fb715b86c24c1468eb606ef6340e35761d260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
