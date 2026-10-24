# Verification target: GRWTSK.Algebra.LinearAlgebra.Finite.Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04dda867f0569495792fb522cb4abc24551cc3ee",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04dda867f0569495792fb522cb4abc24551cc3ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Bilinear` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_fg_le_eq_rTensor_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/exists-fg-le-eq-rtensor-subtype--3cbbd7c56a7571f69309533d.md) | 39 | `result-track:3cbbd7c56a7571f69309533dc659787c70d0755e94d8ba325eb6dfa0d1d4b046` |
| 2 | `theorem` | [exists_fg_le_subset_range_rTensor_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/exists-fg-le-subset-range-rtensor-subtype--4685a998ed66053e8f1dfe7b.md) | 52 | `result-track:4685a998ed66053e8f1dfe7bb78689fabd32234ac82bd265e6757c6a4c09b845` |
| 3 | `theorem` | [exists_fg_le_eq_rTensor_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/exists-fg-le-eq-rtensor-inclusion--8875d092b7baac719185366d.md) | 63 | `result-track:8875d092b7baac719185366d251e576fccde70f40460b8b066e7d61d60e37143` |
| 4 | `theorem` | [exists_fg_le_subset_range_rTensor_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/exists-fg-le-subset-range-rtensor-inclusion--c9a799b59cfffa4fd9c81db2.md) | 70 | `result-track:c9a799b59cfffa4fd9c81db25e2b2618155607b3fee59365486df12c6a6dc808` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/instance--2b749ede7f6da64e99d63bf8.md) | 86 | `declaration-track:2b749ede7f6da64e99d63bf8cda3c07b43ee548f019b301831714abdaad574e1` |
| 6 | `instance` | [Module.Finite.base_change](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/module-finite-base-change--db0d4d83b22c404e3200a125.md) | 92 | `declaration-track:db0d4d83b22c404e3200a125e604061c741b944de4d4905179c90781ef816525` |
| 7 | `instance` | [Module.Finite.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/module-finite-tensorproduct--b83e7f1d21a7af91c2eeb0d2.md) | 110 | `declaration-track:b83e7f1d21a7af91c2eeb0d23df81a773f233cab81a73e550d61217b25cd4d08` |
| 8 | `lemma` | [Module.exists_isPrincipal_quotient_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/module-exists-isprincipal-quotient-of-finite--300f5eef5672c1ea77fe6902.md) | 121 | `result-track:300f5eef5672c1ea77fe6902f67e5cf640ef8f23e349a66b737c2466c7eae46a` |
| 9 | `lemma` | [Module.exists_surjective_quotient_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/module-exists-surjective-quotient-of-finite--b78eec4ed0fec28eb5adf5c7.md) | 143 | `result-track:b78eec4ed0fec28eb5adf5c78d0ef8efdf16adea0f2b894752cb0f187e32370a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/instance--f7e234aad8ee0080fda8d742.md) | 155 | `declaration-track:f7e234aad8ee0080fda8d7425b6146cfce46dadf2429f5de126f6649f9749dd4` |
| 11 | `theorem` | [Subalgebra.finite_sup](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/subalgebra-finite-sup--3597cfe4e08ebfb91d50da54.md) | 167 | `result-track:3597cfe4e08ebfb91d50da545e5f3aeaac404548a61891e9ddd1b634d9c7d893` |
| 12 | `lemma` | [RingHom.surjective_of_tmul_eq_tmul_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant02f646109bc1ff49150ab9559de4dd7a09e25152ba12d3c2d38da6e41eb8bce8.lean/declarations/ringhom-surjective-of-tmul-eq-tmul-of-finite--92dd7a4f1d6299bd6f93e84e.md) | 174 | `result-track:92dd7a4f1d6299bd6f93e84e19e68792d37a2783bc32c0874a698ef0fbf69049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
