# Verification target: GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d583e49b6af1572883ceb1517777f7ab09f836d6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d583e49b6af1572883ceb1517777f7ab09f836d6`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachRationalArcCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachRationalArcCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition`](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcs`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachRationalMajorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalmajorarcset--db474ed81a43db90aebe6105.md) | 36 | `declaration-track:db474ed81a43db90aebe61057a6b9c411a735844efdaa49cb15e3e7fa73df922` |
| 2 | `def` | [goldbachRationalMinorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalminorarcset--0b33bbe4aad7601dd3f877b6.md) | 40 | `declaration-track:0b33bbe4aad7601dd3f877b60cb2cc3f740cb987dd957b4875533ffde25e2f13` |
| 3 | `theorem` | [measurable_goldbachRationalMajorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/measurable-goldbachrationalmajorarcset--e39c1ff861d04214667897bf.md) | 44 | `result-track:e39c1ff861d04214667897bf8f04b2402420fd90fd8c7de9f6f5daf4fbd31ad6` |
| 4 | `theorem` | [measurable_goldbachRationalMinorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/measurable-goldbachrationalminorarcset--37e455d3d98c59fcb5c5658d.md) | 51 | `result-track:37e455d3d98c59fcb5c5658d85d8d063be2b850b315fb3143e06634c501581cc` |
| 5 | `theorem` | [goldbachRationalMajorArcSet_subset_unit](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalmajorarcset-subset-unit--e495664f7c993ab3f21a7edd.md) | 58 | `result-track:e495664f7c993ab3f21a7edd3e7ecd77635a62092e7f8de24197ae1ccc1a3fe7` |
| 6 | `theorem` | [zero_not_mem_goldbachRationalMajorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/zero-not-mem-goldbachrationalmajorarcset--3775a80b51ec296809aabb64.md) | 65 | `result-track:3775a80b51ec296809aabb646122a3547181fd0ca0facf78e954076da0632578` |
| 7 | `theorem` | [goldbachRationalMajor_union_minor](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalmajor-union-minor--3f7644dcd72aff5874bf804e.md) | 70 | `result-track:3f7644dcd72aff5874bf804e52afb1899fdd5c405cd60fd6d95548addf85d800` |
| 8 | `theorem` | [goldbachRationalMajor_disjoint_minor](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalmajor-disjoint-minor--87c57638a00013cbf0e836c1.md) | 78 | `result-track:87c57638a00013cbf0e836c1a49ff92e5037c82a8dd4afb09902a61c21a1b136` |
| 9 | `def` | [goldbachRationalMajorContribution](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalmajorcontribution--e18a13573d9648ef4cd35489.md) | 85 | `declaration-track:e18a13573d9648ef4cd35489b6574c9024fcaf776b51c5b7e19a4ab1ee18fe38` |
| 10 | `def` | [goldbachRationalMinorContribution](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalminorcontribution--198c566710080842ba6db882.md) | 89 | `declaration-track:198c566710080842ba6db88292ba9961838cb00b47f3c18f53a185394f08565b` |
| 11 | `theorem` | [goldbachRationalMajor_add_minor_eq_logMass](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachrationalmajor-add-minor-eq-logmass--9f583aa1c12fa9640ee097a1.md) | 93 | `result-track:9f583aa1c12fa9640ee097a18aabdcda8bc4c6f511423ae6b64cf661fb88924a` |
| 12 | `theorem` | [goldbachCount_pos_of_rational_arc_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachcount-pos-of-rational-arc-bounds--78c44ed7a5fc24423a9757d5.md) | 104 | `result-track:78c44ed7a5fc24423a9757d5565ca4d6ced1f55bf397f264af192793002970b4` |
| 13 | `theorem` | [goldbachCount_pos_of_rational_truncated_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcCriterion.lean/declarations/goldbachcount-pos-of-rational-truncated-certificate--fddaba235f9f0854ed54d9f8.md) | 123 | `result-track:fddaba235f9f0854ed54d9f8b86c9ba7b6558801cccf9818a97a57dc1da456ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
