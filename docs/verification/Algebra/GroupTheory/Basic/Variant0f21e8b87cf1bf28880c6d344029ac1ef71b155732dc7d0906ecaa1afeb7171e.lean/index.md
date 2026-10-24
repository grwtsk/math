# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76bb928f2c5677c47d969c522d3d05f804cc6a79",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76bb928f2c5677c47d969c522d3d05f804cc6a79`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/tounits--afc04b218b9bc2f6623f6429.md) | 19 | `declaration-track:afc04b218b9bc2f6623f642932719bc7dd4dcc4bc4a799320a85ab30f88a0ffd` |
| 2 | `theorem` | [coe_toUnits](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/coe-tounits--6d153908cac68d086b80170b.md) | 29 | `result-track:6d153908cac68d086b80170b695e3e086b3ed4ecbe5715dbae3439d42f4b23d7` |
| 3 | `def` | [mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mapequiv--f11f3f67c01c34bc4288ad8e.md) | 40 | `declaration-track:f11f3f67c01c34bc4288ad8e6a8179e8a7972b0e502753fe272adb5f5d16ab88` |
| 4 | `theorem` | [mapEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mapequiv-symm--0ee22c031f6d295ca5ca92a2.md) | 48 | `result-track:0ee22c031f6d295ca5ca92a290232be9699b40dce1f403d37ab874ca51550abf` |
| 5 | `theorem` | [coe_mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/coe-mapequiv--d4754d4809689b191c15efc8.md) | 53 | `result-track:d4754d4809689b191c15efc89c51a264562caf187da069e3164122195e84e00a` |
| 6 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulleft--ba4e452177b150dd85ef03b0.md) | 60 | `declaration-track:ba4e452177b150dd85ef03b05c3e05a52ea966caaaa2a430d299f2f01156b60c` |
| 7 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulleft-symm--9de059604ec8574d43b84ae1.md) | 71 | `result-track:9de059604ec8574d43b84ae1c29f647968a1cd5d496240ee7f2bca0b247e3c23` |
| 8 | `theorem` | [mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulleft-bijective--d1d14c63a5cbe92c1fafe625.md) | 77 | `result-track:d1d14c63a5cbe92c1fafe625e343caa29d530222087ae59ab1fcc4dd4f5cb8c4` |
| 9 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulright--255afb4f7cb56db24d02dae4.md) | 85 | `declaration-track:255afb4f7cb56db24d02dae40a4d6900527fa18c0aa8e6ee505224256b87ed60` |
| 10 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulright-symm--5c15f6fd7ee01167bbcd05f2.md) | 96 | `result-track:5c15f6fd7ee01167bbcd05f2772044cd0cbe2cae0680c5edc1171fba1c8bbec7` |
| 11 | `theorem` | [mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulright-bijective--6e4ee4ab15ae41ee8695100d.md) | 102 | `result-track:6e4ee4ab15ae41ee8695100d57705e942f2aaa4866da7802b852ba11bebb6ae5` |
| 12 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulleft--4d298cce6e3a6f177de0c909.md) | 117 | `declaration-track:4d298cce6e3a6f177de0c9094daed2162f8caf4f4914860191c23affa3d421de` |
| 13 | `theorem` | [coe_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/coe-mulleft--84ea2a7e59e77e3d644ca154.md) | 123 | `result-track:84ea2a7e59e77e3d644ca1540ad0bf68dfe7358dd825f7e1efeb1282bd832578` |
| 14 | `theorem` | [mulLeft_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulleft-symm-apply--abbd5466416499307ba5adfe.md) | 133 | `result-track:abbd5466416499307ba5adfeb3f5135ba4efc93f971c7b21a6616198d122d133` |
| 15 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulleft-symm--6a4ddb19ddc232e727861088.md) | 139 | `result-track:6a4ddb19ddc232e72786108809637b014ff2d43e3a808acfc104684863f7eb49` |
| 16 | `theorem` | [_root_.Group.mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/root-group-mulleft-bijective--c12ce56be5667590384a4c21.md) | 145 | `result-track:c12ce56be5667590384a4c210769be0af57f4bb1d16bac9163b2d2f82886d0f2` |
| 17 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulright--de3fd75bd4cd28e622395ed0.md) | 152 | `declaration-track:de3fd75bd4cd28e622395ed09dec4ab9872e2130be85c1058a0ba8c91540a6b2` |
| 18 | `theorem` | [coe_mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/coe-mulright--9ea552bee14a11e529b278e0.md) | 158 | `result-track:9ea552bee14a11e529b278e0231ac41fd6d70cefa9ee012c11f44407e4c99986` |
| 19 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulright-symm--6dd3baaba933de03ab2a115e.md) | 164 | `result-track:6dd3baaba933de03ab2a115ed053ce8436832457b69978ca8b0a7b8b3a3f98b9` |
| 20 | `theorem` | [mulRight_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulright-symm-apply--51c1838241f753d8409d7320.md) | 172 | `result-track:51c1838241f753d8409d7320e9a93ccce278a59b3ad0e3908c747c7af7fcff6c` |
| 21 | `theorem` | [_root_.Group.mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/root-group-mulright-bijective--83677026801fca5bea00ebc5.md) | 178 | `result-track:83677026801fca5bea00ebc552e76dfcf0e03c2d0749303f02b329e3737096de` |
| 22 | `def` | [divLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/divleft--31e3a82c2091bf67910116ca.md) | 185 | `declaration-track:31e3a82c2091bf67910116ca0ab86f8ade33f2f5839d98d082e4ecf00e55fe7f` |
| 23 | `theorem` | [divLeft_eq_inv_trans_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/divleft-eq-inv-trans-mulleft--6eec37fbb1f13f8ea5f3e790.md) | 198 | `result-track:6eec37fbb1f13f8ea5f3e790951f2812bb4384e6812d1e863ba866974074aa73` |
| 24 | `def` | [divRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/divright--e596ab15e8b3d6badd6c1a4c.md) | 206 | `declaration-track:e596ab15e8b3d6badd6c1a4c80c63c93588b66daa804a97f9f42edc65dd74c9b` |
| 25 | `theorem` | [divRight_eq_mulRight_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/divright-eq-mulright-inv--8579b99ad32a623032d8fcb1.md) | 220 | `result-track:8579b99ad32a623032d8fcb11902482dcbaa59d468e2f6e9a6faf345cc9cd432` |
| 26 | `def` | [MulEquiv.inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulequiv-inv--4308f9947be6cc9c0ec6b6e0.md) | 237 | `declaration-track:4308f9947be6cc9c0ec6b6e0b28ff5c4c74a3f66dc5ba907d3cc79fe33a09d34` |
| 27 | `theorem` | [MulEquiv.inv_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant0f21e8b87cf1bf28880c6d344029ac1ef71b155732dc7d0906ecaa1afeb7171e.lean/declarations/mulequiv-inv-symm--e6ae0df89efcb75f08a1a17a.md) | 245 | `result-track:e6ae0df89efcb75f08a1a17af81c4b05f37683c17656563aae8202a09092da4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
