# Verification target: GRWTSK.NumberTheory.Chebyshev.RawPairedAffineCancellation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "990a229fc540b0c9a51432b0d13f05cbd3e165a4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `990a229fc540b0c9a51432b0d13f05cbd3e165a4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.RawPairedOscillation`](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedDifference](../../../../mathematics/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean/declarations/paireddifference--63ebbccf9e7204608e84b4b6.md) | 14 | `declaration-track:63ebbccf9e7204608e84b4b65d68355372af4548127d1fece93ad282317b6c58` |
| 2 | `theorem` | [pairedDifference_affine](../../../../mathematics/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean/declarations/paireddifference-affine--0cb60cbf6d857bd775ecb02c.md) | 17 | `result-track:0cb60cbf6d857bd775ecb02c50ad8cafba0b3b34c9feb88d5418a9a37a11406d` |
| 3 | `theorem` | [raw_pair_eq_zero_head_and_correction](../../../../mathematics/NumberTheory/Chebyshev/RawPairedAffineCancellation.lean/declarations/raw-pair-eq-zero-head-and-correction--d483a1abe4b87b209264e6eb.md) | 23 | `result-track:d483a1abe4b87b209264e6eba3da47859892c0923122307f7eb6fb0950b33586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
