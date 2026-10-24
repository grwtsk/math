# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fb97a5525dc39bb6474d40d4ee45730d206847e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fb97a5525dc39bb6474d40d4ee45730d206847e`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SemiconjBy.map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean/declarations/semiconjby-map--e70c02dc277794d3ff2fe1b7.md) | 21 | `result-track:e70c02dc277794d3ff2fe1b799a89a099a9de384ec338d6260c6bd331680a091` |
| 2 | `theorem` | [Commute.map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean/declarations/commute-map--1b83c8ea9546084208a7c89a.md) | 25 | `result-track:1b83c8ea9546084208a7c89a0e1a858c449263c69258af1cda90262cf3ff240d` |
| 3 | `theorem` | [SemiconjBy.of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean/declarations/semiconjby-of-map--07fff19bf6fc1d34072985ff.md) | 29 | `result-track:07fff19bf6fc1d34072985fff87467b585d45b10312f279aac9da8f2b2d41732` |
| 4 | `theorem` | [Commute.of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2.lean/declarations/commute-of-map--2cd2c8dafce610544cac39b0.md) | 34 | `result-track:2cd2c8dafce610544cac39b0a8fa4a04249ee39b95b22304c6a9cf7fd5fe36ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
