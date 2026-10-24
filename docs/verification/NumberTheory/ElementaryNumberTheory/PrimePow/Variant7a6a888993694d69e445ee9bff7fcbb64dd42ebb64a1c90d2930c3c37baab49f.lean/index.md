# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePow.Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1410e1d7515e13c38af8d3490cd9d1da3df94975",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1410e1d7515e13c38af8d3490cd9d1da3df94975`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPrimePow.minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-minfac-pow-factorization-eq--1e47504880d78298419d9d4f.md) | 20 | `result-track:1e47504880d78298419d9d4fe98793bc8500e4061f25b2540c09242b85b241ea` |
| 2 | `theorem` | [isPrimePow_of_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-of-minfac-pow-factorization-eq--5eda7cc0f7f6660d7be8ddf4.md) | 27 | `result-track:5eda7cc0f7f6660d7be8ddf46cc3b4e832f71528dc65c06d037266a6f5a29ae6` |
| 3 | `theorem` | [isPrimePow_iff_minFac_pow_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-iff-minfac-pow-factorization-eq--6ac997dca4a7efa605fd8c0a.md) | 37 | `result-track:6ac997dca4a7efa605fd8c0a59b5f33864965add26e26d38e49f0249765e2989` |
| 4 | `theorem` | [isPrimePow_iff_factorization_eq_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-iff-factorization-eq-single--c9da3375fb37648f33a02fef.md) | 42 | `result-track:c9da3375fb37648f33a02fefecb91929efd74442176aabf3adba7fe1e782217a` |
| 5 | `theorem` | [isPrimePow_iff_card_support_factorization_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-iff-card-support-factorization-eq-one--0c4d87c5af293d75ad05a58d.md) | 58 | `result-track:0c4d87c5af293d75ad05a58d49ac86f7695a5eea29015972b503268caed39c37` |
| 6 | `theorem` | [IsPrimePow.exists_ord_compl_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-exists-ord-compl-eq-one--f89f3698dc807567b11b48ae.md) | 64 | `result-track:f89f3698dc807567b11b48ae7d0e921c1e2d888bb564e2832aa236bcade9464b` |
| 7 | `theorem` | [exists_ord_compl_eq_one_iff_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/exists-ord-compl-eq-one-iff-isprimepow--67945e13eebbcda64097c42f.md) | 77 | `result-track:67945e13eebbcda64097c42f07cf3555c588a618b308d9f4676296e1b99687bd` |
| 8 | `theorem` | [isPrimePow_iff_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-iff-unique-prime-dvd--3e3d5cd278ac4c2ee10c2bb6.md) | 90 | `result-track:3e3d5cd278ac4c2ee10c2bb60776ed73dcf0b27497c17d1740be47ffe1dd99cd` |
| 9 | `theorem` | [isPrimePow_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/isprimepow-pow-iff--f539eb0ad8e5476f6227183e.md) | 112 | `result-track:f539eb0ad8e5476f6227183ee49bdfb915e5924b5e95af2f268fdf77e877ed16` |
| 10 | `theorem` | [Nat.coprime.isPrimePow_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/nat-coprime-isprimepow-dvd-mul--c6628f38973aeb7c4e8ac470.md) | 120 | `result-track:c6628f38973aeb7c4e8ac4703bf323f445388c4bc137e5d3754952d266724c00` |
| 11 | `theorem` | [Nat.mul_divisors_filter_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/declarations/nat-mul-divisors-filter-prime-pow--c50ef63bd6524437c6fd8be0.md) | 144 | `result-track:c50ef63bd6524437c6fd8be065f75522333d25b68dc34cc2972b074d36c9f4da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
