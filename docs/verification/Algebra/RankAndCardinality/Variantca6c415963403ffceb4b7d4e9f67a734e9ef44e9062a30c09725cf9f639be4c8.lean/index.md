# Verification target: GRWTSK.Algebra.RankAndCardinality.Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c81f625102826f800dbdc3f910521c285e40909",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/index.md) · [Full source](../../../../mathematics/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c81f625102826f800dbdc3f910521c285e40909`.

Source path: `GRWTSK/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.MvRatFunc.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Cardinality` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Adjoin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Transcendental` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.TranscendenceBasis` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsTranscendenceBasis.lift_cardinalMk_eq_max_lift](../../../../mathematics/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/declarations/istranscendencebasis-lift-cardinalmk-eq-max-lift--e2fbc44dc7abf9420b6b4d47.md) | 41 | `result-track:e2fbc44dc7abf9420b6b4d4724d2a33e211aacafd0025668af218dbb4579eb30` |
| 2 | `theorem` | [IsTranscendenceBasis.lift_rank_eq_max_lift](../../../../mathematics/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/declarations/istranscendencebasis-lift-rank-eq-max-lift--21529d4f69e5a478abbf95b9.md) | 52 | `result-track:21529d4f69e5a478abbf95b952b51864c2d892774c7da1762db484697b8b4089` |
| 3 | `theorem` | [Algebra.Transcendental.rank_eq_cardinalMk](../../../../mathematics/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/declarations/algebra-transcendental-rank-eq-cardinalmk--39f0422b40e8fd947868425d.md) | 64 | `result-track:39f0422b40e8fd947868425d9e7aa4b106475d9932710165666bb945d0b3aaf1` |
| 4 | `theorem` | [IntermediateField.rank_sup_le](../../../../mathematics/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/declarations/intermediatefield-rank-sup-le--070f5752cc6868b2220f73d4.md) | 71 | `result-track:070f5752cc6868b2220f73d4588c8399d23a376ab3e6a781e8015db5720a91d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
