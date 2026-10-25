# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Impartial.Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "906c8e7d4f47e6da33446b703c90089f34b6e255",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `906c8e7d4f47e6da33446b703c90089f34b6e255`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NthRewrite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ImpartialAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartialaux--d986c49cb2dc45a162a632cd.md) | 28 | `declaration-track:d986c49cb2dc45a162a632cd26133a7df04c49a3e51f130154019bc13f02beb4` |
| 2 | `class` | [Impartial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial--aa5c46ea73dc2236325410e7.md) | 40 | `declaration-track:aa5c46ea73dc2236325410e7a2ae1ca02a76fadfa6b917aa592690282ff59286` |
| 3 | `theorem` | [impartial_iff_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial-iff-aux--a2f261fc9ac1ef2d5744972c.md) | 43 | `result-track:a2f261fc9ac1ef2d5744972c60981b806cc8b476d77da9cea77f23beffe6bfce` |
| 4 | `theorem` | [impartial_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial-def--23c9968313b29b6b4e13c094.md) | 46 | `result-track:23c9968313b29b6b4e13c094148f7c9e0ed1e4cbc2b3bf6ea9f416f57f6446cd` |
| 5 | `instance` | [impartial_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial-zero--3032f1f33c012b00dd611ae0.md) | 53 | `declaration-track:3032f1f33c012b00dd611ae0914a1815b5998b3821d9d0c6607eabe07edd6c6a` |
| 6 | `instance` | [impartial_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial-star--787f9e2333926d5f8833f0ac.md) | 57 | `declaration-track:787f9e2333926d5f8833f0acbc2eaa54937c0de9e21523e4f3dc833dd4c707bf` |
| 7 | `theorem` | [neg_equiv_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/neg-equiv-self--f0e66442196a3ca3c029c9ec.md) | 61 | `result-track:f0e66442196a3ca3c029c9ec8ca6ea5b5acf75c8029eef90c267a91722f5efe3` |
| 8 | `theorem` | [mk'_neg_equiv_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/mk-neg-equiv-self--88f2049ced19e0c1b86a8906.md) | 65 | `result-track:88f2049ced19e0c1b86a890626aaede080ef94fcc232b168cadc7fb5e10bdade` |
| 9 | `instance` | [moveLeft_impartial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/moveleft-impartial--4d6542096da87b81585f0d4e.md) | 68 | `declaration-track:4d6542096da87b81585f0d4e826f59f94ce349bbc6ca78b674fee3820263cffb` |
| 10 | `instance` | [moveRight_impartial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/moveright-impartial--d3840ded8ec526bd6fdd3e5e.md) | 72 | `declaration-track:d3840ded8ec526bd6fdd3e5ef4b7e38e99d3ede6026a53b335bcb6a657aedf44` |
| 11 | `theorem` | [impartial_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial-congr--cd0a0a7968026bebaf7473dd.md) | 76 | `result-track:cd0a0a7968026bebaf7473dd2094e8169b4407a45249b8bb2e9d5ac651cc8b6e` |
| 12 | `instance` | [impartial_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial-add--9637f49711246425f748f49e.md) | 82 | `declaration-track:9637f49711246425f748f49e4d4453df554d30edb9c8d81babd737113250d5e1` |
| 13 | `instance` | [impartial_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/impartial-neg--47c22fdc1b33f76e611a99f8.md) | 96 | `declaration-track:47c22fdc1b33f76e611a99f8ce7151b009c8d97b8e75607d43ff4909044208a6` |
| 14 | `theorem` | [nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/nonpos--4c42fa6decac7830aafd5951.md) | 109 | `result-track:4c42fa6decac7830aafd595115cb86d348ed40439d6c0994f290fa6d421f3726` |
| 15 | `theorem` | [nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/nonneg--516b863e13490e2f92f3d6b7.md) | 113 | `result-track:516b863e13490e2f92f3d6b7bf912d656a7b64997967ac159d64d7da3fffffe6` |
| 16 | `theorem` | [equiv_or_fuzzy_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/equiv-or-fuzzy-zero--de3fed2905277aa5ab3215de.md) | 117 | `result-track:de3fed2905277aa5ab3215deff60270fd04adb7958d8dc70f56aa5fbe34c86cf` |
| 17 | `theorem` | [not_equiv_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/not-equiv-zero-iff--f39305e2e82ab510969e32f0.md) | 125 | `result-track:f39305e2e82ab510969e32f0f865d0eb860f868ca47a454606f94f0f136a5ed4` |
| 18 | `theorem` | [not_fuzzy_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/not-fuzzy-zero-iff--0c5dadeab8bc3a0b21dcc82b.md) | 129 | `result-track:0c5dadeab8bc3a0b21dcc82b212f56771fac02e442a7098bceba8f030977f7f5` |
| 19 | `theorem` | [add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/add-self--e5a4a43b9d54395a8e2263b0.md) | 132 | `result-track:e5a4a43b9d54395a8e2263b048f5e2d0565d53c6b3e948d3fe4fdec9cffc89f7` |
| 20 | `theorem` | [mk'_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/mk-add-self--94a289b1e1448b44375077f2.md) | 136 | `result-track:94a289b1e1448b44375077f2e282d7e0f6b143b78cd747afe72b6a9f7ccd25ea` |
| 21 | `theorem` | [equiv_iff_add_equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/equiv-iff-add-equiv-zero--4ce3085e518f4844487848ad.md) | 140 | `result-track:4ce3085e518f4844487848ad24156a466fdb8d7b8fc162f6d8fb889168bdfa64` |
| 22 | `theorem` | [equiv_iff_add_equiv_zero'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/equiv-iff-add-equiv-zero--06455937ccc73fd9590b6c55.md) | 145 | `result-track:06455937ccc73fd9590b6c5555bfafda6a4927975b7c8a54fd39e2e454ca1f95` |
| 23 | `theorem` | [le_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/le-zero-iff--da91d2ac67f85d5c70943f78.md) | 149 | `result-track:da91d2ac67f85d5c70943f78e4d9a6eaadf3abe1731275da36226f9020ae7b22` |
| 24 | `theorem` | [lf_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/lf-zero-iff--8c7321492987cdf4bae6f1e8.md) | 152 | `result-track:8c7321492987cdf4bae6f1e8061bd281dfc2829d1bde7952a0a3804ca3bda61a` |
| 25 | `theorem` | [equiv_zero_iff_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/equiv-zero-iff-le--46329d8236f22ed839eddf78.md) | 155 | `result-track:46329d8236f22ed839eddf782e95e60b4a3bbc0530268f3ba0870c8193ffef4c` |
| 26 | `theorem` | [fuzzy_zero_iff_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/fuzzy-zero-iff-lf--6e0e190b00755f6bd2ec0e4d.md) | 158 | `result-track:6e0e190b00755f6bd2ec0e4d010d2fdf3c3f028c2b4fd73cae8a2935f3cefb7b` |
| 27 | `theorem` | [equiv_zero_iff_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/equiv-zero-iff-ge--74567ccca7943a8a8ad05b35.md) | 161 | `result-track:74567ccca7943a8a8ad05b350cd31f8bbabacbbb5a6b9ad9cac874d0dda62ffb` |
| 28 | `theorem` | [fuzzy_zero_iff_gf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/fuzzy-zero-iff-gf--318f38b5162c32edd57175c2.md) | 164 | `result-track:318f38b5162c32edd57175c2bad42bf8e414be965d4da2bf0953c1828261e46b` |
| 29 | `theorem` | [forall_leftMoves_fuzzy_iff_equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/forall-leftmoves-fuzzy-iff-equiv-zero--1b5c26b1e6762a9bcdbbed57.md) | 167 | `result-track:1b5c26b1e6762a9bcdbbed57087d5db56d36d2c50c1c18001fe406bc223e2ec9` |
| 30 | `theorem` | [forall_rightMoves_fuzzy_iff_equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/forall-rightmoves-fuzzy-iff-equiv-zero--0a75c77fb587183e052947a0.md) | 174 | `result-track:0a75c77fb587183e052947a0a63266ba769d31303aa19a318e9b0afa4aa6c0be` |
| 31 | `theorem` | [exists_left_move_equiv_iff_fuzzy_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/exists-left-move-equiv-iff-fuzzy-zero--013f537e173a9cdb95b31dc9.md) | 181 | `result-track:013f537e173a9cdb95b31dc9411e6fad7a673be0abc0eb956b4c019e473c2b23` |
| 32 | `theorem` | [exists_right_move_equiv_iff_fuzzy_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Impartial/Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01.lean/declarations/exists-right-move-equiv-iff-fuzzy-zero--66ac1f0c23773763685d574c.md) | 187 | `result-track:66ac1f0c23773763685d574ce64fc5321616e4cea6f1b341b61bf05c8feee808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
