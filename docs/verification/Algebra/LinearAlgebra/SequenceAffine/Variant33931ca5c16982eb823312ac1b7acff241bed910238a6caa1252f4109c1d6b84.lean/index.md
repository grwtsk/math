# Verification target: GRWTSK.Algebra.LinearAlgebra.SequenceAffine.Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbac838b2a62f212fe422c334303d2f0e4d514a9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbac838b2a62f212fe422c334303d2f0e4d514a9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineTransition](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/affinetransition--090b9a96eb31c0b57f0c9f13.md) | 20 | `declaration-track:090b9a96eb31c0b57f0c9f136d02def26ed628d29b265f66e302f29d63152815` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/instance--ad0e6b8b68f99be2caabebcd.md) | 31 | `declaration-track:ad0e6b8b68f99be2caabebcd5946164e65fca7b29c1ff5ba492aac4304a26ef9` |
| 3 | `theorem` | [apply_def](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/apply-def--99955af7d97fb7d5b9f276ca.md) | 35 | `result-track:99955af7d97fb7d5b9f276ca7bf863176544700385932b6d23720b91075836c6` |
| 4 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/id--6d7c7ece61c1c1773d8e5562.md) | 39 | `declaration-track:6d7c7ece61c1c1773d8e55622e0c4212dd4ac1f6d8eed06f7eec58f55cb3fab9` |
| 5 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/comp--d33c161d80a9097135479a14.md) | 44 | `declaration-track:d33c161d80a9097135479a14ba350f5b85b6022ace7231a04281441c236d2156` |
| 6 | `theorem` | [comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/comp-apply--a5e0bb1bc5d009eea2c48ffc.md) | 51 | `result-track:a5e0bb1bc5d009eea2c48ffcf2fc24e6ead73b88121b615b701fd5046006427a` |
| 7 | `theorem` | [id_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/id-apply--ca2d37de54f63d9bf71edb22.md) | 58 | `result-track:ca2d37de54f63d9bf71edb22ffffc5fbac3dc70ac58d4bd273e6c6e89d17cbde` |
| 8 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/id-comp--5ea0aea342338f08f74a12a3.md) | 63 | `result-track:5ea0aea342338f08f74a12a306ddacbf82378b72668a1babc2f8209d2d871941` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/comp-id--31c49b939ada1999ffa31e67.md) | 71 | `result-track:31c49b939ada1999ffa31e67de7c2a1d71aebca559f721e5686740cd3ed75d7f` |
| 10 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/comp-assoc--7696b2c5f8d497d8b88dc391.md) | 79 | `result-track:7696b2c5f8d497d8b88dc3914a2bec8e36265031bf05a301364efda65e0943f2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/instance--68499958c6b0bb868d79b661.md) | 88 | `declaration-track:68499958c6b0bb868d79b661367b09eabcd797a9f087f7229fba460bc6a8f82b` |
| 12 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/one-apply--e2a70a936c68d93dff157752.md) | 96 | `result-track:e2a70a936c68d93dff157752afea55638d9ab0676e94eae1d3b9f341dc06b04c` |
| 13 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/mul-apply--300caffdfeab2f3cb8040720.md) | 102 | `result-track:300caffdfeab2f3cb80407204a555ca6dacf3a825c853b4e01fdba5135344637` |
| 14 | `def` | [replay](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/replay--1634e1c4800e26d863b681fe.md) | 110 | `declaration-track:1634e1c4800e26d863b681fe3afbf72691fb94339a2b15a6f56b653de16bc037` |
| 15 | `def` | [segment](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/segment--da9aabfbb0b2283dc44d1840.md) | 115 | `declaration-track:da9aabfbb0b2283dc44d184081db2f3781103263d9a7c4317f185b3ef7478225` |
| 16 | `theorem` | [segment_nil](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/segment-nil--e661e9175ce7ddb908794db8.md) | 120 | `result-track:e661e9175ce7ddb908794db80db2f331f45962a3368328895d28f0c5a75a52b0` |
| 17 | `theorem` | [segment_cons](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/segment-cons--6dae951403d816e51c009534.md) | 124 | `result-track:6dae951403d816e51c009534df27614b4da8176cea9b8ae3251c3f3adf046757` |
| 18 | `theorem` | [segment_apply](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/segment-apply--e03e07e2b4d42c8ec9e207bd.md) | 132 | `result-track:e03e07e2b4d42c8ec9e207bde6c7ec4ad18c65136d7fc590acb36ec257666ce7` |
| 19 | `theorem` | [segment_append](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/segment-append--458557e6180f928283151684.md) | 145 | `result-track:458557e6180f928283151684cb54dc3eafe199bea8c7fc94ee003f1c3c314f44` |
| 20 | `structure` | [ExactSequenceTransitionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/exactsequencetransitioncertificate--c3f51deaa49a94d97cb21577.md) | 156 | `declaration-track:c3f51deaa49a94d97cb215779e6f888ea16191d7db68424d0caa13705f930cc4` |
| 21 | `structure` | [ApproxSequenceTransitionCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/declarations/approxsequencetransitioncertificate--1d85c16e324c7acda87adf75.md) | 172 | `declaration-track:1d85c16e324c7acda87adf75ef5db878f614be16c40af26b27d5c33aa8696ddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
