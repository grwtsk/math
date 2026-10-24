# Verification target: GRWTSK.Algebra.Lemmas.Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc5d5600d2f7f073d887148bf0a1924e8e419605",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc5d5600d2f7f073d887148bf0a1924e8e419605`.

Source path: `GRWTSK/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Away.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulNumerator](../../../../mathematics/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean/declarations/mulnumerator--8ec22c54993b85c7e02c738e.md) | 24 | `declaration-track:8ec22c54993b85c7e02c738e6fb3e3d57a6f1ea2686d814b00e28aa35bc1bf60` |
| 2 | `lemma` | [span_range_mulNumerator_eq_top](../../../../mathematics/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean/declarations/span-range-mulnumerator-eq-top--e1ca7d30d4866f41f6983143.md) | 30 | `result-track:e1ca7d30d4866f41f69831431b96c9ebbca72f4d222956494e82aded0fd8fe34` |
| 3 | `lemma` | [quotient_of_isIdempotentElem](../../../../mathematics/Algebra/Lemmas/Variant4b1c2bf36aa7adab5227eb8c326bac5e9a4511361b33473e543ce49b8a618ae1.lean/declarations/quotient-of-isidempotentelem--4d99960ec493d991f12dc34a.md) | 62 | `result-track:4d99960ec493d991f12dc34a232b2f28adb6923f4ef8775afbe7a5df8b0d011e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
