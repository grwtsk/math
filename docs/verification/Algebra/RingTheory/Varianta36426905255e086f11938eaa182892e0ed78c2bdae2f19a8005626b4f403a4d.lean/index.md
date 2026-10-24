# Verification target: GRWTSK.Algebra.Ring.Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca00b04d0dce572b9659f0b68292032108a9149e",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca00b04d0dce572b9659f0b68292032108a9149e`.

Source path: `GRWTSK/Algebra/Ring/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Associator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gnonunitalnonassocsemiring--643eae711fe9d13d1199bb30.md) | 90 | `declaration-track:643eae711fe9d13d1199bb3098d63f49dd7ede3eb4d5ddae9bff873de3aa424a` |
| 2 | `class` | [GSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gsemiring--a4c90ebd73c3d1e24f8a68ae.md) | 110 | `declaration-track:a4c90ebd73c3d1e24f8a68aecec252766eddeb3b2f3168c79f0fd3f07e3bb384` |
| 3 | `class` | [GCommSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gcommsemiring--220992eb71a144300a78d9fc.md) | 120 | `declaration-track:220992eb71a144300a78d9fc85e9501703b3019eb6cb8cc4c34a81c0676374af` |
| 4 | `class` | [GRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gring--0a55e021d64eae3fabb77bab.md) | 124 | `declaration-track:0a55e021d64eae3fabb77bab90d06f23b1c4e7e651842506fcf11bb28df1f05b` |
| 5 | `class` | [GCommRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gcommring--cee40b4c56c4c3a56874325a.md) | 136 | `declaration-track:cee40b4c56c4c3a56874325a82a81608283a275cea8e0d0099272b346b1f3277` |
| 6 | `theorem` | [of_eq_of_gradedMonoid_eq](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-eq-of-gradedmonoid-eq--ec350a8b2b206a59276cd56d.md) | 140 | `result-track:ec350a8b2b206a59276cd56df47239c58efd5cb2728593f391e84d0ecfbdae12` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/instance--83349d88caa076bf51832d44.md) | 154 | `declaration-track:83349d88caa076bf51832d44be575f52ae880c0744477edb4f8d33c43b58f48c` |
| 8 | `theorem` | [one_def](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/one-def--741f82403b377e6d1e837ba9.md) | 156 | `result-track:741f82403b377e6d1e837ba9a8b1f4fad96a32b65e8865435cdc72664d82423c` |
| 9 | `def` | [gMulHom](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gmulhom--4cdf72347ef871bea962527d.md) | 168 | `declaration-track:4cdf72347ef871bea962527de610ff1c75a1af51a91c3b9c537145ba0894280c` |
| 10 | `def` | [mulHom](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mulhom--a6be820d6a8051501abac68d.md) | 179 | `declaration-track:a6be820d6a8051501abac68dfa6e1d3e5ce7af2d351f7742fcf6f71d126423d5` |
| 11 | `instance` | [instMul](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/instmul--f4dd9439d23aa4b6314ce6af.md) | 185 | `declaration-track:f4dd9439d23aa4b6314ce6af859e37d8962c304202879ffc5948ead3edfda3d4` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/instance--24e0b0d06e8ec585f48c9126.md) | 188 | `declaration-track:24e0b0d06e8ec585f48c91267cf8c7c78b2e29d84dcef4a8f94b9ce3df4a239c` |
| 13 | `theorem` | [mulHom_apply](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mulhom-apply--2f2086de18da3953252625ac.md) | 198 | `result-track:2f2086de18da3953252625ac0ebe61df75871205bffd80cb9ac63de992b40fa2` |
| 14 | `theorem` | [mulHom_of_of](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mulhom-of-of--8c78fb5da1408d13778488c7.md) | 200 | `result-track:8c78fb5da1408d13778488c7bc18c7225d0a2c47013b08c30e17ebf6fe469d48` |
| 15 | `theorem` | [of_mul_of](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-mul-of--d28184f4c478bbee1757d5cf.md) | 206 | `result-track:d28184f4c478bbee1757d5cf15dccf32a0899807b0b8d9fc8955492574ff7be5` |
| 16 | `theorem` | [one_mul](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/one-mul--b4026cd0f13606f7c45bbdef.md) | 218 | `result-track:b4026cd0f13606f7c45bbdefe84255fe1678a608a4b691241cb04f02a07a605d` |
| 17 | `theorem` | [mul_one](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mul-one--49f636ee8d46507da2425783.md) | 225 | `result-track:49f636ee8d46507da242578309ae989dd6c1dd046352013aa25a7ec5290a7ae9` |
| 18 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mul-assoc--37697e9bd2d95a673eca739f.md) | 232 | `result-track:37697e9bd2d95a673eca739f8262f2e545b0d54fe6a2fe52c0f7253317438f27` |
| 19 | `instance` | [instNatCast](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/instnatcast--2977800ddeeba05bb4763aff.md) | 243 | `declaration-track:2977800ddeeba05bb4763afffa49e7e80bbfa959b5267d93850b552729ee6c42` |
| 20 | `instance` | [semiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/semiring--fea5b8157496cbb2c0008f0e.md) | 247 | `declaration-track:fea5b8157496cbb2c0008f0ec404f59ba8987ecc7bc8a3ca323445d5222a15b0` |
| 21 | `theorem` | [ofPow](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/ofpow--796a4a14a22b247d670f1468.md) | 259 | `result-track:796a4a14a22b247d670f146817f9a1a2c3632c98614ece0e6e88a6234243fc1c` |
| 22 | `theorem` | [ofList_dProd](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/oflist-dprod--d13946f0472da8637987e116.md) | 267 | `result-track:d13946f0472da8637987e1169ac6147a834fd34c7b001b1736d43513a7bf0c55` |
| 23 | `theorem` | [list_prod_ofFn_of_eq_dProd](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/list-prod-offn-of-eq-dprod--c3f3cdf63ffbb5a7daa1dcbb.md) | 277 | `result-track:c3f3cdf63ffbb5a7daa1dcbb9d585433c3611bfeaee3f36a0853fff98ddfbe91` |
| 24 | `theorem` | [mul_eq_dfinsuppSum](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mul-eq-dfinsuppsum--1f6fbbf2a1782cf3908c4ee9.md) | 281 | `result-track:1f6fbbf2a1782cf3908c4ee93e3c86faf188abf880ec8fc92713e3a1aa49fc10` |
| 25 | `theorem` | [mul_eq_sum_support_ghas_mul](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mul-eq-sum-support-ghas-mul--d71a9c379300ed42b0142033.md) | 302 | `result-track:d71a9c379300ed42b01420335fe69da6ac74b580a1944c07a0695c9e4b9930ec` |
| 26 | `theorem` | [mul_comm](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/mul-comm--821776d7fb86cfca80de1d6d.md) | 314 | `result-track:821776d7fb86cfca80de1d6daf539da782c7e5a890a51d1734ed571077b5caa6` |
| 27 | `instance` | [commSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/commsemiring--148ed0c4fa1a6278f2b89ea7.md) | 322 | `declaration-track:148ed0c4fa1a6278f2b89ea7bfa1403ecb86d08df3ea59435828360da352cec9` |
| 28 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/nonassocring--f13e72ef389a5dd34faa0b03.md) | 333 | `declaration-track:f13e72ef389a5dd34faa0b03cab712f3c2a25364d9630be554659225af8cf197` |
| 29 | `instance` | [ring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/ring--52e7225c29d8d00aa96687f5.md) | 345 | `declaration-track:52e7225c29d8d00aa96687f5543cebb0306cc2d1e3f21bf6cc094161f16062f5` |
| 30 | `instance` | [commRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/commring--c16146ad66001da3d976391b.md) | 360 | `declaration-track:c16146ad66001da3d976391b66b7cba1b88d923da347afd1485823ca0b5b04e7` |
| 31 | `theorem` | [of_zero_one](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-zero-one--f16ca111bd6bcbb0318350bc.md) | 380 | `result-track:f16ca111bd6bcbb0318350bc47bb25ffc1ea9a7d10feb441069a55e0643ff454` |
| 32 | `theorem` | [of_zero_smul](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-zero-smul--06d3861f44800f0ab02844be.md) | 390 | `result-track:06d3861f44800f0ab02844be6d3cffdbad408a37517185786373a828b0239fde` |
| 33 | `theorem` | [of_zero_mul](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-zero-mul--27cf325fec81064f71024d95.md) | 394 | `result-track:27cf325fec81064f71024d95b28668deef087d32d8e80da3b96600b2f3e0f323` |
| 34 | `instance` | [GradeZero.nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-nonunitalnonassocsemiring--47868784966f34f97a836771.md) | 397 | `declaration-track:47868784966f34f97a836771abdc53a1033fb36cd2aa6e25280dd64892cdb2fd` |
| 35 | `instance` | [GradeZero.smulWithZero](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-smulwithzero--af6e0185cd89c4d6001c4257.md) | 401 | `declaration-track:af6e0185cd89c4d6001c4257089cd0277175d930b2339914527fa09dfdf7883f` |
| 36 | `theorem` | [of_zero_pow](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-zero-pow--186b6132e4467356ca417491.md) | 413 | `result-track:186b6132e4467356ca417491026aa81df30d911a4aaba1cee027e5c777998f4c` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/instance--7d9bef240aa97ffb30cc7eae.md) | 418 | `declaration-track:7d9bef240aa97ffb30cc7eaed0273d635d3d3c69310fcb0f24a514ef45e27a4e` |
| 38 | `theorem` | [of_natCast](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-natcast--3a851154a508384877bb9621.md) | 425 | `result-track:3a851154a508384877bb96210982b63d431e82df02ad522dd15030d5fc507a13` |
| 39 | `theorem` | [of_zero_ofNat](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-zero-ofnat--b7348291f664454866bafc37.md) | 429 | `result-track:b7348291f664454866bafc37f9910c35fb3334f962f3414c28bed0251d4f3d39` |
| 40 | `instance` | [GradeZero.semiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-semiring--d1b9912d50fbad607cba2f2c.md) | 433 | `declaration-track:d1b9912d50fbad607cba2f2c45a1a744d12b3e5aa4c1f459ef09b5b77e3378ed` |
| 41 | `def` | [ofZeroRingHom](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/ofzeroringhom--0c9a7707d9936d62cadeee37.md) | 439 | `declaration-track:0c9a7707d9936d62cadeee376a4f6c40cbf130dc83a6279d313c3556d4f87eeb` |
| 42 | `instance` | [GradeZero.module](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-module--79c90bbb4fe25d2070686695.md) | 447 | `declaration-track:79c90bbb4fe25d20706866950eafee48e1286317af6eaa1b9df77fbe340100db` |
| 43 | `instance` | [GradeZero.commSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-commsemiring--12d11b1c265fb5c69f4a1cdf.md) | 458 | `declaration-track:12d11b1c265fb5c69f4a1cdf4ee7671075417fcbfe6e7dca1d2a0e72992f58dc` |
| 44 | `instance` | [GradeZero.nonUnitalNonAssocRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-nonunitalnonassocring--86a8e31cd0ac02a501ec7d21.md) | 470 | `declaration-track:86a8e31cd0ac02a501ec7d2183758cbf6aeab29a4b1f96746456c60846e39fbf` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/instance--05a77ae5bdfb8f27f59b608f.md) | 481 | `declaration-track:05a77ae5bdfb8f27f59b608f9055c195ac7d40b6cc0f1575626382a416f42114` |
| 46 | `theorem` | [of_intCast](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/of-intcast--ca5486a43ca8ac31edac387c.md) | 485 | `result-track:ca5486a43ca8ac31edac387cc7e282c2c6640c56ded07fb28ae65b59c581630a` |
| 47 | `instance` | [GradeZero.ring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-ring--e90c8b4cfbde090b99879323.md) | 489 | `declaration-track:e90c8b4cfbde090b99879323552e710bdaaed94fd3401f83361344b1f919993c` |
| 48 | `instance` | [GradeZero.commRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/gradezero-commring--050ce84289ed1e68cd26b64b.md) | 501 | `declaration-track:050ce84289ed1e68cd26b64b6d15688ec53bdb78b09185bc019dad56991aa198` |
| 49 | `theorem` | [ringHom_ext'](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/ringhom-ext--cbad040461e5bb7b7aa54e08.md) | 520 | `result-track:cbad040461e5bb7b7aa54e08d2f764547d42dd8751b23fe193bfa027cc9bc480` |
| 50 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/ringhom-ext--3e9534162b9efe88297d5451.md) | 525 | `result-track:3e9534162b9efe88297d545164740f6c9dadfbfe922065a2bac5d0a92b236ada` |
| 51 | `def` | [toSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/tosemiring--751fa478dbf46b55b8348f48.md) | 536 | `declaration-track:751fa478dbf46b55b8348f48e187d41768504e3390d9f8644a7c703b179c4807` |
| 52 | `theorem` | [toSemiring_of](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/tosemiring-of--8006f15c57dd306aa2db7f5f.md) | 555 | `result-track:8006f15c57dd306aa2db7f5fc50e815e202d17445c2c602975059df4d13eb117` |
| 53 | `theorem` | [toSemiring_coe_addMonoidHom](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/tosemiring-coe-addmonoidhom--810fcbc63a51cd61924cbaa4.md) | 560 | `result-track:810fcbc63a51cd61924cbaa4d651be9318a8a997f0c91fee47b3b54701c331c4` |
| 54 | `def` | [liftRingHom](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/liftringhom--ccae6a4ee7d478b16720b988.md) | 568 | `declaration-track:ccae6a4ee7d478b16720b988ba39e6536e04cdd5b27b13c8bf36784e9c794413` |
| 55 | `instance` | [NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/nonunitalnonassocsemiring-directsumgnonunitalnonassocsemiring--da659d30c58d3d67ed532dea.md) | 606 | `declaration-track:da659d30c58d3d67ed532dea1d93132bfb8978a9a75caa7655d10057418c7b89` |
| 56 | `instance` | [Semiring.directSumGSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/semiring-directsumgsemiring--5b413c691ccab02551f65788.md) | 615 | `declaration-track:5b413c691ccab02551f65788fc2290c32f9d58092b6c6200f1b14a3faec60e75` |
| 57 | `instance` | [Ring.directSumGRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/ring-directsumgring--bdcd383b5170ac1ce4d77426.md) | 624 | `declaration-track:bdcd383b5170ac1ce4d77426729a847a855dc9717980f68798ddc94c7bd3c71c` |
| 58 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/example--efba52090a4502611e70df5d.md) | 634 | `declaration-track:efba52090a4502611e70df5d5c8ff854e03dba07288b1f93ba63a851706e6d64` |
| 59 | `instance` | [CommSemiring.directSumGCommSemiring](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/commsemiring-directsumgcommsemiring--ac9f85542575da05bed42fc9.md) | 639 | `declaration-track:ac9f85542575da05bed42fc9caf279340a687bdff7388ec1005fd91d1ff35367` |
| 60 | `instance` | [CommRing.directSumGCommRing](../../../../mathematics/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/declarations/commring-directsumgcommring--1b1ed4816144f992544cdec9.md) | 645 | `declaration-track:1b1ed4816144f992544cdec934da7691b7a3fc48a948e83d2c62592ecfd24316` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
