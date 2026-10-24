# Verification target: GRWTSK.Algebra.Field.Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d6103c077997633ee43adb4c1e5f40ea9c63f5c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d6103c077997633ee43adb4c1e5f40ea9c63f5c`.

Source path: `GRWTSK/Algebra/Field/Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.KrullDimension.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ringKrullDim_eq_zero_of_field](../../../../mathematics/Algebra/FieldTheory/Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229.lean/declarations/ringkrulldim-eq-zero-of-field--2eb47911f670cc49083c8ee9.md) | 25 | `result-track:2eb47911f670cc49083c8ee94205e111a7e6a760d3509479f7a6e4a1edde8f05` |
| 2 | `theorem` | [ringKrullDim_eq_zero_of_isField](../../../../mathematics/Algebra/FieldTheory/Variant3b0f2da06a18f8679e5510942ef9424b3788dba2857acba672c77265697e0229.lean/declarations/ringkrulldim-eq-zero-of-isfield--4687cad41b26b34528dcdd51.md) | 28 | `result-track:4687cad41b26b34528dcdd5119e609c8fbcceb607c0e7a56b2959c52d0d3528d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
