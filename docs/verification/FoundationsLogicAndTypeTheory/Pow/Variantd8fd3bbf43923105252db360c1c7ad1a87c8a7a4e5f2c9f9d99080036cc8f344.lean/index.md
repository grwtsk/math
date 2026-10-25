# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pow.Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23f6b4364888019860b1e849f8485217b9dc1efb",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pow/Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pow/Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pow/Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23f6b4364888019860b1e849f8485217b9dc1efb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pow/Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pow/Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Pow/Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344.lean/declarations/pow-minfac--4b52c3ece8c8203da836f8b1.md) | 27 | `result-track:4b52c3ece8c8203da836f8b1505ba97ea8291340317494b427e37556cdca656b` |
| 2 | `theorem` | [Prime.pow_minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Pow/Variantd8fd3bbf43923105252db360c1c7ad1a87c8a7a4e5f2c9f9d99080036cc8f344.lean/declarations/prime-pow-minfac--9633b6e5d5b300e1d791f6da.md) | 36 | `result-track:9633b6e5d5b300e1d791f6daca086c53bf98d7e659e8a5555e6d3246b00f7ecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
