# Verification target: GRWTSK.Algebra.Quotient.Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f4368ee38869a16c0f81e142ee82f0f991cf3dd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/index.md) · [Full source](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f4368ee38869a16c0f81e142ee82f0f991cf3dd`.

Source path: `GRWTSK/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OrderOfElement` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_intAlgebraMap_eq_span](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/declarations/ker-intalgebramap-eq-span--a1c313738bf4f8f612f0d8c9.md) | 28 | `result-track:a1c313738bf4f8f612f0d8c919d9bbf68853bf13fad5789e6ff3ed78c4222a96` |
| 2 | `theorem` | [quotient](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/declarations/quotient--c063557cf24a75d828f6fa43.md) | 34 | `result-track:c063557cf24a75d828f6fa43a0bc11e48ac91ec3afe7e4ac3876f20591cbc5fa` |
| 3 | `theorem` | [quotient'](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/declarations/quotient--09182f50f6790517b978d473.md) | 49 | `result-track:09182f50f6790517b978d473b7c5a80b03d8920730969fce57aed1f0f7a5be0a` |
| 4 | `theorem` | [quotient_iff](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/declarations/quotient-iff--8248401b86bd246a92bf6826.md) | 58 | `result-track:8248401b86bd246a92bf6826638cbb6412153951577676b4cd8ad35990ff6a41` |
| 5 | `theorem` | [quotient_iff_le_ker_natCast](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/declarations/quotient-iff-le-ker-natcast--8df6b7a958c2f26895e018a7.md) | 65 | `result-track:8df6b7a958c2f26895e018a7f5439ba8a6e8f47725101b0b6d242212e63b19df` |
| 6 | `theorem` | [Ideal.Quotient.index_eq_zero](../../../../mathematics/Algebra/Quotient/Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac.lean/declarations/ideal-quotient-index-eq-zero--6a3da1f6ae0c5948a51f975a.md) | 71 | `result-track:6a3da1f6ae0c5948a51f975a92723396f950fbc92eef5585d94811f0e840767b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
