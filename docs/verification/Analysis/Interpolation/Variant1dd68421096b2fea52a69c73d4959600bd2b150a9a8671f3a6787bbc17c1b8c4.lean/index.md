# Verification target: GRWTSK.Analysis.Interpolation.Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d98527e3c944f3fbc260f81e4b35877b2ecf8a1c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/index.md) · [Full source](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d98527e3c944f3fbc260f81e4b35877b2ecf8a1c`.

Source path: `GRWTSK/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GammaBridge.Exact` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linear](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/declarations/linear--f3333910a2d20c8aedf3311c.md) | 11 | `declaration-track:f3333910a2d20c8aedf3311c8c34bf7ff4dc77cbd18c605f4368aeef00085ed6` |
| 2 | `theorem` | [left_endpoint](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/declarations/left-endpoint--cb83c71b857062770c8d817b.md) | 14 | `result-track:cb83c71b857062770c8d817bf4f1a66e5c241dfc1e5d33bc102097e3a6fdc86d` |
| 3 | `theorem` | [right_endpoint](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/declarations/right-endpoint--a450358b1eda17cf8bf42c6f.md) | 18 | `result-track:a450358b1eda17cf8bf42c6f48cccd02609bdc2ca3c9532045a803fe1fdcf59b` |
| 4 | `def` | [exactLinear](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/declarations/exactlinear--9e5fe2c1124a5f63bc349293.md) | 22 | `declaration-track:9e5fe2c1124a5f63bc349293f6283f4f5bf65ad82c1e8cb51ea62622d881d4da` |
| 5 | `def` | [scalarLinear](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/declarations/scalarlinear--6f6708f94bfd16b51e13969f.md) | 30 | `declaration-track:6f6708f94bfd16b51e13969f695092e1a164235eae2a78301f4ab1c8adccc2c6` |
| 6 | `theorem` | [monotone](../../../../mathematics/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean/declarations/monotone--06c74d02c18f30275e2213c3.md) | 33 | `result-track:06c74d02c18f30275e2213c36978af6f29ad48d7fd983fb7369064b806472da7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
