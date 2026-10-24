# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d06c5e363c72fc675c9127cff07851199ae84e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d06c5e363c72fc675c9127cff07851199ae84e`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean.json)

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
| 1 | `def` | [leftRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/leftrel--77e8fe74de83ed3b4fe0054b.md) | 66 | `declaration-track:77e8fe74de83ed3b4fe0054b758db4bd87a78d3453c1495d5e40988f9ccd128f` |
| 2 | `theorem` | [leftRel_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/leftrel-apply--d3df1b2a0cde7e0a977f9a87.md) | 71 | `result-track:d3df1b2a0cde7e0a977f9a870a83f09903aa0d2298d9161abdc8e13729320836` |
| 3 | `theorem` | [leftRel_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/leftrel-eq--a5d1c38b073fc78583fef898.md) | 80 | `result-track:a5d1c38b073fc78583fef89837ad54c088b2c5a3a564cfca26b9979abb4edbf5` |
| 4 | `instance` | [leftRelDecidable](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/leftreldecidable--ce96c7ec1cec3c5608990c82.md) | 86 | `declaration-track:ce96c7ec1cec3c5608990c82ebb661a6917a654ee53228625dea52d0417bb005` |
| 5 | `instance` | [instHasQuotientSubgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/insthasquotientsubgroup--bf2622689d214055d9ecf021.md) | 94 | `declaration-track:bf2622689d214055d9ecf0217a87c18431519f71468358837ba4949b03c9c3e9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/instance--c0a698c235474174cd4687cb.md) | 98 | `declaration-track:c0a698c235474174cd4687cb81e18e2ce108bff27ecf9c88e253d937ce5af662` |
| 7 | `def` | [rightRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/rightrel--b9bdc80ac46473f946fc7ce7.md) | 106 | `declaration-track:b9bdc80ac46473f946fc7ce794c642bb95887eb0244bda077efce3aca52936d9` |
| 8 | `theorem` | [rightRel_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/rightrel-apply--8055dbf046c1c356325401b0.md) | 111 | `result-track:8055dbf046c1c356325401b0a9ebc600e35ad9502b6cf67b6f8dee6ad12a7650` |
| 9 | `theorem` | [rightRel_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/rightrel-eq--8e395b0c80f7d36d88e991e3.md) | 118 | `result-track:8e395b0c80f7d36d88e991e3e8d61a9bdf8d43261fc6ae72403d0df1b7665bb4` |
| 10 | `instance` | [rightRelDecidable](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/rightreldecidable--046d65155ed685c60ae1b9c1.md) | 124 | `declaration-track:046d65155ed685c60ae1b9c1ff86e969cfa8bff0b867b4ee85859dd4b465c5a6` |
| 11 | `def` | [quotientRightRelEquivQuotientLeftRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/quotientrightrelequivquotientleftrel--62a7ad5b9b1fb7be2bc78c0c.md) | 130 | `declaration-track:62a7ad5b9b1fb7be2bc78c0c8b825a6e5967a2f25dbb2b2a042a39277c74f1ff` |
| 12 | `abbrev` | [mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/mk--495672c195b0d0b2a79dbf79.md) | 161 | `declaration-track:495672c195b0d0b2a79dbf79eabf3af272befec5fe5e2221d87fc31b826a2c56` |
| 13 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/mk-surjective--426d4d1a406c7d2e1858c775.md) | 165 | `result-track:426d4d1a406c7d2e1858c775be6de6b8abc2525c2cab748918e6121c83d5962a` |
| 14 | `lemma` | [range_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/range-mk--729fc070092e393734f1016c.md) | 169 | `result-track:729fc070092e393734f1016c5b7b47a45b2aad5d25c53883568dfbd5fbfcfa7f` |
| 15 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/induction-on--4d019c48fc8c946c14acd9fe.md) | 172 | `result-track:4d019c48fc8c946c14acd9feff9139c754628335365cae634341286012751c97` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/instance--153a95287c7423032bd2e60f.md) | 176 | `declaration-track:153a95287c7423032bd2e60f894cb1072973d37bb860c161d275930226ec557b` |
| 17 | `theorem` | [quotient_liftOn_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/quotient-lifton-mk--fcf9b855f6a19336d07315fc.md) | 182 | `result-track:fcf9b855f6a19336d07315fc6309c5814d888520f63c38094191021e84bc1b31` |
| 18 | `theorem` | [forall_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/forall-mk--dd635a40fb8bebf4daf26a2b.md) | 186 | `result-track:dd635a40fb8bebf4daf26a2b3fba32020a73116c4e8b62f3c0c70e0d4f7f989f` |
| 19 | `theorem` | [exists_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/exists-mk--31d364ca566153bf7746a7e2.md) | 190 | `result-track:31d364ca566153bf7746a7e2e30e3d36cc14333f1b1d9c84d47b35d451b532bf` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/instance--7b0c3010da492607eed2f7fa.md) | 194 | `declaration-track:7b0c3010da492607eed2f7fadccdbbe2bef4b168f51e82859ad8d4e36a82601f` |
| 21 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/eq--8aef3114274e2fcc3b40502b.md) | 198 | `result-track:8aef3114274e2fcc3b40502b9648b2dc01dc250ac3d0d9ed80a6116168b213d0` |
| 22 | `theorem` | [out_eq'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/out-eq--1a91ae151bc3cdccd10ee7e1.md) | 204 | `result-track:1a91ae151bc3cdccd10ee7e17f7e688232eb26ca3952010295f4b8449eff5915` |
| 23 | `theorem` | [mk_out_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/mk-out-eq-mul--98f0caec8aa2cd4bf83ab7aa.md) | 216 | `result-track:98f0caec8aa2cd4bf83ab7aa1b219a480cf455dc46f89192739140ec60963180` |
| 24 | `theorem` | [mk_mul_of_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/mk-mul-of-mem--ac88487e90a18a1a04e859b9.md) | 222 | `result-track:ac88487e90a18a1a04e859b9c5401707dd174830158718d6bdbb6eede9d64ce9` |
| 25 | `theorem` | [preimage_image_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/preimage-image-mk--76ebb7508965c4ad24edfaa5.md) | 226 | `result-track:76ebb7508965c4ad24edfaa58ef6595424ee2899cce6d86b92d674aa325acd64` |
| 26 | `theorem` | [preimage_image_mk_eq_iUnion_image](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/preimage-image-mk-eq-iunion-image--dc225f261115a342a9071a7b.md) | 236 | `result-track:dc225f261115a342a9071a7bb26c23f7fed5e7ad99fce810b87e0b7af686b6b1` |
| 27 | `theorem` | [preimage_image_mk_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/preimage-image-mk-eq-mul--c16d75829971c5664ab87347.md) | 242 | `result-track:c16d75829971c5664ab8734761da04b27bc34f52a7400aa2849fd38ac7489887` |
| 28 | `theorem` | [preimage_mk_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/preimage-mk-one--3751d8a61a1ec16b3a09a359.md) | 248 | `result-track:3751d8a61a1ec16b3a09a35965db8d0a6779eac820a325952f82ee34f1b40185` |
| 29 | `def` | [quotientEquivOfEq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/quotientequivofeq--e8430bed445904e5a7f22a0a.md) | 269 | `declaration-track:e8430bed445904e5a7f22a0aaf70c90794498ffdedd5f67ff49eb01f0ff8d04a` |
| 30 | `theorem` | [quotientEquivOfEq_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean/declarations/quotientequivofeq-mk--bcf50a1d36e3fbfd449d16ca.md) | 275 | `result-track:bcf50a1d36e3fbfd449d16ca7328a1e3b42dcca7d9e5b864b8d999981ffbc503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
