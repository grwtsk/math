# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2aec1e6c9102e43391d36c9a38e33ac02dfe696c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2aec1e6c9102e43391d36c9a38e33ac02dfe696c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean/declarations/pi--78a77909abd3985e53080e75.md) | 36 | `declaration-track:78a77909abd3985e53080e752ca5725eb01187fb06d0b38e281a0e8dfd0622b4` |
| 2 | `lemma` | [mem_pi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean/declarations/mem-pi--a452a0166ea97ba778c68778.md) | 41 | `result-track:a452a0166ea97ba778c68778fa8155b843bea75c9cafb39243eee4b61de15579` |
| 3 | `lemma` | [pi_toSubmodule](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean/declarations/pi-tosubmodule--8adaa1aa535076f0d3ea6a64.md) | 44 | `result-track:8adaa1aa535076f0d3ea6a64938e8980812629f446e0584ddcb4bc08e1540d05` |
| 4 | `lemma` | [pi_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean/declarations/pi-top--61d87c341d32918af4e575f8.md) | 47 | `result-track:61d87c341d32918af4e575f85ec1ec3966cd26c6e3269512a84306dedaa696cb` |
| 5 | `lemma` | [pi_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant5e7475073919ea4e00111fcc157f7af90e3db992f6e62a28b5df724682006252.lean/declarations/pi-mono--3c314b6eb7c8feb87c072469.md) | 50 | `result-track:3c314b6eb7c8feb87c072469e7af46705d68a115426517feb1d812c3b7853037` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
