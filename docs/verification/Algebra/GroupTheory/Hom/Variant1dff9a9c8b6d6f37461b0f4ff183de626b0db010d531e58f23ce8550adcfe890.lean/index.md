# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d70a7c823df7189b10ed744a2e4bad1444baf0de",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d70a7c823df7189b10ed744a2e4bad1444baf0de`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_nat'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/ext-nat--5b53307e026a3cb1be66139e.md) | 33 | `result-track:5b53307e026a3cb1be66139e5c4e42f6db3bacf9cafbe7cbf26312b9b9cf468f` |
| 2 | `lemma` | [AddMonoidHom.ext_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/addmonoidhom-ext-nat--4b3aa92d97c0b2ca73495102.md) | 42 | `result-track:4b3aa92d97c0b2ca73495102707a6af3e68b603fe813ba63904082a1370063c4` |
| 3 | `def` | [multiplesHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/multipleshom--4fe026388be439ca2a533f28.md) | 52 | `declaration-track:4fe026388be439ca2a533f28c950bc2c4dc40642e0ed45c90c73bcc4ff535184` |
| 4 | `lemma` | [multiplesHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/multipleshom-apply--540ecd1a1771cf43aa5a9045.md) | 61 | `result-track:540ecd1a1771cf43aa5a90457c054015a136b339526454c97aa2b9b04a8b7d3e` |
| 5 | `lemma` | [multiplesHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/multipleshom-symm-apply--3af9897283d2727abb77544c.md) | 63 | `result-track:3af9897283d2727abb77544c9ed1904374c6d3071e49d528087dff4ab4c346a4` |
| 6 | `lemma` | [AddMonoidHom.apply_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/addmonoidhom-apply-nat--b53d2f0a12c61ecd2185d9b3.md) | 65 | `result-track:b53d2f0a12c61ecd2185d9b31df3e9b1ded1ad3ebe1ff28b044114807e93e2e5` |
| 7 | `def` | [powersHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/powershom--26431c75231dca61abb9ed4e.md) | 76 | `declaration-track:26431c75231dca61abb9ed4e5e0ea3b770b7f270d52bce5c6e9da933594eb353` |
| 8 | `lemma` | [powersHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/powershom-apply--c9b1eaff932125b5448e3d4b.md) | 79 | `result-track:c9b1eaff932125b5448e3d4bd4f50682e15552705f104cc5b851198bc3749b6f` |
| 9 | `lemma` | [powersHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/powershom-symm-apply--0606fc24d1057b0b6669a7b8.md) | 82 | `result-track:0606fc24d1057b0b6669a7b88fe32e2df6a9f0ba08826d94517438cf4515161e` |
| 10 | `lemma` | [MonoidHom.apply_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/monoidhom-apply-mnat--18e498e73c99e040bca6f313.md) | 85 | `result-track:18e498e73c99e040bca6f313f5e4dfa8edc174aac514e19ed2950aa1f026228e` |
| 11 | `lemma` | [MonoidHom.ext_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/monoidhom-ext-mnat--979076cc156368c04cd33fba.md) | 90 | `result-track:979076cc156368c04cd33fba8827805317b1a476eb6f87758f6cb2ea487cde26` |
| 12 | `def` | [multiplesAddHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/multiplesaddhom--f6c0c88f58548fefffee67f8.md) | 101 | `declaration-track:f6c0c88f58548fefffee67f8372656c95d262417775b57a2e37294a8eddc8e2e` |
| 13 | `lemma` | [multiplesAddHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/multiplesaddhom-apply--8e9a359733df2748b08a5739.md) | 105 | `result-track:8e9a359733df2748b08a5739f39883d7a2d72224fdaacee986f295e5b1a19ca5` |
| 14 | `lemma` | [multiplesAddHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/multiplesaddhom-symm-apply--3e20b8e0011c362670c63a55.md) | 107 | `result-track:3e20b8e0011c362670c63a55ca4a37eb0327bc370bcabdfb5dde3d25a76f14b8` |
| 15 | `def` | [powersMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/powersmulhom--45fd8cb39ecf1ac6f0e88251.md) | 116 | `declaration-track:45fd8cb39ecf1ac6f0e88251ad74059284f435560e902fdc1dc43a795c16e61e` |
| 16 | `lemma` | [powersMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/powersmulhom-apply--fae04f6fc2087d3b13324990.md) | 121 | `result-track:fae04f6fc2087d3b1332499038a6b34bbe281a05c10070609b7a6bcf48e90e92` |
| 17 | `lemma` | [powersMulHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1dff9a9c8b6d6f37461b0f4ff183de626b0db010d531e58f23ce8550adcfe890.lean/declarations/powersmulhom-symm-apply--242551529e1ad9312bd3ee44.md) | 124 | `result-track:242551529e1ad9312bd3ee44c12b70fb548b7f0fa9dded8de9999bdd68b7f647` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
