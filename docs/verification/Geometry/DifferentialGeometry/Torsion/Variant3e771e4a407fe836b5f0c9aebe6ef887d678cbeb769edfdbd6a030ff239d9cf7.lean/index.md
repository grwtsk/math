# Verification target: GRWTSK.Geometry.DifferentialGeometry.Torsion.Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cc833a78f38a9abc2e3899d27866eb55054909a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cc833a78f38a9abc2e3899d27866eb55054909a`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean.json)

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
| 1 | `def` | [torsionAux](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsionaux--bcbd3c6cf4b9eb5a9bb116c7.md) | 51 | `declaration-track:bcbd3c6cf4b9eb5a9bb116c7dc6a29f5f9d85cd28170f071bc034c8ad02bd59f` |
| 2 | `theorem` | [torsionAux_tensorial₁](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsionaux-tensorial--192b53db46f5cece56a33bfb.md) | 60 | `result-track:192b53db46f5cece56a33bfb31d2c11973ca65c99f6424a2cb2f0f251a04449d` |
| 3 | `theorem` | [torsionAux_tensorial₂](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsionaux-tensorial--986e752e9dc0374b231b9264.md) | 70 | `result-track:986e752e9dc0374b231b926473479aa213a7e06034d4687fe0087c1881daf398` |
| 4 | `def` | [torsion](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion--047a01efa3acb32148497f3c.md) | 83 | `declaration-track:047a01efa3acb32148497f3c16a9c4b8db22201e400040a31e28e6727d681326` |
| 5 | `theorem` | [torsion_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-apply--fd1ada5f34a587b7f2f50023.md) | 89 | `result-track:fd1ada5f34a587b7f2f500231664601648895869ef229020637efc72435981d2` |
| 6 | `theorem` | [torsion_apply_eq_extend](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-apply-eq-extend--73c3a12f9a863faffe1410be.md) | 95 | `result-track:73c3a12f9a863faffe1410bee78bb69db3fafea1cf52260f1d788774344f16d5` |
| 7 | `lemma` | [torsion_self](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-self--caebcdf245fe1db04767246f.md) | 104 | `result-track:caebcdf245fe1db04767246fd908cc7c263e790ad63e57683d3273ce3e06a790` |
| 8 | `lemma` | [torsion_antisymm](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-antisymm--b08c476f135af0ea9a0a76e6.md) | 109 | `result-track:b08c476f135af0ea9a0a76e63ece416c13630c066d95dd924788a025fef07396` |
| 9 | `def` | [torsion](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion--709a0b89e979ecca2c813a2c.md) | 128 | `declaration-track:709a0b89e979ecca2c813a2c13bff7e302d5c94ce73c9b5e9f52386ac885ae77` |
| 10 | `lemma` | [torsion_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-apply--35f35f26b8d8e60e55fb4d17.md) | 131 | `result-track:35f35f26b8d8e60e55fb4d176bc9c79ba83b89c757ac964b7bbc257ca0c7c660` |
| 11 | `lemma` | [torsion_apply_eq_extend](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-apply-eq-extend--325a5cefd1adac6fde60c25b.md) | 137 | `result-track:325a5cefd1adac6fde60c25b9f3add8bbaa66dd0daf7918d97313acc50cf482f` |
| 12 | `lemma` | [torsion_self](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-self--190d911f37a93f899f90c093.md) | 145 | `result-track:190d911f37a93f899f90c0931f3cf79dada0f978ce40390e88e4676a23126cda` |
| 13 | `lemma` | [torsion_antisymm](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-antisymm--59b884342eba25d9fd1e4687.md) | 148 | `result-track:59b884342eba25d9fd1e46874afeb757666c76a7c44e9fb1265e9e655fab71da` |
| 14 | `lemma` | [torsion_eq_zero_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant3e771e4a407fe836b5f0c9aebe6ef887d678cbeb769edfdbd6a030ff239d9cf7.lean/declarations/torsion-eq-zero-iff--df97919257667cec6f023651.md) | 151 | `result-track:df97919257667cec6f0236515a426ebbcffa205744ad726b346abbec04662373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
