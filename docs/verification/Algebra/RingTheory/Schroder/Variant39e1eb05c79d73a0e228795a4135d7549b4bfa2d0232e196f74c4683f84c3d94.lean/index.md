# Verification target: GRWTSK.Algebra.RingTheory.Schroder.Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bf4b26fbe020b961c2f63db813ee906ae8fb7e6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bf4b26fbe020b961c2f63db813ee906ae8fb7e6`.

Source path: `GRWTSK/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/declarations/largeschroderseries--3fb147de1b776a9a7691bf7f.md) | 37 | `declaration-track:3fb147de1b776a9a7691bf7fc27199e893f8fcb1043abfbaee38761d334f35f3` |
| 2 | `lemma` | [coeff_largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/declarations/coeff-largeschroderseries--99bdb1ff0179a69390593e10.md) | 41 | `result-track:99bdb1ff0179a69390593e101fcdeb3d67447f0b5ea144339bc10bd59f2f0e1b` |
| 3 | `lemma` | [constantCoeff_largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/declarations/constantcoeff-largeschroderseries--d7005b7de61b2419a3bd8b7b.md) | 46 | `result-track:d7005b7de61b2419a3bd8b7bce6709676ae37f1a115d063bd1663d51f9754425` |
| 4 | `lemma` | [coeff_X_mul_largeSchroderSeries](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/declarations/coeff-x-mul-largeschroderseries--cd9ff08224f3c927f6a3b02c.md) | 51 | `result-track:cd9ff08224f3c927f6a3b02cda602666a72eb1a68a74c2388361c8e498a0d563` |
| 5 | `lemma` | [coeff_X_mul_largeSchroderSeriesSeries_sq](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/declarations/coeff-x-mul-largeschroderseriesseries-sq--779bc967b1514314494fba37.md) | 61 | `result-track:779bc967b1514314494fba379b2bd333659f628bd651e164aa815a3c49f35a0a` |
| 6 | `theorem` | [largeSchroderSeries_eq_one_add_X_mul_largeSchroderSeries_add_X_mul_largeSchroderSeries_sq](../../../../../mathematics/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/declarations/largeschroderseries-eq-one-add-x-mul-largeschroderseries-add-x-mul-large--00aefae663ad77648257b541.md) | 94 | `result-track:00aefae663ad77648257b5411144a54d790df063a73c298dee39b8836c06eedc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
