# Verification target: GRWTSK.Algebra.GroupTheory.IsFreeGroup.Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b97535e3831870dc0b33cd721fb88de6456633d5",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b97535e3831870dc0b33cd721fb88de6456633d5`.

Source path: `GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean.json)

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
| 1 | `structure` | [FreeAddGroupBasis](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/freeaddgroupbasis--c01c1fce592b2021234f1f8b.md) | 55 | `declaration-track:c01c1fce592b2021234f1f8b602fc8f9d6c204f308ef7296036a2b6004eecdd0` |
| 2 | `structure` | [FreeGroupBasis](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/freegroupbasis--8004efb280e2d411b174633c.md) | 68 | `declaration-track:8004efb280e2d411b174633c2769f5b802ed46af2433b72169f7e72226868be9` |
| 3 | `class` | [IsFreeAddGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/isfreeaddgroup--7ab563119b34c004e8d332d8.md) | 77 | `declaration-track:7ab563119b34c004e8d332d8736a90d6c8adbeeff1b879838e7f98986c0864d7` |
| 4 | `class` | [IsFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/isfreegroup--33f8a353227aec06a3ec03c3.md) | 84 | `declaration-track:33f8a353227aec06a3ec03c32069e5b4891f8a99fdb5385d91af404653a9b199` |
| 5 | `instance` | [instFunLike](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/instfunlike--e5f687f39a78600daaba92ad.md) | 96 | `declaration-track:e5f687f39a78600daaba92ade8b3d6cf33fd797f9a6b92f6424a4d35b19570e0` |
| 6 | `lemma` | [repr_apply_coe](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/repr-apply-coe--6edc28f3f1d3b975ca09d399.md) | 106 | `result-track:6edc28f3f1d3b975ca09d399cf42e37e203cc3428d12ba0d7737bd2cb022ef30` |
| 7 | `def` | [ofFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/offreegroup--8d4e6c31e44efb422cb81045.md) | 112 | `declaration-track:8d4e6c31e44efb422cb810453b5c579b17f8ca6e223829b4f2cdbeb501f8f378` |
| 8 | `lemma` | [ofFreeGroup_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/offreegroup-apply--4e5f006ffbc1e14d00a2930e.md) | 115 | `result-track:4e5f006ffbc1e14d00a2930eb8e9695accc9e2e1d31422dc177a0d7ad79f6fd0` |
| 9 | `def` | [reindex](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/reindex--b64e105656e9678630cba85b.md) | 121 | `declaration-track:b64e105656e9678630cba85be7e77b68dd666732b57c61bf45e646920d4b3263` |
| 10 | `lemma` | [reindex_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/reindex-apply--012ff73a84012f0177054a54.md) | 125 | `result-track:012ff73a84012f0177054a54a5dd9da6b995fca3cf71739e4e3dbc9d79562d42` |
| 11 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/map--382705c74236d9fa15872220.md) | 130 | `declaration-track:382705c74236d9fa15872220d17afaec0cbee952ab701da899ed5c73b7fb1adc` |
| 12 | `lemma` | [map_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/map-apply--27e8bb483e258de1e0fbb11f.md) | 134 | `result-track:27e8bb483e258de1e0fbb11f6f06055e3cd6b6fc51d9cc282d249db78904ca7b` |
| 13 | `lemma` | [injective](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/injective--7eb17111d51f9bf9d71a9587.md) | 138 | `result-track:7eb17111d51f9bf9d71a9587d372496c5731efc8d1d799d95aa058e968662be3` |
| 14 | `lemma` | [isFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/isfreegroup--b080512a74a943e95e742ba4.md) | 144 | `result-track:b080512a74a943e95e742ba4df01822c47a8c066e97d17caf601f4a009b44d9b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/instance--cfb5f80e4f283fddae6212fb.md) | 148 | `declaration-track:cfb5f80e4f283fddae6212fbdf45130e08e4f87cb21c9f3a6e1e9bb9350581b0` |
| 16 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/lift--eb5419b62535be1ed4075834.md) | 159 | `declaration-track:eb5419b62535be1ed4075834cdb9bd70de4bc85f39dd2583ad2ae97ac00113b6` |
| 17 | `lemma` | [ext_hom](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/ext-hom--8e2ee9b99f70d6267b17d728.md) | 173 | `result-track:8e2ee9b99f70d6267b17d72882b47d06021bf6815195f7aa0968222ca69641e0` |
| 18 | `def` | [ofLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/oflift--539c3303b64c8c4f4c49ecdb.md) | 183 | `declaration-track:539c3303b64c8c4f4c49ecdbf478addf1689dab2397e521befd2b39caff40a74` |
| 19 | `def` | [ofUniqueLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/ofuniquelift--f76ec8ced4b3a22b7aae2a96.md) | 206 | `declaration-track:f76ec8ced4b3a22b7aae2a964680bbde1126eee722bbc4b31ca93fdf403f9ddb` |
| 20 | `def` | [Generators](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/generators--824de9d559ebd25886c75f53.md) | 226 | `declaration-track:824de9d559ebd25886c75f53d2bfb27a0c29768593cecce788bc3d227977f5fb` |
| 21 | `def` | [basis](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/basis--5f76d2f2d246e735866865ef.md) | 236 | `declaration-track:5f76d2f2d246e735866865efaf8f1129362a79e2483f5bd91771070036409d90` |
| 22 | `def` | [toFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/tofreegroup--8360c962b9636cd0aba23e77.md) | 241 | `declaration-track:8360c962b9636cd0aba23e77e8b6a1f64eb2d66a126760271e0f47a2ce45d1d5` |
| 23 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/of--96ee9d61f22ef988861aa74b.md) | 248 | `declaration-track:96ee9d61f22ef988861aa74beca4cf9faafefb2a971bb93b8330e0358f106877` |
| 24 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/lift--53977712be9596968006ca2b.md) | 258 | `declaration-track:53977712be9596968006ca2b4a149bb9b536a8665dfa7057d65464c489b3e3b4` |
| 25 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/lift-of--20ed1a475b3db8f4c77c8fec.md) | 262 | `result-track:20ed1a475b3db8f4c77c8fecd59eb370e798ee4002c6e677b706cde40f3b71c7` |
| 26 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/lift-symm-apply--e23e643804f02595799e65a6.md) | 266 | `result-track:e23e643804f02595799e65a67851057ed1837bc534bc1ce460df7f95f31b3f42` |
| 27 | `theorem` | [ext_hom](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/ext-hom--3ac8052ace1a6bc074a4f9fc.md) | 271 | `result-track:3ac8052ace1a6bc074a4f9fc121ff900916b61135b866e6b71bb3291dd7747d0` |
| 28 | `theorem` | [unique_lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/unique-lift--7a824a446f9e67fdab9dfa7c.md) | 285 | `result-track:7a824a446f9e67fdab9dfa7c32e7c75ba796aff8cbff4d33e67cbf34a1d396fb` |
| 29 | `lemma` | [ofLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/oflift--e23dd19ecae4dd7112e08357.md) | 295 | `result-track:e23dd19ecae4dd7112e08357aaf036b597c70a83982a8b31b2954421ab023e36` |
| 30 | `lemma` | [ofUniqueLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/ofuniquelift--a646650fad580cf324b12a2b.md) | 307 | `result-track:a646650fad580cf324b12a2b43ac86eadcf6be43998df8b8d642cc0f113cfe38` |
| 31 | `lemma` | [ofMulEquiv](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/declarations/ofmulequiv--ae870e2a037c15c19b531e57.md) | 313 | `result-track:ae870e2a037c15c19b531e57840909003a4367466747965fd239ab5cbdee3189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
