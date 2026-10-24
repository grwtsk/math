# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb974db1ab9eed9075f6cde5e3c76926e3a25138",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb974db1ab9eed9075f6cde5e3c76926e3a25138`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Center` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/center--36553a88ab0d2bed48449f97.md) | 26 | `declaration-track:36553a88ab0d2bed48449f97fd3cbc942b4c3d3dc881dade229dd8135d9e1be1` |
| 2 | `theorem` | [coe_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/coe-center--6a63ff7d8529fdce0bcf3113.md) | 32 | `result-track:6a63ff7d8529fdce0bcf3113d5976fa2311370f368960bb8a9748a15ee68769c` |
| 3 | `theorem` | [center_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/center-tosubmonoid--0028ba05eb8df4f94b5c6018.md) | 36 | `result-track:0028ba05eb8df4f94b5c6018ab9b18fe593f66915089c6f0a706c46552ec8a2d` |
| 4 | `instance` | [center.isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/center-ismulcommutative--342a6b6c89f421057cabd1ba.md) | 39 | `declaration-track:342a6b6c89f421057cabd1ba807c5d1ef351f22611e91a99d81986c7d76eb925` |
| 5 | `def` | [centerCongr](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/centercongr--0c01479c50ec1bdac7df8c57.md) | 47 | `declaration-track:0c01479c50ec1bdac7df8c576d51188ff5ae80c1afbf149df8954eaa80361902` |
| 6 | `def` | [centerToMulOpposite](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/centertomulopposite--cac8556ebd94136d06f6eb50.md) | 52 | `declaration-track:cac8556ebd94136d06f6eb50eb762bb7c5cc70cf67f6866740444f5e9f4b57dd` |
| 7 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/mem-center-iff--86b20cc01a2990eecfc0c56b.md) | 57 | `result-track:86b20cc01a2990eecfc0c56b146caae928621ead723c6208d72dab6d33ea1b53` |
| 8 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/decidablememcenter--5234af4da26e377dc19917a6.md) | 61 | `declaration-track:5234af4da26e377dc19917a6b06ea498fc2466869ab178122215c33ddd1964e9` |
| 9 | `instance` | [centerCharacteristic](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/centercharacteristic--e2b43ed3c0e5f649e18776a2.md) | 65 | `declaration-track:e2b43ed3c0e5f649e18776a205d6aa708e4db2d8d1b72537fbb85eaf63bf4eef` |
| 10 | `theorem` | [_root_.CommGroup.center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/root-commgroup-center-eq-top--764a3fbd48f902e0b64014ef.md) | 72 | `result-track:764a3fbd48f902e0b64014ef90898b98dd888ce87cfff8a1e8d8d130c7f9d7c8` |
| 11 | `def` | [_root_.Group.commGroupOfCenterEqTop](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/root-group-commgroupofcentereqtop--a9063a0a5c9ea97f2a2dc963.md) | 80 | `declaration-track:a9063a0a5c9ea97f2a2dc9632e269709b2eac8b0c3b251b74e4796d05f2b0be6` |
| 12 | `theorem` | [center_le_normalizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/center-le-normalizer--e26b146172ca289a0d58e5d7.md) | 94 | `result-track:e26b146172ca289a0d58e5d742a38765f8c37da5000bf4b82a366a18717bfd42` |
| 13 | `theorem` | [eq_of_left_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/eq-of-left-mem-center--c1d9fdde324605966d895cec.md) | 105 | `result-track:c1d9fdde324605966d895cec7db61a179622d670f12dd801857409e9607c8429` |
| 14 | `theorem` | [eq_of_right_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/eq-of-right-mem-center--f855807c912873127fa855fb.md) | 108 | `result-track:f855807c912873127fa855fb3733330a02c3033a3489acc71fb534720b94696a` |
| 15 | `theorem` | [mk_bijOn](../../../../../mathematics/Algebra/GroupTheory/Center/Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.lean/declarations/mk-bijon--149ee5a1c7962c772189c0f8.md) | 115 | `result-track:149ee5a1c7962c772189c0f83ead40bb4bb9bc8386e4b0d927b545b0606088e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
