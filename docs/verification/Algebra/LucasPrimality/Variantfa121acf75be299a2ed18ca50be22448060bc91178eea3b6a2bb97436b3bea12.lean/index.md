# Verification target: GRWTSK.Algebra.LucasPrimality.Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7023e086fe3ca2f1684166b05688152c26ebda0d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean/index.md) · [Full source](../../../../mathematics/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7023e086fe3ca2f1684166b05688152c26ebda0d`.

Source path: `GRWTSK/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lucas_primality](../../../../mathematics/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean/declarations/lucas-primality--5b7397aabd6d9772cb241d45.md) | 43 | `result-track:5b7397aabd6d9772cb241d45d33c70ffb2d1df8ad4d8d17dc0a720fd7d486951` |
| 2 | `theorem` | [reverse_lucas_primality](../../../../mathematics/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean/declarations/reverse-lucas-primality--0ef7e1de87ddcf0312c8afbe.md) | 61 | `result-track:0ef7e1de87ddcf0312c8afbeea76ccf80b395ff8ca636d82d117131b738ef55a` |
| 3 | `theorem` | [lucas_primality_iff](../../../../mathematics/Algebra/LucasPrimality/Variantfa121acf75be299a2ed18ca50be22448060bc91178eea3b6a2bb97436b3bea12.lean/declarations/lucas-primality-iff--991a267eda5afb6ad87ab5aa.md) | 77 | `result-track:991a267eda5afb6ad87ab5aac3c0769d83b34eda986ecfa2edac72cc299b048d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
