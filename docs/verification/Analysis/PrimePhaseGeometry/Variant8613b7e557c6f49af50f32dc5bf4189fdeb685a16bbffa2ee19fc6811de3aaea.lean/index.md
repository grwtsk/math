# Verification target: GRWTSK.Analysis.PrimePhaseGeometry.Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbd89ec425e1ffc22088cda066df48734957e973",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/index.md) · [Full source](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbd89ec425e1ffc22088cda066df48734957e973`.

Source path: `GRWTSK/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeLog](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/primelog--136c0dcb56d2eed043d03c05.md) | 22 | `declaration-track:136c0dcb56d2eed043d03c0587313b6d727772c25e87f1aad9407b097de7c20a` |
| 2 | `def` | [phase](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/phase--1df2003e3de30cca067e57d7.md) | 29 | `declaration-track:1df2003e3de30cca067e57d701da7c5a04432855242206747b97c52fb34c538c` |
| 3 | `def` | [phaseDistance](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/phasedistance--2d6ab360b211a5d67f4e352f.md) | 36 | `declaration-track:2d6ab360b211a5d67f4e352fed7bfc4e496d3b4439e3b4fab59edd2e829b2c94` |
| 4 | `def` | [logLength](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/loglength--3aab4b2769c54ffbcaff950a.md) | 42 | `declaration-track:3aab4b2769c54ffbcaff950ab41ed56c4b0fd09648c520b1f89d2e7f93666edd` |
| 5 | `def` | [matveevExponent](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/matveevexponent--ecd902b526dcade865b1cada.md) | 48 | `declaration-track:ecd902b526dcade865b1cadaa92a066550d87f2a1684615a09a3e62b68dfaa6f` |
| 6 | `def` | [certificateConstant](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/certificateconstant--0ef301b6cb9e32def964c820.md) | 55 | `declaration-track:0ef301b6cb9e32def964c82074d4879068a2d8358d43fd784a306727c110ac6e` |
| 7 | `def` | [PhaseCertificate](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/phasecertificate--c0bc39de365af0699dc337ff.md) | 59 | `declaration-track:c0bc39de365af0699dc337ff2cd2baf211ad36d2b44a232548d99002653bae49` |
| 8 | `theorem` | [logLength_positive](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/loglength-positive--38ff2183ddccf0016d74ac58.md) | 63 | `result-track:38ff2183ddccf0016d74ac5805fbb6a67b3bb9aadc954a7b7c941ff939acf7f3` |
| 9 | `theorem` | [certificateConstant_positive](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/certificateconstant-positive--1b3d9d3474cd9588acf18c30.md) | 69 | `result-track:1b3d9d3474cd9588acf18c30d1e38557f8e39e9d94e90337296dd351121d0600` |
| 10 | `theorem` | [phase_distance_sq](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/phase-distance-sq--7ba6d27469cab406d62ec71c.md) | 73 | `result-track:7ba6d27469cab406d62ec71caf3ee55b78833abe55d8e52e42b3b3b872773c3c` |
| 11 | `theorem` | [unit_phase_difference](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/unit-phase-difference--134d78803d28b790a9e74366.md) | 79 | `result-track:134d78803d28b790a9e74366efff000afc6b9e1b0736e68a99dc9464c8673674` |
| 12 | `theorem` | [unit_phase_difference_le](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/unit-phase-difference-le--bbce75e387b4ee469834e516.md) | 91 | `result-track:bbce75e387b4ee469834e51668a94791f47f103ff4de11158c0454638c855b86` |
| 13 | `theorem` | [phase_distance_translation](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/phase-distance-translation--5ab1f9f49898badf61b87cb4.md) | 97 | `result-track:5ab1f9f49898badf61b87cb4acd294e22565d9113510f2963a14ff52526808b1` |
| 14 | `theorem` | [coordinate_inverse](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/coordinate-inverse--b44f1b6e663cab31f47fabdd.md) | 108 | `result-track:b44f1b6e663cab31f47fabdde2f3d98437e3afb10e6f6186604fccb711bf6277` |
| 15 | `theorem` | [inverse_cost_at_polynomial_cutoff](../../../../mathematics/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/declarations/inverse-cost-at-polynomial-cutoff--8e4680360705632e71091538.md) | 120 | `result-track:8e4680360705632e710915385ef21a72211d5d908ba0562f90099de27a1c6ba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
