# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc12a7129c2e2654f3d33989ec141e559e7466a0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc12a7129c2e2654f3d33989ec141e559e7466a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean.json)

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
| 1 | `def` | [ProjGenLinGroup](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/projgenlingroup--bb4dad08ee84c879ccb20be0.md) | 49 | `declaration-track:bb4dad08ee84c879ccb20be0697a68e8485f24f0b3b78b16ab805266b647f5ff` |
| 2 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk--f8fe1e948a76a80e698142a8.md) | 63 | `declaration-track:f8fe1e948a76a80e698142a8af281b9f79efda3674e5604213a8c639ef0c2715` |
| 3 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk-surjective--8011c33c5368f6e7985c4850.md) | 65 | `result-track:8011c33c5368f6e7985c48507b7e6c2b1b8926c0109386c8cc062a2b1a179d7d` |
| 4 | `lemma` | [mk_eq_mk_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk-eq-mk-iff--82b860dc52693d079bad1603.md) | 68 | `result-track:82b860dc52693d079bad1603a3242a3e65653dee8b26beaadf3d3f774ab07700` |
| 5 | `lemma` | [mk_eq_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk-eq-mk-iff--6d8e8c5f8f52d03ef73f90f2.md) | 72 | `result-track:6d8e8c5f8f52d03ef73f90f28461c88a86511a10f83ce7b9770c7973d53cc726` |
| 6 | `theorem` | [ker_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/ker-mk--46e5e2c351889641293f9ebb.md) | 77 | `result-track:46e5e2c351889641293f9ebbd3ebca5562f623f75927ef07ddbaee107f9cbd4b` |
| 7 | `theorem` | [mk_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk-eq-one--cb8de7e690f753c281064f8c.md) | 80 | `result-track:cb8de7e690f753c281064f8c990cc7d8a8b5d250ba289bdcf278504de58e0cbd` |
| 8 | `lemma` | [mk_one](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk-one--e51d7957ac7ddc3ce756c289.md) | 84 | `result-track:e51d7957ac7ddc3ce756c289f41bc85f79f279b6dd5f6dd09064c1f9a547490b` |
| 9 | `theorem` | [mk_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk-scalar--c8dc8157e62f03653595ea63.md) | 87 | `result-track:c8dc8157e62f03653595ea63a0b7c64705463cca7aa3582d5064de1120fe08f6` |
| 10 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/induction-on--349fad6744072881f42cb7df.md) | 92 | `result-track:349fad6744072881f42cb7df18e07c590bab3581075e71a05549903d91477f1a` |
| 11 | `abbrev` | [toPGL](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/topgl--3b68eb5db947eaf4c42be668.md) | 108 | `declaration-track:3b68eb5db947eaf4c42be668d629a2203ad734b42d0d8a9a748e7cf57a64a03b` |
| 12 | `lemma` | [toPGL_ker](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/topgl-ker--d7f1bd2e7ae57b3d503053bb.md) | 110 | `result-track:d7f1bd2e7ae57b3d503053bbe119916572c795551f667d4c8787f8be5f8b2e6e` |
| 13 | `def` | [toPGL](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/topgl--0b9f99a22d73fe674f06de86.md) | 121 | `declaration-track:0b9f99a22d73fe674f06de863e651e57eef763142231bdceebcb45429db1afa1` |
| 14 | `lemma` | [toPGL_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/topgl-mk--7baf764c29ba1809d78fbf25.md) | 125 | `result-track:7baf764c29ba1809d78fbf2555af70e770ff3fd6323cde776ab3046989488e5f` |
| 15 | `lemma` | [toPGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/topgl-injective--34158a2b344abafa523d2352.md) | 128 | `result-track:34158a2b344abafa523d23522dd089705c7073d5da9094a059c03a8f6088ffe6` |
| 16 | `lemma` | [toPGL_surj_of_roots](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/topgl-surj-of-roots--e7152379ca3bfbb01ad58965.md) | 133 | `result-track:e7152379ca3bfbb01ad5896586ea4644bd4f015f205a77c065fc83c83d80561f` |
| 17 | `lemma` | [toPGL_surj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/topgl-surj-iff--82b6edc2d22cf27f52a4a45b.md) | 148 | `result-track:82b6edc2d22cf27f52a4a45bacae364224385023bee9773f642ae4c28cc54e0a` |
| 18 | `def` | [isoPSLOfAlgClosedOfNonempty](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/isopslofalgclosedofnonempty--91d7bfd46c6edc965cb90c28.md) | 162 | `declaration-track:91d7bfd46c6edc965cb90c285c818bdcb396b8abfdb303ec09e6df89360d12fb` |
| 19 | `def` | [isoPSLOfAlgClosed](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/isopslofalgclosed--7abdd8cff9011ff599cb8691.md) | 175 | `declaration-track:7abdd8cff9011ff599cb869106e53f7f8b5c1f5f1b65b259ba6bf2d0f1132cae` |
| 20 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/lift--b3f40815e1ea604ad3c83ce3.md) | 194 | `declaration-track:b3f40815e1ea604ad3c83ce3bf5f75530c7821e7ddec7615bf1bf2041bbb44c9` |
| 21 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/lift-mk--675402ee32e1a69c34361242.md) | 200 | `result-track:675402ee32e1a69c343612420935b46b35692940055d74959cc350f91ca8a6f5` |
| 22 | `theorem` | [lift_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/lift-comp-mk--bfd8e2e34c9e98c69dd5e72c.md) | 204 | `result-track:bfd8e2e34c9e98c69dd5e72cccc7047977bef54d8d83b68b03fc75206ffee4cb` |
| 23 | `def` | [mulActionOfGL](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mulactionofgl--df9121ec3cc59284b088005e.md) | 210 | `declaration-track:df9121ec3cc59284b088005eaa9b2c353f5d6250c5bb38020de8d19ba04e4a35` |
| 24 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/mk-smul--b80cd1ceb551ef9afbf9e898.md) | 218 | `result-track:b80cd1ceb551ef9afbf9e898c5cc00df19acc07f479eeba701c8bfbc460059a8` |
| 25 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/map--d1f88b5b6f36cb5bb14368eb.md) | 225 | `declaration-track:d1f88b5b6f36cb5bb14368eb6f6caac220036063ccd7bfc3fe86bcd58204ad9d` |
| 26 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/map-id--cdc7e06e0c6f4f5ebc05d0e3.md) | 229 | `result-track:cdc7e06e0c6f4f5ebc05d0e330f10e5619fe1e6da3c6678bc11f76b1c70f1e8e` |
| 27 | `lemma` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/map-mk--7972dc08dbfe15b3defedc5c.md) | 232 | `result-track:7972dc08dbfe15b3defedc5ca6291492aaa20666e1acb710da457098b11d024d` |
| 28 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/map-comp--d38598aae592ee68bf05dcaf.md) | 235 | `result-track:d38598aae592ee68bf05dcafcc23475c71940485625d6b2199d5102b6d006579` |
| 29 | `def` | [signDet](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/signdet--a9b2749e2928b196a100c853.md) | 243 | `declaration-track:a9b2749e2928b196a100c8532ac9a7703e7a548de473f255f5e2586ef4d7f87e` |
| 30 | `theorem` | [signDet_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/signdet-mk--ff03e7441ed2b8f1160ab3f1.md) | 248 | `result-track:ff03e7441ed2b8f1160ab3f1a4fb57b80398dda5490afc0dae80a64478a31556` |
| 31 | `theorem` | [val_signDet_mk](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1fe6336e77e2c32d17788b6c0de4e173c03bebafe8f092ecffa33d855b2fe0c2.lean/declarations/val-signdet-mk--005276e584689f56abfeeab8.md) | 252 | `result-track:005276e584689f56abfeeab834df5ed8e5ec34014893e62148ad8bc37a630e7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
