# Verification target: GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "216d23ec407a06d44e597cc8e0c08c1cee767a9a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `216d23ec407a06d44e597cc8e0c08c1cee767a9a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.BilinearForm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Base` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.Nondegenerate` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrixIn](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrixin--8531abaeb7ec7c2719c95620.md) | 37 | `declaration-track:8531abaeb7ec7c2719c9562091c0c0aacbc2bf72775af80c2a7d734201084f4c` |
| 2 | `lemma` | [cartanMatrixIn_def](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrixin-def--7b562e5e56391a3a1363e22d.md) | 41 | `result-track:7b562e5e56391a3a1363e22d7a4aaa99be90da945dae5831aa39111f69e4fe10` |
| 3 | `lemma` | [algebraMap_cartanMatrixIn_apply](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/algebramap-cartanmatrixin-apply--ed12513115191ba051a8bd58.md) | 46 | `result-track:ed12513115191ba051a8bd58e6cf503caddaa3cf7085c12e70f9ad6d5a045022` |
| 4 | `lemma` | [cartanMatrixIn_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrixin-apply-same--913870e728e44578968031da.md) | 51 | `result-track:913870e728e44578968031daa741e3113a3cecaca5377f33c8b2254797b0d1fb` |
| 5 | `lemma` | [cartanMatrixIn_mul_diagonal_eq](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrixin-mul-diagonal-eq--7e772be19e71db661e15d267.md) | 58 | `result-track:7e772be19e71db661e15d2673d2b382643e99448f2ece69beb52c30b78e9f2ed` |
| 6 | `lemma` | [cartanMatrixIn_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrixin-nondegenerate--2b554563d5999ee7308b2c37.md) | 66 | `result-track:2b554563d5999ee7308b2c37f1b0c360dc772f2eb0f358bc4e971ae9948a47f2` |
| 7 | `abbrev` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrix--22bbe306750f1f1368723201.md) | 87 | `declaration-track:22bbe306750f1f1368723201c049435924724d81dc145bd844f54560c117b7d3` |
| 8 | `lemma` | [cartanMatrix_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrix-apply-same--fbf7e6971e550507c80ff890.md) | 93 | `result-track:fbf7e6971e550507c80ff890969e45d5d5c146aa8ac5ffd3236b48b954fbda01` |
| 9 | `lemma` | [cartanMatrix_le_zero_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrix-le-zero-of-ne--e87b4dce72605beaf8112869.md) | 97 | `result-track:e87b4dce72605beaf8112869f4cc09579f19946e84aefa9454a4f6069d8b4b24` |
| 10 | `lemma` | [cartanMatrix_mem_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrix-mem-of-ne--9bbeb502ac933984190a701c.md) | 102 | `result-track:9bbeb502ac933984190a701ca97aa10ebcaaf9ff9e1f968ab619d60d61f19d33` |
| 11 | `lemma` | [cartanMatrix_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/declarations/cartanmatrix-nondegenerate--08fd1ae3d97f2dabbd042bec.md) | 117 | `result-track:08fd1ae3d97f2dabbd042bec93ba68ab47f94fb59e29191632a6e54b09afc14e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
