# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fe9e8aad4c4a5ad8c593ef2b3c88a81fbc77439",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fe9e8aad4c4a5ad8c593ef2b3c88a81fbc77439`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rTensor](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensor--2e0447aa26c2cebadfca87d3.md) | 65 | `declaration-track:2e0447aa26c2cebadfca87d334784ba6f8441fc5b2f17346cc22d300a879bf1c` |
| 2 | `lemma` | [rTensor_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensor-apply-tmul--4eb09b6af306f13dcd9723b1.md) | 69 | `result-track:4eb09b6af306f13dcd9723b1f78163414f149e7535ee21a5d7728e3571c3f674` |
| 3 | `lemma` | [rTensor_apply_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensor-apply-tmul-apply--9fdfe7a50acc688ce8f55c4e.md) | 73 | `result-track:9fdfe7a50acc688ce8f55c4e4defb7603a61a2ea81d1bbb87f9942d71388903b` |
| 4 | `lemma` | [rTensor_apply_monomial_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensor-apply-monomial-tmul--98b0a416ef9558de1e2ec762.md) | 77 | `result-track:98b0a416ef9558de1e2ec762cc635fbf9a976038b71c7aad5674a40236a03e80` |
| 5 | `lemma` | [rTensor_apply_X_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensor-apply-x-tmul--0be4d0cd11d459627b8bee4d.md) | 81 | `result-track:0be4d0cd11d459627b8bee4d9e27955534b0d487a517ab1b24ddcc2a3b14b2ab` |
| 6 | `lemma` | [rTensor_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensor-apply--2a928d16d70bba6c711441fe.md) | 85 | `result-track:2a928d16d70bba6c711441feae3b87b038bc2aada15f2d81232b4e818752063d` |
| 7 | `lemma` | [rTensor_symm_apply_single](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensor-symm-apply-single--ddb5754968a38a9b750d655c.md) | 90 | `result-track:ddb5754968a38a9b750d655c14fa3268e46343a6f7e143bb52dbed5443c8a23a` |
| 8 | `def` | [scalarRTensor](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/scalarrtensor--bb0217a2e6bf3676d8e4338b.md) | 97 | `declaration-track:bb0217a2e6bf3676d8e4338bbeb39d559b3fcb0bb43bcf0d5ffe193070881f32` |
| 9 | `lemma` | [scalarRTensor_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/scalarrtensor-apply-tmul--1bc2b73e4a736781bceefa78.md) | 101 | `result-track:1bc2b73e4a736781bceefa78cc22dfce28ce4217e48f68cb7ec720b55a5e97fb` |
| 10 | `lemma` | [scalarRTensor_apply_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/scalarrtensor-apply-tmul-apply--fbf8901a5a621c334ca4d1af.md) | 105 | `result-track:fbf8901a5a621c334ca4d1afaece45c71ebd6876c7b671cd6efe6c9bb0aab9db` |
| 11 | `lemma` | [scalarRTensor_apply_monomial_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/scalarrtensor-apply-monomial-tmul--b3bd19e13bc2485cc5751aca.md) | 109 | `result-track:b3bd19e13bc2485cc5751aca84456fb9934bc5deffa85579bfb6b909cb46ead6` |
| 12 | `lemma` | [scalarRTensor_apply_X_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/scalarrtensor-apply-x-tmul-apply--c109bbc69c28feaca00fe789.md) | 113 | `result-track:c109bbc69c28feaca00fe7897de621ec634bde5b63d02c4f231e7c242dd060a4` |
| 13 | `lemma` | [scalarRTensor_symm_apply_single](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/scalarrtensor-symm-apply-single--8d6ad02ac50f623538116a74.md) | 117 | `result-track:8d6ad02ac50f623538116a74006cfdcbbeea9c68c98e1e2213ee231cda4cfa54` |
| 14 | `def` | [rTensorAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensoralghom--0bbd8e2433c07f7ea48ce8b5.md) | 129 | `declaration-track:0bbd8e2433c07f7ea48ce8b55f68971123ac38e93e5e9693bf58b4ab06edcb4b` |
| 15 | `lemma` | [coeff_rTensorAlgHom_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/coeff-rtensoralghom-tmul--b7b74e4cea105e8df4a8f7ff.md) | 137 | `result-track:b7b74e4cea105e8df4a8f7ff9e3b1675924677ddfdca3ba3311399ddea6dc79f` |
| 16 | `lemma` | [coeff_rTensorAlgHom_monomial_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/coeff-rtensoralghom-monomial-tmul--1a568573d7fcadee4962d476.md) | 149 | `result-track:1a568573d7fcadee4962d4761409b8b3f345807f46543de891b7cf966852a95f` |
| 17 | `lemma` | [rTensorAlgHom_toLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensoralghom-tolinearmap--1283ef3f2a1660e1b52ae573.md) | 155 | `result-track:1283ef3f2a1660e1b52ae5738a5123fea963ee3345da7a3bf4beeebe2c25542b` |
| 18 | `lemma` | [rTensorAlgHom_apply_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensoralghom-apply-eq--a30809bab6a3a993e5eb4334.md) | 168 | `result-track:a30809bab6a3a993e5eb4334667112c89785653db403d10288a5427c702e5c1d` |
| 19 | `def` | [rTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensoralgequiv--8362b343588d950e9fe84a92.md) | 175 | `declaration-track:8362b343588d950e9fe84a92cad8afc44e2077195aa165c2988f91279ffd4af3` |
| 20 | `lemma` | [rTensorAlgEquiv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/rtensoralgequiv-apply--511bdbb62f3390630c828968.md) | 188 | `result-track:511bdbb62f3390630c82896886c61710484cd64b965522bf6747d17190b7c214` |
| 21 | `def` | [scalarRTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/scalarrtensoralgequiv--884ffbefc9d1156bbe37399a.md) | 197 | `declaration-track:884ffbefc9d1156bbe37399aae8225fde8508e06e0684ec0f7c29ad567566c21` |
| 22 | `def` | [algebraTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/algebratensoralgequiv--238349f3d012140306f74d08.md) | 208 | `declaration-track:238349f3d012140306f74d08158e2987a34e9e9522cac12bd54de8dc4ba163b0` |
| 23 | `lemma` | [algebraTensorAlgEquiv_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/algebratensoralgequiv-tmul--6a0dd2b5c6054dd0c2e6be78.md) | 218 | `result-track:6a0dd2b5c6054dd0c2e6be78c31ab1b19eca734d19885e1f9fe231e0d538c397` |
| 24 | `lemma` | [algebraTensorAlgEquiv_symm_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/algebratensoralgequiv-symm-x--9524379ab8a5406164a05809.md) | 224 | `result-track:9524379ab8a5406164a05809fed6e76993394dda567507321f376f46350c6ff5` |
| 25 | `lemma` | [algebraTensorAlgEquiv_symm_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/algebratensoralgequiv-symm-monomial--1f241843067f17e992a3daa9.md) | 229 | `result-track:1f241843067f17e992a3daa9e91e2f1d093ad886991bad55fe52a17c3bf3c322` |
| 26 | `lemma` | [aeval_one_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/aeval-one-tmul--c008b8ac3d0a5864f21a27cd.md) | 240 | `result-track:c008b8ac3d0a5864f21a27cd437d01163b5baf65cbe1bb340ac44daa673821c7` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/instance--30b28e2e3ac9306d5fc01364.md) | 254 | `declaration-track:30b28e2e3ac9306d5fc01364d482289cf0f4e7607dd4bd321eeb9654397aa2b8` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean/declarations/instance--e48947633a572cd7bb50a4f6.md) | 257 | `declaration-track:e48947633a572cd7bb50a4f64ff049153c6916527fd76ff793f7431c0229390b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
