# Verification target: GRWTSK.Algebra.LinearAlgebra.VecUtil.Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4189531e874cd95640cfe0bd6d979f088f606907",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4189531e874cd95640cfe0bd6d979f088f606907`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/declarations/initialize--7cda8fa532e146af3ef3d540.md) | 44 | `declaration-track:7cda8fa532e146af3ef3d540a67c2e9c4cdbea7503be0fef106f888efa3e6496` |
| 2 | `register_option` | [fuel](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/declarations/fuel--b7c03f5e104c721c33fafe17.md) | 47 | `declaration-track:b7c03f5e104c721c33fafe17d4759442cee8b484b9edcfc0b969e9a471f1523a` |
| 3 | `def` | [getFinVal?](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/declarations/getfinval--8d29a7844ec083b5cc9130db.md) | 55 | `declaration-track:8d29a7844ec083b5cc9130dba586ce05c54514aedf4cacf4386e055703cfe986` |
| 4 | `def` | [getVecElem](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/declarations/getvecelem--2835a4a924250c3339dac4ae.md) | 100 | `declaration-track:2835a4a924250c3339dac4aef72ce255aaefee9bab03115f508240a874b79b44` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecUtil/Variantd2f27fd2f82831991f05cc85c633c6b249dc7c0e14520bf979b1d1446527a8d5.lean/declarations/macro--ffa02d2b06670ec4154e7394.md) | 232 | `declaration-track:ffa02d2b06670ec4154e73943002547e3bdc6e0524ced1bd54b7c8cfa0d5e3f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
