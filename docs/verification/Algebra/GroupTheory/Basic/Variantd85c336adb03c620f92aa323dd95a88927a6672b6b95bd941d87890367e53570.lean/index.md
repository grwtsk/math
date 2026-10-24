# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e49383b71a59eed6d5d23b452f856be75ca798a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e49383b71a59eed6d5d23b452f856be75ca798a`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJordan](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/isjordan--207f4b23a6a2ab1a8ec3992b.md) | 80 | `declaration-track:207f4b23a6a2ab1a8ec3992b82dcbf6b041c75888de719fef6149c787f46920e` |
| 2 | `class` | [IsCommJordan](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/iscommjordan--86c1e75c7cf158a80b5b9d7b.md) | 89 | `declaration-track:86c1e75c7cf158a80b5b9d7b73896b9648adf55d886ee73ca1cd1284cbd364ef` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/instance--dae82c65c43625961ad62711.md) | 96 | `declaration-track:dae82c65c43625961ad627117edea70b82c8083a2f0f7301462c12b5c4f8f555` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/instance--ee19dd4a1e1e7f7428bb8288.md) | 111 | `declaration-track:ee19dd4a1e1e7f7428bb8288cdef9e860576115b98256390e719bf2727a7b255` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/instance--745df0ef4b573312f3950ac5.md) | 120 | `declaration-track:745df0ef4b573312f3950ac56710fa6c4aa7b4fe2779474c50130b30b14333d9` |
| 6 | `theorem` | [commute_lmul_rmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/commute-lmul-rmul--6df018e14929829999c86bbd.md) | 139 | `result-track:6df018e14929829999c86bbd8fc4b51e0319cf3799edf711d5aa0c02e2d1df08` |
| 7 | `theorem` | [commute_lmul_lmul_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/commute-lmul-lmul-sq--066ddfb2c93ce5d270220d13.md) | 144 | `result-track:066ddfb2c93ce5d270220d1362ba27d3ca5e2c3429dfcb5d800eb8bd3c744e20` |
| 8 | `theorem` | [commute_lmul_rmul_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/commute-lmul-rmul-sq--99b9fa2ae3a08cf2347b0b68.md) | 149 | `result-track:99b9fa2ae3a08cf2347b0b6808e8f83e23c8b3febcfe46cf238781887c7b8234` |
| 9 | `theorem` | [commute_lmul_sq_rmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/commute-lmul-sq-rmul--bd0e88bc0dac8c3237bfb6e0.md) | 154 | `result-track:bd0e88bc0dac8c3237bfb6e0aef302d4a56c6b4c2671a83af86a929c7e3da6ff` |
| 10 | `theorem` | [commute_rmul_rmul_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/commute-rmul-rmul-sq--8abf00872f39d263e37c81b2.md) | 159 | `result-track:8abf00872f39d263e37c81b275cd890e245f45159f3542d3f116a2514c124bb3` |
| 11 | `theorem` | [two_nsmul_lie_lmul_lmul_add_eq_lie_lmul_lmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/two-nsmul-lie-lmul-lmul-add-eq-lie-lmul-lmul-add--c7be8132c6e01faff6fc901b.md) | 173 | `result-track:c7be8132c6e01faff6fc901b16ce59ab5b0c7cf752eefc6604cfef7caaf7af40` |
| 12 | `theorem` | [aux0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/aux0--7cb388193c153fda54435982.md) | 186 | `result-track:7cb388193c153fda544359827d2cf2f9a30381a87867932ed86b4126be0d2c2b` |
| 13 | `theorem` | [aux1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/aux1--d4da085f722140daa00c6b6d.md) | 198 | `result-track:d4da085f722140daa00c6b6d7a15b649fd918ce58cafd1b9ecec7c7f716882d5` |
| 14 | `theorem` | [aux2](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/aux2--6107ff093b5933dfdd76195e.md) | 212 | `result-track:6107ff093b5933dfdd76195e966c4f29ab0e1e0bcdf29d4a467939ae182abd67` |
| 15 | `theorem` | [aux3](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/aux3--ee475fb42cf48a7187a9b644.md) | 229 | `result-track:ee475fb42cf48a7187a9b644dfdce5723947186f3d28e0d0d80e8384e7f20c19` |
| 16 | `theorem` | [two_nsmul_lie_lmul_lmul_add_add_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd85c336adb03c620f92aa323dd95a88927a6672b6b95bd941d87890367e53570.lean/declarations/two-nsmul-lie-lmul-lmul-add-add-eq-zero--a3746035efd4475a401702b8.md) | 245 | `result-track:a3746035efd4475a401702b89a15d7c2f801782a793259dfe799b2b1ea5903cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
