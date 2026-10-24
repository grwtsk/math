# Verification target: GRWTSK.Algebra.Reduced.Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51499fdbba9a61b48ea39ad1a3a3e2813d06ec8b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51499fdbba9a61b48ea39ad1a3a3e2813d06ec8b`.

Source path: `GRWTSK/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isReduced_localizationPreserves](../../../../mathematics/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean/declarations/isreduced-localizationpreserves--de32c2890aa1c43b9e8e7773.md) | 32 | `result-track:de32c2890aa1c43b9e8e7773b0dd5624c7c147550ff2951e15cbbae5e23e2b66` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean/declarations/instance--8360b294ed353c134f16bfd5.md) | 51 | `declaration-track:8360b294ed353c134f16bfd5deb730ec89018a4459055f7ebf875b510894dcc9` |
| 3 | `theorem` | [isReduced_ofLocalizationMaximal](../../../../mathematics/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean/declarations/isreduced-oflocalizationmaximal--0f9e4a32769841028995c15d.md) | 55 | `result-track:0f9e4a32769841028995c15d5aa56fd7665919ffe96cc9a6af1ebb0bccb8866b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
