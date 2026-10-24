# Verification target: GRWTSK.Algebra.UniversalAlgebra.DualNumber.Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eca2386d15669218f692f9df2d33936193c3315",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eca2386d15669218f692f9df2d33936193c3315`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.TrivSqZeroExt` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DualNumber](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/dualnumber--df86b806babf9c68766b2938.md) | 42 | `declaration-track:df86b806babf9c68766b29386134673be11a0361f4688a8ae971acd0dbf9630c` |
| 2 | `def` | [DualNumber.eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/dualnumber-eps--0a3c846f972fa88601471a87.md) | 46 | `declaration-track:0a3c846f972fa88601471a87730525aa3c2c5e92f5b82e1ddc143b975ff87aa5` |
| 3 | `theorem` | [fst_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/fst-eps--fefbdb026e983c6299f7913c.md) | 62 | `result-track:fefbdb026e983c6299f7913c0793cf3dc918bf7278d3e46ca1cfada845e88279` |
| 4 | `theorem` | [snd_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/snd-eps--3a8284bac4fde6640f952253.md) | 66 | `result-track:3a8284bac4fde6640f952253ecfd87d0b697b7789fc638025725d9892a24313a` |
| 5 | `theorem` | [snd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/snd-mul--efd87da7beea073b09f6ac7c.md) | 71 | `result-track:efd87da7beea073b09f6ac7cf347fa165541fc351cbd5a772b2dde4863363dda` |
| 6 | `theorem` | [eps_mul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/eps-mul-eps--339ad2e7a2c87a542cf919eb.md) | 75 | `result-track:339ad2e7a2c87a542cf919eba3060664755fcdd5433cc281a48358f409a4cfbe` |
| 7 | `theorem` | [inv_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/inv-eps--d9cc7f882374ced9a6f705c4.md) | 79 | `result-track:d9cc7f882374ced9a6f705c435a1961467421120fcc501f332ec67ffe1c6922e` |
| 8 | `theorem` | [inr_eq_smul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/inr-eq-smul-eps--eab82b75a2adedc13dbc630b.md) | 83 | `result-track:eab82b75a2adedc13dbc630baa02cec39b5abf96831924244ae5e40ec8319b8f` |
| 9 | `theorem` | [commute_eps_left](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/commute-eps-left--bce7c24f8cf342713b3b3b39.md) | 87 | `result-track:bce7c24f8cf342713b3b3b3984b84521cd24e1f613a64fd682a5d096e2d02195` |
| 10 | `theorem` | [commute_eps_right](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/commute-eps-right--de29d6a0e9ceedf198736dbf.md) | 91 | `result-track:de29d6a0e9ceedf198736dbff86368913e036fcc532a39b45f5c15375e2b6487` |
| 11 | `theorem` | [algHom_ext'](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/alghom-ext--a7ad538b64572aef02010d18.md) | 98 | `result-track:a7ad538b64572aef02010d18e69644b9ed69c0098f9a081ec749a710f7be3c85` |
| 12 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/alghom-ext--a548b7bc42152177fe29a821.md) | 110 | `result-track:a548b7bc42152177fe29a8213e3295bfbad73f08c28c0c17da3f76c7ecfee51a` |
| 13 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/lift--3683bbd28570bd92bca24f02.md) | 122 | `declaration-track:3683bbd28570bd92bca24f02afabc668de6272079ca42704c6251a970c2a5fed` |
| 14 | `theorem` | [lift_apply_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/lift-apply-apply--64ed6c811e435f624f2e1902.md) | 146 | `result-track:64ed6c811e435f624f2e1902f3ad3ae32f0acc7ff979fe1add5edc1d55402529` |
| 15 | `theorem` | [coe_lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/coe-lift-symm-apply--34de3049dc1a1d5b24f90755.md) | 149 | `result-track:34de3049dc1a1d5b24f907557e82b0ce7e70f8ccc4fe0be2357f7fb5d2656a41` |
| 16 | `theorem` | [lift_apply_inl](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/lift-apply-inl--2cfc843cef3283acd868f0fd.md) | 156 | `result-track:2cfc843cef3283acd868f0fd381f45f226893e24c811c07eb18c6dbd1164adef` |
| 17 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/lift-smul--a119979fa52abb2d062d05ad.md) | 164 | `result-track:a119979fa52abb2d062d05adef565c4886b1b296626cb4bae0e0e8a359a65127` |
| 18 | `theorem` | [lift_op_smul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/lift-op-smul--8ddafd833e1ea78acc37a0ca.md) | 172 | `result-track:8ddafd833e1ea78acc37a0ca383059bd241bf8465dc660317acbfbc3f9ed6c25` |
| 19 | `theorem` | [lift_apply_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/lift-apply-eps--2be905e10be17d8e02d9dbc7.md) | 177 | `result-track:2be905e10be17d8e02d9dbc7528835d8ef40b037ad0ec0e2bc4743d395321c5d` |
| 20 | `theorem` | [lift_inlAlgHom_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/lift-inlalghom-eps--5f4b14dad5c6fb18e07a5ef7.md) | 184 | `result-track:5f4b14dad5c6fb18e07a5ef734ae50621082d359cd9212531cae000361716a40` |
| 21 | `instance` | [instRepr](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant5876677bc289d3eff22d57e735849d669198ee52230177e61c2d2b42179a6aff.lean/declarations/instrepr--628e2b997237dcbecb354748.md) | 189 | `declaration-track:628e2b997237dcbecb3547486b1289ab99a180847a8a26d9343dbeee34c7a2aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
