# Verification target: GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb2010a3dd8b7cb73dcc699acced264974ba337e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb2010a3dd8b7cb73dcc699acced264974ba337e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/declarations/instance--fc3b66f52002bb5944fa543b.md) | 38 | `declaration-track:fc3b66f52002bb5944fa543bee14bb24b4d82959281fedbce4d46f55b83243c7` |
| 2 | `def` | [tensorObjMap](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/declarations/tensorobjmap--3337fab98c0ed79946e04051.md) | 48 | `declaration-track:3337fab98c0ed79946e040519b9569148187f5e1e7dad2c7d82c428a5d941073` |
| 3 | `def` | [tensorObj](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/declarations/tensorobj--01c06e6bf759fade8354aae4.md) | 58 | `declaration-track:01c06e6bf759fade8354aae4ed013a5e4ad42ff73a9785e9ccc134f7b736d9cd` |
| 4 | `lemma` | [tensorObj_map_tmul](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/declarations/tensorobj-map-tmul--d6a3f64ef04fa2b893587369.md) | 74 | `result-track:d6a3f64ef04fa2b893587369f806ef9f88cb0478f55a1b09196efb488f746357` |
| 5 | `def` | [tensorHom](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/declarations/tensorhom--115edb89be6dd5f57c89ff04.md) | 82 | `declaration-track:115edb89be6dd5f57c89ff047bcbd0e413fd5bc83ab4f41342170a410d0e98cb` |
| 6 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/declarations/monoidalcategorystruct--5458d3db0f7859d1035be7b2.md) | 97 | `declaration-track:5458d3db0f7859d1035be7b2f96e293de83df14fd55d506be220c89c1b646cf8` |
| 7 | `instance` | [monoidalCategory](../../../../../mathematics/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/declarations/monoidalcategory--943243c052d14b8b39e7a8fd.md) | 117 | `declaration-track:943243c052d14b8b39e7a8fda09bac7d11dd2aa8f14c11d8687790963f421e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
