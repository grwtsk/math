# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cebf179c791dc58c820ce80a4f7ebed23e14273",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cebf179c791dc58c820ce80a4f7ebed23e14273`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/rel--de1585b8889cdaf99bf411a7.md) | 47 | `declaration-track:de1585b8889cdaf99bf411a7ce06b617c8b6448c08e833cadbfdbca2f3cc8d5c` |
| 2 | `theorem` | [rel_of_quot_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/rel-of-quot-rel--02de48c44a668c80df6485c0.md) | 50 | `result-track:02de48c44a668c80df6485c0afc94573a6b33ca654c03a0d6d3c084be06e56c7` |
| 3 | `theorem` | [eqvGen_quot_rel_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/eqvgen-quot-rel-of-rel--74f2fbb35c7a5c602442d053.md) | 54 | `result-track:74f2fbb35c7a5c602442d0536293639ca531d4bc30ae0fb2f970b033f3fac916` |
| 4 | `def` | [isColimitOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/iscolimitof--e637125e8ce6cdd668863330.md) | 61 | `declaration-track:e637125e8ce6cdd66886333051a3695366aef06deb5a4d4cab856460abc2ac76` |
| 5 | `def` | [isColimitOf'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/iscolimitof--2ae901c6096532bba989ac11.md) | 88 | `declaration-track:2ae901c6096532bba989ac11fb91c3cb6f6d0a2efd8a3e90ffc83f1da401c19c` |
| 6 | `theorem` | [rel_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/rel-equiv--2d9c347f774932d6ef7eac1b.md) | 96 | `result-track:2d9c347f774932d6ef7eac1b98b097f99fed8960b3c795987dc39118df0854c6` |
| 7 | `theorem` | [rel_eq_eqvGen_quot_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/rel-eq-eqvgen-quot-rel--d8477042dd762a0f0b0a7a29.md) | 112 | `result-track:d8477042dd762a0f0b0a7a29409e621a5f4731dab690e8ce91016ed05dd62bfc` |
| 8 | `theorem` | [colimit_eq_iff_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/colimit-eq-iff-aux--d21ca56d8e20ac996d802ef8.md) | 120 | `result-track:d21ca56d8e20ac996d802ef85db89956d9dbed933ece4c6c0433797e23b103de` |
| 9 | `theorem` | [isColimit_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/iscolimit-eq-iff--7954a7d071c1b50b202b5d72.md) | 127 | `result-track:7954a7d071c1b50b202b5d7295a4c01e66653997ba22d64626c46df72bf0a46c` |
| 10 | `theorem` | [isColimit_eq_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/iscolimit-eq-iff--cb02de6b6d2bf4736ed0c3dd.md) | 139 | `result-track:cb02de6b6d2bf4736ed0c3ddd6e6cdce8860a0f8433e4fc8e105ce2430fe77d7` |
| 11 | `theorem` | [colimit_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/declarations/colimit-eq-iff--c66441d9f2cac8c81aa78b90.md) | 150 | `result-track:c66441d9f2cac8c81aa78b9044e5c40355c424613e1978bc0a691936f36b80ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
