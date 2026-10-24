# Verification target: GRWTSK.Algebra.LinearAlgebra.Killing.Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15f8a283d51bb7060fc03691cf3430b9e5bbb5c2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15f8a283d51bb7060fc03691cf3430b9e5bbb5c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Derivation.AdjointAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Killing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Orthogonal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [killingForm_restrict_range_ad](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/killingform-restrict-range-ad--c9ac8e4e428c6fdc937af884.md) | 41 | `result-track:c9ac8e4e428c6fdc937af8847bc8f1f4ea204c00028647ac1cf29a91b09d0e06` |
| 2 | `def` | [rangeAdOrthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/rangeadorthogonal--77da7deeb769642e287d20d8.md) | 47 | `declaration-track:77da7deeb769642e287d20d88784c6a9e4e84e9a7a07463e1b22a39607480e20` |
| 3 | `lemma` | [ad_mem_orthogonal_of_mem_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/ad-mem-orthogonal-of-mem-orthogonal--283ff25d9c83930be0c76600.md) | 62 | `result-track:283ff25d9c83930be0c766006fd27ad0d7199a6e72cfef8d38b0e5d096a315ed` |
| 4 | `lemma` | [ad_mem_ker_killingForm_ad_range_of_mem_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/ad-mem-ker-killingform-ad-range-of-mem-orthogonal--e3fba9cea71bdccedad2ff37.md) | 69 | `result-track:e3fba9cea71bdccedad2ff37aa7fadaeba4883c3de6b594c7cac1bccd8d959a3` |
| 5 | `lemma` | [ad_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/ad-apply-eq-zero-iff--a030b5cdb21cc625c483f0d4.md) | 79 | `result-track:a030b5cdb21cc625c483f0d47597177ad275eada99a7ca390d4e57b90353ecc3` |
| 6 | `instance` | [instIsKilling_range_ad](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/instiskilling-range-ad--a7ee659b1c2d3621293cd243.md) | 83 | `declaration-track:a7ee659b1c2d3621293cd243f0d677aa4a0e85f523ccaf1bd8a00b70727c835b` |
| 7 | `lemma` | [killingForm_restrict_range_ad_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/killingform-restrict-range-ad-nondegenerate--0d0ed4f207f799746ccb1c08.md) | 88 | `result-track:0d0ed4f207f799746ccb1c08d02e0b1f43b5e1c822d99680a7e66e000e43bd6f` |
| 8 | `lemma` | [range_ad_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/range-ad-eq-top--fbcce99749d8720b9ac4dbf9.md) | 95 | `result-track:fbcce99749d8720b9ac4dbf96cee83b6bb9591f0616d604074cedfb7e0700c35` |
| 9 | `lemma` | [exists_eq_ad](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/declarations/exists-eq-ad--6ec2b25b0ecf3a303366b648.md) | 104 | `result-track:6ec2b25b0ecf3a303366b6480aceaf42a33cc93e9c58dd3ceb5f9cd76f26524c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
