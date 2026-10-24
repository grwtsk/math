# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyDVRReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7817aa4f3c54605b05e5da40d67daa3cc71c8129",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7817aa4f3c54605b05e5da40d67daa3cc71c8129`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Reduction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_c4_le_one](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/integral-c4-le-one--515f893ee0a4d30eb5312948.md) | 24 | `result-track:515f893ee0a4d30eb53129489b6defaafd767f68b91b3ddf634a3c7cb6b51fe3` |
| 2 | `lemma` | [integral_delta_le_one](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/integral-delta-le-one--dfc71a268078f6f22d87c268.md) | 30 | `result-track:dfc71a268078f6f22d87c268190181246dbf8db97888805c3aced82458260c26` |
| 3 | `theorem` | [changed_delta_le_of_c4_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/changed-delta-le-of-c4-unit--95a3a6e69021f1aa8c3b19ca.md) | 38 | `result-track:95a3a6e69021f1aa8c3b19ca0db1ca8452ad1cf68acd4a0e517364c1ffbdfdd3` |
| 4 | `theorem` | [minimal_of_c4_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/minimal-of-c4-unit--399068989eeaf93bf48104cd.md) | 59 | `result-track:399068989eeaf93bf48104cdb231064e59c4a4895567c942d234c9dd9743a5aa` |
| 5 | `theorem` | [minimal_of_delta_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/minimal-of-delta-unit--9711880a93404304d55f48c7.md) | 72 | `result-track:9711880a93404304d55f48c7342a9b31551cd75b4e75e7bb81a4bd77fe6cade1` |
| 6 | `lemma` | [valuation_eq_one_of_residue_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/valuation-eq-one-of-residue-ne-zero--20bef5405a216f839f204748.md) | 85 | `result-track:20bef5405a216f839f2047482e9529e1f135b2decc6a3e1693dbc8fcf74b0fb6` |
| 7 | `lemma` | [valuation_lt_one_of_residue_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/valuation-lt-one-of-residue-zero--628d05690fcaa2a8d3797637.md) | 93 | `result-track:628d05690fcaa2a8d37976379772886d95d542fe9ba3bc6d303e9993a7c5d348` |
| 8 | `theorem` | [good_of_residue_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/good-of-residue-delta--fa87fd931959d39b932ebd65.md) | 100 | `result-track:fa87fd931959d39b932ebd6555869910673a1af3d4690a9b902960e04d1beafc` |
| 9 | `theorem` | [multiplicative_of_residue_invariants](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/multiplicative-of-residue-invariants--5e89d2ca59a4cf4fedd14ee1.md) | 111 | `result-track:5e89d2ca59a4cf4fedd14ee12782ad6e9b0c8d007fd2d0d161c65001fb05615d` |
| 10 | `def` | [PrimitiveAdditiveTriple.freyModelOver](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/primitiveadditivetriple-freymodelover--9cca515d050194c63e352b73.md) | 129 | `declaration-track:9cca515d050194c63e352b73bddcfc58bd03bade3b460014c39a39c5791401ca` |
| 11 | `def` | [PrimitiveAdditiveTriple.freyFractionModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/primitiveadditivetriple-freyfractionmodel--1c3feaece9f1173754c058a3.md) | 134 | `declaration-track:1c3feaece9f1173754c058a353894a23912ede207a0a45703c43666cb2ca7ebb` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyFractionModel_isElliptic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/primitiveadditivetriple-freyfractionmodel-iselliptic--6e0597c40db42596a45e1fef.md) | 146 | `result-track:6e0597c40db42596a45e1fef87cda4784ee4262dbc2dc9737dc7ecd5060999d3` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyDVR_residue_comparison](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/primitiveadditivetriple-freydvr-residue-comparison--1c1c457da966df1203975d78.md) | 160 | `result-track:1c1c457da966df1203975d789b276232361e48989da586e062726468497d6658` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyFractionModel_good](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/primitiveadditivetriple-freyfractionmodel-good--a14f83366861692b036a368d.md) | 171 | `result-track:a14f83366861692b036a368da33f1a52979782ba274fc035c99661849c5e93fa` |
| 15 | `theorem` | [PrimitiveAdditiveTriple.freyFractionModel_multiplicative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/primitiveadditivetriple-freyfractionmodel-multiplicative--1eb9601e561dce6d9bcf2109.md) | 189 | `result-track:1eb9601e561dce6d9bcf21095a7f5d2ff050e6dcac44b2127e09d2b471fd8583` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyFractionModel_minimal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/declarations/primitiveadditivetriple-freyfractionmodel-minimal--b8f2d37c87cd0834c364aa3d.md) | 207 | `result-track:b8f2d37c87cd0834c364aa3d86b9671636b8f1cac576f41ca71fdf9cfe2f5099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
