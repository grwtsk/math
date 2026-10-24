# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerProduct.Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44c4805ce569c771de548ce2d2c10bc0bbe6c066",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44c4805ce569c771de548ce2d2c10bc0bbe6c066`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Euclid` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finprod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteEulerFactor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean/declarations/finiteeulerfactor--36c94c3a73ef1b261b0c0607.md) | 16 | `declaration-track:36c94c3a73ef1b261b0c060746b16d5691b0f8c28df509a8b93e7bba2efb26b1` |
| 2 | `def` | [finiteEulerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean/declarations/finiteeulerproduct--4298bade3c70a99b301d1055.md) | 22 | `declaration-track:4298bade3c70a99b301d105595d8ac3cda5fe1127c19a74c4d5b7e074577c7d7` |
| 3 | `def` | [exponentVectors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean/declarations/exponentvectors--657c1810f85a43c47ccd45bd.md) | 29 | `declaration-track:657c1810f85a43c47ccd45bd89f5b3112ceceed9e42589d5aa3fb44ad81d868e` |
| 4 | `theorem` | [finite_euler_product_expands_as_sum_over_exponents](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean/declarations/finite-euler-product-expands-as-sum-over-exponents--d26987114bf47ac781b80619.md) | 40 | `result-track:d26987114bf47ac781b806190ff8d0f04fbd4c1c41432d0fd4bd5e65d9599de2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
