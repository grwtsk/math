# Verification target: GRWTSK.Algebra.GroupTheory.ForgetCorepresentable.Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19e98ef3fda6ba40ddf342bb8b58e2b0cfdd7f17",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19e98ef3fda6ba40ddf342bb8b58e2b0cfdd7f17`.

Source path: `GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Hom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftMultiplesHom](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/uliftmultipleshom--df2883426dd6a833bfbe70c3.md) | 43 | `declaration-track:df2883426dd6a833bfbe70c3321d9643a7f7cebb888b4ceeff57e23b38255c79` |
| 2 | `def` | [uliftPowersHom](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/uliftpowershom--f2a39020702efbc355369b9a.md) | 49 | `declaration-track:f2a39020702efbc355369b9a46d5bce46abbb3c6024068f211155951306eeb54` |
| 3 | `def` | [fromMultiplicativeNatEquiv](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/frommultiplicativenatequiv--a266a49d8643c192d0fe7a36.md) | 56 | `declaration-track:a266a49d8643c192d0fe7a368af3a386c6a6c6d4b08233a743314e51d103528b` |
| 4 | `def` | [fromULiftMultiplicativeNatEquiv](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/fromuliftmultiplicativenatequiv--1025dfb6151b85fd8d640458.md) | 61 | `declaration-track:1025dfb6151b85fd8d64045859178dbc480cbe1259acd1af5a730b13477cc5fa` |
| 5 | `def` | [fromNatEquiv](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/fromnatequiv--14dedcc05c7938e21e92185a.md) | 71 | `declaration-track:14dedcc05c7938e21e92185af1eeec54ac5078934ddb21453339e73f7ac57c57` |
| 6 | `def` | [fromULiftNatEquiv](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/fromuliftnatequiv--3fbdf32b15360187cdb057b2.md) | 75 | `declaration-track:3fbdf32b15360187cdb057b29bb4bdfbe9c78a5d68661c8a5be30bb204352d79` |
| 7 | `def` | [MonCat.coyonedaObjIsoForget](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/moncat-coyonedaobjisoforget--f0d04457a34e5c701a4fb64d.md) | 81 | `declaration-track:f0d04457a34e5c701a4fb64d05d66036ab95cb25711aadb105bceaa917a01be0` |
| 8 | `def` | [CommMonCat.coyonedaObjIsoForget](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/commmoncat-coyonedaobjisoforget--d6f9e3337086c447d9c1182c.md) | 88 | `declaration-track:d6f9e3337086c447d9c1182c3e7909e060cb08a9d2e9ea09eceec603a3928232` |
| 9 | `def` | [AddMonCat.coyonedaObjIsoForget](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/addmoncat-coyonedaobjisoforget--b2311268636b63de276af1e5.md) | 94 | `declaration-track:b2311268636b63de276af1e5f6ecdcdc351e8c28ffa23defa3d85797b6a70fc6` |
| 10 | `def` | [AddCommMonCat.coyonedaObjIsoForget](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/addcommmoncat-coyonedaobjisoforget--d9c0bdaa8db42253b80f4da7.md) | 100 | `declaration-track:d9c0bdaa8db42253b80f4da73bfed370867653c2567af8aa66775cbe4361f81e` |
| 11 | `instance` | [MonCat.forget_isCorepresentable](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/moncat-forget-iscorepresentable--3a70155b0e689b89e43f7330.md) | 105 | `declaration-track:3a70155b0e689b89e43f7330c496fa94e791ce0d9145ee596c28b14cc01da273` |
| 12 | `instance` | [CommMonCat.forget_isCorepresentable](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/commmoncat-forget-iscorepresentable--a726098bdce39bb13894482d.md) | 109 | `declaration-track:a726098bdce39bb13894482d9839b2eb25bc35be5fabe7f47a10adeac946b8d3` |
| 13 | `instance` | [AddMonCat.forget_isCorepresentable](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/addmoncat-forget-iscorepresentable--0dbac650a6f6728412c36f85.md) | 113 | `declaration-track:0dbac650a6f6728412c36f85149c8b0a64576bf54cf9bb6dcbf928759a987f4d` |
| 14 | `instance` | [AddCommMonCat.forget_isCorepresentable](../../../../../mathematics/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/declarations/addcommmoncat-forget-iscorepresentable--6ce6716e7ebef29177541d4c.md) | 117 | `declaration-track:6ce6716e7ebef29177541d4cfd6598f7e38856c36e38d8a87e751071a6da9806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
