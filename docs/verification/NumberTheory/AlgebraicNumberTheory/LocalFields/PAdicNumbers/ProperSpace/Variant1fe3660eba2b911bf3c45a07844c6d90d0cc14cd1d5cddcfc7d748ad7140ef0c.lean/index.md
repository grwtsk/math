# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.ProperSpace.Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1f72a1b4ded7ee5f43f586f7f94886acdd6bd8e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1f72a1b4ded7ee5f43f586f7f94886acdd6bd8e`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.ProperSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.RingHoms` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [totallyBounded_univ](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean/declarations/totallybounded-univ--eedff20431e6f64480b4f351.md) | 41 | `result-track:eedff20431e6f64480b4f3512255f8b3df955683116a86be0bdde396de642cac` |
| 2 | `instance` | [compactSpace](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean/declarations/compactspace--3b89f77e8318d846e6cdf948.md) | 51 | `declaration-track:3b89f77e8318d846e6cdf948d19c483fc57e219501d91f7a57dc2dcfb7c9c21e` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variant1fe3660eba2b911bf3c45a07844c6d90d0cc14cd1d5cddcfc7d748ad7140ef0c.lean/declarations/instance--b237759c3e55d031fb3eefc9.md) | 60 | `declaration-track:b237759c3e55d031fb3eefc98547747db1008b358c360b568f9c69fb32ad3f8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
