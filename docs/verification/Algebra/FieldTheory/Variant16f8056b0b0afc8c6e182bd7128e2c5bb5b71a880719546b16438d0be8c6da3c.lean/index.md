# Verification target: GRWTSK.Algebra.Field.Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bef6dc7319d019e5b006b010881f107bf451ade0",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bef6dc7319d019e5b006b010881f107bf451ade0`.

Source path: `GRWTSK/Algebra/Field/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Equiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isField_center](../../../../mathematics/Algebra/FieldTheory/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean/declarations/isfield-center--e99efff99c3beddc2386d334.md) | 31 | `result-track:e99efff99c3beddc2386d334726e347024d8c9131e1345feb2f24a5f333c3be8` |
| 2 | `lemma` | [isSimpleRing_iff_isField](../../../../mathematics/Algebra/FieldTheory/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean/declarations/issimplering-iff-isfield--0187ae761965d5dc0fa49e6a.md) | 59 | `result-track:0187ae761965d5dc0fa49e6a19f9598e2fb02fd7712cd29477873fd015f4ceed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
