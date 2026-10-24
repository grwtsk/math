# Verification target: GRWTSK.Algebra.GaloisRound.Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a9e9de6cc2b6b32bf831336be7cd80e58fca65d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a9e9de6cc2b6b32bf831336be7cd80e58fca65d`.

Source path: `GRWTSK/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Round` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitCode](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/declarations/bitcode--0f57631d1882a549585e6e36.md) | 39 | `declaration-track:0f57631d1882a549585e6e36a9097138857d9dba34e63ebef680cfaab312fdc9` |
| 2 | `theorem` | [bitCode_add](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/declarations/bitcode-add--db26b471db4cb3b405f79cd8.md) | 48 | `result-track:db26b471db4cb3b405f79cd892be939b027cb96199e5ea97c87d69537a21f3aa` |
| 3 | `def` | [transportToMatrix](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/declarations/transporttomatrix--5728e20899fb144a074dda6a.md) | 70 | `declaration-track:5728e20899fb144a074dda6a2cb794cf63ef4079a850f00e6c281723e57ef585` |
| 4 | `theorem` | [flatten_transportToMatrix](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/declarations/flatten-transporttomatrix--954233b878c120d8c9a9f60a.md) | 80 | `result-track:954233b878c120d8c9a9f60ae6f7b0f7d298d004fb8b940edd69b3306d6caeea` |
| 5 | `def` | [encodeFieldRound](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/declarations/encodefieldround--d2b7ca526ffc3e588b250250.md) | 91 | `declaration-track:d2b7ca526ffc3e588b2502501092525fc6f34d806bacab9d3f493771709221dc` |
| 6 | `theorem` | [encodeFieldRound_bijective](../../../../mathematics/Algebra/GaloisRound/Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5.lean/declarations/encodefieldround-bijective--c38b160fc66e1575a7eeb4ea.md) | 101 | `result-track:c38b160fc66e1575a7eeb4eaaea76f1c157405d723fef6759bc87e752bb31c68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
