# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ResidueField.Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/residuefield--28e7205a450e567ab6fbb6e2.md) | 41 | `declaration-track:28e7205a450e567ab6fbb6e2c5356a53bd787649ce178c89f30d3a516509c5c1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/instance--6851e2c0998106cd2f169c72.md) | 44 | `declaration-track:6851e2c0998106cd2f169c7299da85a0b9ffd036e99c8204215329da96e7e58a` |
| 3 | `def` | [evaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation--c2b45ab9e3ddd6c28223b665.md) | 54 | `declaration-track:c2b45ab9e3ddd6c28223b66519a6009a831fb35d4ef80b760c9573314425d185` |
| 4 | `def` | [Γevaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation--67005fef73ea34c5313bd650.md) | 60 | `declaration-track:67005fef73ea34c5313bd650404813e117958bd1ab4c40b47567dab61804dea1` |
| 5 | `lemma` | [evaluation_eq_zero_iff_notMem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen--9d0d0799645e4996867f79ee.md) | 64 | `result-track:9d0d0799645e4996867f79ee72098c65e8729821e3e1c73f745609149664ba95` |
| 6 | `lemma` | [evaluation_ne_zero_iff_mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-ne-zero-iff-mem-basicopen--dd060712f4bb651bb69712cf.md) | 72 | `result-track:dd060712f4bb651bb69712cf84685949c81fec2171335ab6f5b058d4c172260a` |
| 7 | `lemma` | [basicOpen_eq_bot_iff_forall_evaluation_eq_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/basicopen-eq-bot-iff-forall-evaluation-eq-zero--b5ec78507480839781ea9f10.md) | 76 | `result-track:b5ec78507480839781ea9f106f94d38c85d9f0f511479b8a8e33f31b3a3d9289` |
| 8 | `lemma` | [Γevaluation_eq_zero_iff_notMem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen--7ed77b72ddc7080c71732e4c.md) | 83 | `result-track:7ed77b72ddc7080c71732e4cfac4e3354a83346d85041998cdd36e8bf5583ce9` |
| 9 | `lemma` | [Γevaluation_ne_zero_iff_mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-ne-zero-iff-mem-basicopen--09f5a021faf752eac99aeb74.md) | 90 | `result-track:09f5a021faf752eac99aeb749d7d1ec18ca19b36609a5063cd400d3a725d9c2e` |
| 10 | `def` | [residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/residuefieldmap--0fefb28284f945133a12e9f4.md) | 98 | `declaration-track:0fefb28284f945133a12e9f4c025c2a8cd1dff19df3306cf70e2fb8a1e1ea660` |
| 11 | `lemma` | [residue_comp_residueFieldMap_eq_stalkMap_comp_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/residue-comp-residuefieldmap-eq-stalkmap-comp-residue--d15cc0830bd52328abbdd7ed.md) | 101 | `result-track:d15cc0830bd52328abbdd7ede5e6b12993c374db2bdea1f0b8da2aa47d380fd0` |
| 12 | `lemma` | [residueFieldMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/residuefieldmap-id--625a590629777403b5563121.md) | 109 | `result-track:625a590629777403b55631210cfd94d613f3fedf375715bd661e1e8861249c7e` |
| 13 | `lemma` | [residueFieldMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/residuefieldmap-comp--e3a59683726838ce4975a40d.md) | 116 | `result-track:e3a59683726838ce4975a40d80221f71ea10b2f7c2fd4623d3f2cc697af0c9ce` |
| 14 | `lemma` | [evaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-naturality--6e175222673225e2c1f24931.md) | 125 | `result-track:6e175222673225e2c1f24931ddb2005856ce61f353109108c5d89c8ab5d74f8b` |
| 15 | `lemma` | [evaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-naturality-apply--debf4a6cc4d20bdc88caa396.md) | 137 | `result-track:debf4a6cc4d20bdc88caa39677e0972077eea78440b828c180bbd2e237f1b940` |
| 16 | `lemma` | [Γevaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-naturality--8852f512a169bda2f25a1691.md) | 145 | `result-track:8852f512a169bda2f25a1691fe05f9d94010b40cd267281a068d396a669983a4` |
| 17 | `lemma` | [Γevaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/declarations/evaluation-naturality-apply--0cb672a9972d5836d72c8433.md) | 150 | `result-track:0cb672a9972d5836d72c84338630608475aa3bcc575adb5f5112c8fe6768a0f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
