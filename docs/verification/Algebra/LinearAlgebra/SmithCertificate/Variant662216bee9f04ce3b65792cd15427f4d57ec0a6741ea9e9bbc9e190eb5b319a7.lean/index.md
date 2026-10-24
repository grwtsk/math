# Verification target: GRWTSK.Algebra.LinearAlgebra.SmithCertificate.Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f18cc57a5b11e2099972e00e125eff47eb44e88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f18cc57a5b11e2099972e00e125eff47eb44e88`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.DegreeHomology` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SmithTorsionCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean/declarations/smithtorsioncoordinates--f584911d5addae847ef96ae9.md) | 20 | `declaration-track:f584911d5addae847ef96ae92f15f0174aeee24426436e8b60a060a824c13049` |
| 2 | `structure` | [DegreeSmithCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean/declarations/degreesmithcertificate--3769c0d21333c52486506f1e.md) | 25 | `declaration-track:3769c0d21333c52486506f1e9ba3cd44287161a64b5a8e6b6c4327ebe5f2ed36` |
| 3 | `theorem` | [torsionOrder_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean/declarations/torsionorder-ne-zero--8ebf2d859627b0b40c2d0c7c.md) | 68 | `result-track:8ebf2d859627b0b40c2d0c7c8a247eb8b701d17ad36965edc2bdf52b9717890f` |
| 4 | `instance` | [torsionFintype](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant662216bee9f04ce3b65792cd15427f4d57ec0a6741ea9e9bbc9e190eb5b319a7.lean/declarations/torsionfintype--790b9f67d52bb51cb104d4ca.md) | 75 | `declaration-track:790b9f67d52bb51cb104d4ca134ce80bf9f34f6e255b5d0501312d05b49ff5ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
