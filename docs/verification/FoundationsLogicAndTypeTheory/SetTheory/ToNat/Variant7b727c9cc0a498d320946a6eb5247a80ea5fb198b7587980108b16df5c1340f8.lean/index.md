# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ToNat.Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb5b77b8796e0a0a2d4f1291c4d0fe1f621c521a",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb5b77b8796e0a0a2d4f1291c4d0fe1f621c521a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.ENat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat--91a62cb7954514b911163318.md) | 27 | `declaration-track:91a62cb7954514b911163318e8dfcab9921113e4254c33b0e59d6ca4c2ca6a78` |
| 2 | `lemma` | [toNat_toENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-toenat--a7ca8d745f4807856fd17412.md) | 30 | `result-track:a7ca8d745f4807856fd174120b2256709203affd56f35f942a2aa638af628d60` |
| 3 | `theorem` | [toNat_ofENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-ofenat--88cad1f4d4d778794d6f3bfb.md) | 33 | `result-track:88cad1f4d4d778794d6f3bfb32897696cbe0374d27c650438851789cccd964e3` |
| 4 | `theorem` | [toNat_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-natcast--3d206b2545014b5c2da2770c.md) | 36 | `result-track:3d206b2545014b5c2da2770cd675a6abdeefbfebbba6abba46d500edfd92d22a` |
| 5 | `lemma` | [toNat_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-eq-zero--5294ced13615088a15d25bf7.md) | 39 | `result-track:5294ced13615088a15d25bf75fc9e20a7c0a847d86bde557d3a802ec29724cac` |
| 6 | `lemma` | [toNat_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-ne-zero--0025086055c18568131b6e51.md) | 42 | `result-track:0025086055c18568131b6e5178d685aa2c878fc6235f61abfa76fdb0ea148f50` |
| 7 | `lemma` | [toNat_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-pos--539837c6c40359fe4beda1e3.md) | 43 | `result-track:539837c6c40359fe4beda1e3e3a84fa3f6efac94e92312b4910bd79ff0eca3da` |
| 8 | `theorem` | [cast_toNat_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/cast-tonat-of-lt-aleph0--954a33b37dd852ce16d98df3.md) | 45 | `result-track:954a33b37dd852ce16d98df363119cddb91dd19b30b151016ffdaeff6431ca8f` |
| 9 | `theorem` | [toNat_apply_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-apply-of-lt-aleph0--7137e034505ee23b2693b352.md) | 49 | `result-track:7137e034505ee23b2693b35223e847a64f8a07fe63cb8c66ca7a17bcbbf46a38` |
| 10 | `theorem` | [toNat_apply_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-apply-of-aleph0-le--c5c054e277e134309c5bdb4b.md) | 54 | `result-track:c5c054e277e134309c5bdb4b6f9c62d656d5a23eb1140da8252cc81c34f2af6f` |
| 11 | `theorem` | [cast_toNat_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/cast-tonat-of-aleph0-le--11f16eeafbb04aee1edbf2dd.md) | 56 | `result-track:11f16eeafbb04aee1edbf2dd238b518f03e376ea0a8033e64cee3d8132bb1808` |
| 12 | `theorem` | [cast_toNat_eq_iff_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/cast-tonat-eq-iff-lt-aleph0--fd8852a43d74e64fce60aa4b.md) | 59 | `result-track:fd8852a43d74e64fce60aa4b8dc867a4a0b64bfb3838a1801b59a6bc97c71f05` |
| 13 | `theorem` | [toNat_strictMonoOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-strictmonoon--9ad1b942e89307e7426211bd.md) | 66 | `result-track:9ad1b942e89307e7426211bdd84907a5547b627137678355376e4685390c038d` |
| 14 | `theorem` | [toNat_monotoneOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-monotoneon--24df98faebf6f9134eea32fc.md) | 70 | `result-track:24df98faebf6f9134eea32fc40c187bc537a4f7a228495f0cf36f139bf395390` |
| 15 | `theorem` | [toNat_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-injon--95540b35dd87cf7a2af6d993.md) | 72 | `result-track:95540b35dd87cf7a2af6d99350cce5ab441f743a9200d67b9dde2262d0a6aea8` |
| 16 | `theorem` | [toNat_inj_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-inj-of-lt-aleph0--29601066b26910d5c35cc2f5.md) | 76 | `result-track:29601066b26910d5c35cc2f556a414b1612350171d17b8a52c573d5eb459f8d6` |
| 17 | `theorem` | [toNat_le_iff_le_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-le-iff-le-of-lt-aleph0--e23d78c04b6cd344e363a3c6.md) | 82 | `result-track:e23d78c04b6cd344e363a3c677f1b47dc9f726e14420776fdd9d5ae0ce58e8e7` |
| 18 | `theorem` | [toNat_lt_iff_lt_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-lt-iff-lt-of-lt-aleph0--68df629d000944683df550b0.md) | 86 | `result-track:68df629d000944683df550b0008eab9219a6e861f97a60858ad11b3d01924714` |
| 19 | `theorem` | [toNat_le_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-le-tonat--abbea694f150d38af3691f16.md) | 91 | `result-track:abbea694f150d38af3691f16106e4016c7c12e8ff2e576dc6a3cb85111eedbfa` |
| 20 | `theorem` | [toNat_lt_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-lt-tonat--19e941f7916041af578bb9e6.md) | 94 | `result-track:19e941f7916041af578bb9e62014010c7e87ebfd92bd5496cd6dbca49d3762fd` |
| 21 | `theorem` | [toNat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-ofnat--84f8a3bd891c2a2d647d9728.md) | 98 | `result-track:84f8a3bd891c2a2d647d9728dc981a8684352bdb44f332ed80804fdf68f15ae1` |
| 22 | `theorem` | [toNat_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-rightinverse--6f32536c6050a03d95cbba83.md) | 103 | `result-track:6f32536c6050a03d95cbba83273557b757dc2d0f93f4927ddbd0c2b5920b77f1` |
| 23 | `theorem` | [toNat_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-surjective--58b747eee5ddee5eaf379722.md) | 106 | `result-track:58b747eee5ddee5eaf37972260242b31f6470e3b89c67468703243efdb5c6282` |
| 24 | `theorem` | [mk_toNat_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/mk-tonat-of-infinite--861233fcfc79e384cbb4ad41.md) | 110 | `result-track:861233fcfc79e384cbb4ad4141a2bebe3237328e5ec2ad56d0fd7479d8281d51` |
| 25 | `theorem` | [aleph0_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/aleph0-tonat--8c92981f5b7b2feb6cd0166c.md) | 113 | `result-track:8c92981f5b7b2feb6cd0166c1bcd6cbc9b43fff2a05cf9731f649aff6720697c` |
| 26 | `theorem` | [mk_toNat_eq_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/mk-tonat-eq-card--190383c3b813abbaf96804d1.md) | 116 | `result-track:190383c3b813abbaf96804d1ca3c4055a16847ca2494dec4c63856fc4c7b104d` |
| 27 | `theorem` | [zero_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/zero-tonat--10fe8c1cc0bb48b972168809.md) | 119 | `result-track:10fe8c1cc0bb48b97216880907c8318831398b90e662e8113519219fbf4c5d56` |
| 28 | `theorem` | [one_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/one-tonat--4122622c2a6786e584948b5b.md) | 121 | `result-track:4122622c2a6786e584948b5b0f8a85219a5a850ba5d606649b03174e725b6a2b` |
| 29 | `theorem` | [toNat_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-eq-iff--9844f0dba02f86d218da91cb.md) | 123 | `result-track:9844f0dba02f86d218da91cb6e39f447eb0fd20a3944b5f720434b7f560b86d3` |
| 30 | `theorem` | [toNat_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-eq-ofnat--4666b3b552250182937f901f.md) | 127 | `result-track:4666b3b552250182937f901f2bde29754d7bda36364b98168619e8800522ded2` |
| 31 | `theorem` | [toNat_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-eq-one--25070dd751f8b6bf3fdb856c.md) | 132 | `result-track:25070dd751f8b6bf3fdb856c9bd341a412d301960a6681bbc829027afcc0ac1b` |
| 32 | `theorem` | [toNat_eq_one_iff_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-eq-one-iff-unique--c2823dc5016f7de63d0da9c4.md) | 135 | `result-track:c2823dc5016f7de63d0da9c48209013a38871cf66c3d8eb2b8f3534d0d7c07e7` |
| 33 | `theorem` | [toNat_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-lift--fa5f4bb33c9d87a6619d6690.md) | 139 | `result-track:fa5f4bb33c9d87a6619d6690904f9b58ba2bd8b41197b7cc09a6fd0b4cdbf9b7` |
| 34 | `theorem` | [toNat_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-congr--189aea783becbdbf1cdd637b.md) | 142 | `result-track:189aea783becbdbf1cdd637bd2141977e71607c5c4a5d0470fd595566ff966b1` |
| 35 | `theorem` | [toNat_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-mul--98f45180c44fb6bba72467da.md) | 146 | `result-track:98f45180c44fb6bba72467daeda7f5f17998d8a555c7644a5f294d4159944ba8` |
| 36 | `theorem` | [toNat_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-add--2084e113e694eaf7f5eaad86.md) | 149 | `result-track:2084e113e694eaf7f5eaad8648fe634c9e7e268a16c0982c9d9eacfc048236fb` |
| 37 | `theorem` | [toNat_lift_add_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ToNat/Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8.lean/declarations/tonat-lift-add-lift--f3799a4dbcf1d6ba542732c3.md) | 154 | `result-track:f3799a4dbcf1d6ba542732c39d32533fbd9c3ce7328698e348d9e83fa61108d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
