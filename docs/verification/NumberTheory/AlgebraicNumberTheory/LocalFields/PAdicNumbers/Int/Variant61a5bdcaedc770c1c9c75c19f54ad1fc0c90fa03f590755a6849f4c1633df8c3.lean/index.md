# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Int.Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "632fcd92f43996b5a2c94035537aae491da09fec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `632fcd92f43996b5a2c94035537aae491da09fec`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [harmonic_pos](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean/declarations/harmonic-pos--909043c4565f6cf9f0fed1aa.md) | 20 | `result-track:909043c4565f6cf9f0fed1aa291c2dd006c7529b5aa026f86439fa0b630ebdd6` |
| 2 | `theorem` | [padicValRat_two_harmonic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean/declarations/padicvalrat-two-harmonic--0f6dcddb1d341abaf1f197b1.md) | 27 | `result-track:0f6dcddb1d341abaf1f197b1b2c0eccb98afc78c8805222a850996e74c199984` |
| 3 | `lemma` | [padicNorm_two_harmonic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean/declarations/padicnorm-two-harmonic--b1e32d2727444490555724f1.md) | 43 | `result-track:b1e32d2727444490555724f1a93c36185d484dc95ee9a02ec339d7981a3f0401` |
| 4 | `theorem` | [harmonic_not_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Int/Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3.lean/declarations/harmonic-not-int--661532fbdae9e7c603e6c2ce.md) | 49 | `result-track:661532fbdae9e7c603e6c2ce4a3d8ccee65b1c7a61e634e9498ee53c4b6019b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
