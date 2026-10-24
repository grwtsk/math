# Verification target: GRWTSK.Algebra.UniversalAlgebra.Free.Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3dfb8ef1fc7d6108656185498ab2fab6805075",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3dfb8ef1fc7d6108656185498ab2fab6805075`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Colimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/free--0c9f1f5b4b6238527fd30ee1.md) | 35 | `declaration-track:0c9f1f5b4b6238527fd30ee1dad42dfdc0490f5520684c93bc646a0e6d47a45f` |
| 2 | `def` | [freeHomEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/freehomequiv--160b3f018258f4ea7c353cd4.md) | 39 | `declaration-track:160b3f018258f4ea7c353cd4c6daf9e0992c5c0d8c4b1ec29d0cd78d3fcd76a9` |
| 3 | `lemma` | [freeHomEquiv_comp_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/freehomequiv-comp-apply--d052e777a31d596524b056b5.md) | 46 | `result-track:d052e777a31d596524b056b521f633d3e664b6fa9802b158f04b4853195ad605` |
| 4 | `lemma` | [freeHomEquiv_symm_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/freehomequiv-symm-comp--99d93da01767ce628e34e1d8.md) | 50 | `result-track:99d93da01767ce628e34e1d830d6ff06d574fdfaa0109e191491b7a4bc1df979` |
| 5 | `abbrev` | [freeSection](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/freesection--4c1d45b93e6991ebaece1f78.md) | 56 | `declaration-track:4c1d45b93e6991ebaece1f78f53811f958d8e61b179e48640fa2bd5df10e6969` |
| 6 | `def` | [freeMap](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/freemap--bb55798a736326cc4ffc6545.md) | 65 | `declaration-track:bb55798a736326cc4ffc65456140a535f9fc7927c76844cc4c78ba55291021ac` |
| 7 | `lemma` | [freeHomEquiv_freeMap](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/freehomequiv-freemap--c280b7b818b1d1b3cd726461.md) | 69 | `result-track:c280b7b818b1d1b3cd726461c5eed705f717287f568dbf8a602212e1e8295db3` |
| 8 | `lemma` | [sectionMap_freeMap_freeSection](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/sectionmap-freemap-freesection--309d4cc8eb85560b1504f763.md) | 74 | `result-track:309d4cc8eb85560b1504f7637451c2875bf7fe9fd37c8ce58f8bb4e6395eb183` |
| 9 | `def` | [freeFunctor](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/declarations/freefunctor--2db8a5211558c95f3ae06184.md) | 83 | `declaration-track:2db8a5211558c95f3ae0618404930143055108112c2b91d8cff99cec81fb1a0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
