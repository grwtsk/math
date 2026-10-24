# Verification target: GRWTSK.Algebra.Lemmas.Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8811225d3564c5af24b5504f0bd1d91814c8af0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8811225d3564c5af24b5504f0bd1d91814c8af0`.

Source path: `GRWTSK/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Away.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulNumerator](../../../../mathematics/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean/declarations/mulnumerator--782f91064ed1bef5a0a58ca7.md) | 32 | `declaration-track:782f91064ed1bef5a0a58ca78f313b40dbc0d173ca19f9bc9b89116650686bcb` |
| 2 | `lemma` | [span_range_mulNumerator_eq_top](../../../../mathematics/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean/declarations/span-range-mulnumerator-eq-top--29b3761c35d10550bb22ca6f.md) | 38 | `result-track:29b3761c35d10550bb22ca6fa4e9beb29af6b23b12d6588ecf50178d370a2707` |
| 3 | `lemma` | [quotient_of_isIdempotentElem](../../../../mathematics/Algebra/Lemmas/Variant6c3f6061fe4db1131280118ce26f91602b31ad3b8ad7ff60dadd780cf4642c60.lean/declarations/quotient-of-isidempotentelem--e66c5a620fcb1a568102c08c.md) | 70 | `result-track:e66c5a620fcb1a568102c08c65f41f4bdb4814241e95e92eaa8a43fb8fa4eb9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
