# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reassoc.Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "482efee9f22c246c8ef267b91a21cfb7614f9cdd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `482efee9f22c246c8ef267b91a21cfb7614f9cdd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.Simp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_whisker'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/declarations/eq-whisker--e6fe37abe08140d3874e23a5.md) | 43 | `result-track:e6fe37abe08140d3874e23a5502759ffae52eed6609f6b9864116a225ae4cebb` |
| 2 | `def` | [categorySimp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/declarations/categorysimp--271b3612f51adc8df27ff4b8.md) | 47 | `declaration-track:271b3612f51adc8df27ff4b8d52f580fb29e3409070ca9932c40a205e0e7612d` |
| 3 | `def` | [reassocExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/declarations/reassocexpr--399550f36943c4f2a98a69f0.md) | 57 | `declaration-track:399550f36943c4f2a98a69f0ff8c996c8b7cd3b5dacc3c887dba2068cc686561` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/declarations/syntax--ca6251e3032fb67863fc4a23.md) | 78 | `declaration-track:ca6251e3032fb67863fc4a231bbd63a0262c578903dddf6b1780eee3b7dbe1fe` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/declarations/initialize--5ba5aea15f43490f53e88bea.md) | 80 | `declaration-track:5ba5aea15f43490f53e88bead69111e3dbed53e65119d4a6903adfcac73c53b7` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reassoc/Variant73af2ce1f1448e78dd257ec4a884369913d27d1a01f324cc6eefdd43f3591cf9.lean/declarations/elab--f0efe8923b25d5082fa14738.md) | 99 | `declaration-track:f0efe8923b25d5082fa147385cab0166cf05098a1cc5c4679dc199ee91e59ab4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
