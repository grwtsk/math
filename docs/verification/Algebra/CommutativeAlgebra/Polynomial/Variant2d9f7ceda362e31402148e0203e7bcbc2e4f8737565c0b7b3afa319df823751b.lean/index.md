# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87537892d353db838d46a2848ff912c9edef8b8c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87537892d353db838d46a2848ff912c9edef8b8c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Inductions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Splits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuous-eval--3a18d752ba31978b8b94b792.md) | 49 | `result-track:3a18d752ba31978b8b94b7927c93c1c6f05ce66af363e44e6d6435b23ae62681` |
| 2 | `theorem` | [continuous](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuous--61097d75b0b1383339593c91.md) | 56 | `result-track:61097d75b0b1383339593c91c151b0c26cfcf40ef5d442a70c5a5750ec8c84cb` |
| 3 | `theorem` | [continuousAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuousat--8e58eec892a09947b77229b8.md) | 60 | `result-track:8e58eec892a09947b77229b8716d461544ed693a86a6813973e82753f7c3fa62` |
| 4 | `theorem` | [continuousWithinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuouswithinat--b4f23124b713e7ba3b23660a.md) | 64 | `result-track:b4f23124b713e7ba3b23660a548988d7740e770fb5250ae0ca0107c8d241e7e7` |
| 5 | `theorem` | [continuousOn](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuouson--24fced2a130915207d8c3c66.md) | 68 | `result-track:24fced2a130915207d8c3c663c1ca8d41b91abf89be7fac85ca0c1ed54f34a6c` |
| 6 | `theorem` | [continuous_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuous-aeval--0c1f0ac78251f83dfd533ed9.md) | 80 | `result-track:0c1f0ac78251f83dfd533ed9f118df6f45251c61c4099c04a01c3a097cedcd4d` |
| 7 | `theorem` | [continuousAt_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuousat-aeval--9ef423575e3eee896aefa5a5.md) | 84 | `result-track:9ef423575e3eee896aefa5a5fdf6ab7a079d135c9a01ec81e4b5589b937561b4` |
| 8 | `theorem` | [continuousWithinAt_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuouswithinat-aeval--9d90b837dea83276d02dd980.md) | 88 | `result-track:9d90b837dea83276d02dd9801de7fe851a9cfa558f76f49a599dea442becd16c` |
| 9 | `theorem` | [continuousOn_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/continuouson-aeval--8f65c8c1369b52926ac422e7.md) | 93 | `result-track:8f65c8c1369b52926ac422e741d6767e1fc09754c645c8e5479e34d6bc9df3db` |
| 10 | `theorem` | [tendsto_abv_eval₂_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/tendsto-abv-eval-attop--eb47c6dda5d1f2aefb1fa279.md) | 99 | `result-track:eb47c6dda5d1f2aefb1fa279685978ceffc4b0b2379d2d66a85b08ee326553c2` |
| 11 | `theorem` | [tendsto_abv_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/tendsto-abv-attop--2803eae96d34b45fd7ec6900.md) | 117 | `result-track:2803eae96d34b45fd7ec69006d37928f8ee9256740725694242f74e4913c52a5` |
| 12 | `theorem` | [tendsto_abv_aeval_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/tendsto-abv-aeval-attop--a2bc46b0ac98e1f7683e625c.md) | 124 | `result-track:a2bc46b0ac98e1f7683e625c17756cc1190f6771964dbef9cfd8e48be39f3710` |
| 13 | `theorem` | [tendsto_norm_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/tendsto-norm-attop--fa9eaab45c8d68c0fa489132.md) | 133 | `result-track:fa9eaab45c8d68c0fa4891327781dddeefda6507e953e75caea86b3f3fe9e50a` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/exists-forall-norm-le--06bc7a2ac1a96e9c4aea9284.md) | 138 | `result-track:06bc7a2ac1a96e9c4aea92843e40d8a6f0fa2f7070df50e0364b166654129740` |
| 15 | `theorem` | [eq_one_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/eq-one-of-roots-le--adc485fdf11043974adf8fc6.md) | 153 | `result-track:adc485fdf11043974adf8fc60e923cb6905a90da949c964c120a694643cca36a` |
| 16 | `theorem` | [coeff_le_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/coeff-le-of-roots-le--2fffde52dfc6e9552dd8d44e.md) | 162 | `result-track:2fffde52dfc6e9552dd8d44e64b3c9002f41ec0850ce8215640d7579ca929d23` |
| 17 | `theorem` | [coeff_bdd_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/declarations/coeff-bdd-of-roots-le--3682d581486448341b17d24f.md) | 192 | `result-track:3682d581486448341b17d24fc00025e590150522e898885d781cafcac6d35b3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
