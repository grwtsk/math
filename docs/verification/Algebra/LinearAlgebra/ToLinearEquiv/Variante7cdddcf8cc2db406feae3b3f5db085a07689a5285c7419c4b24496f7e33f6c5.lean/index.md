# Verification target: GRWTSK.Algebra.LinearAlgebra.ToLinearEquiv.Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLinearEquiv'](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/tolinearequiv--ec66dab052fe4428cc48fbf1.md) | 51 | `declaration-track:ec66dab052fe4428cc48fbf1a283cd247a68d747ed98dc89d32521dd8cb6b7b2` |
| 2 | `theorem` | [toLinearEquiv'_apply](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/tolinearequiv-apply--752e31bc4f0662c9d7fd2d52.md) | 56 | `result-track:752e31bc4f0662c9d7fd2d5233c6bdbf587cc57411a53ebbc593176f4888d722` |
| 3 | `theorem` | [toLinearEquiv'_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/tolinearequiv-symm-apply--da5b3b5905073e461faa653a.md) | 61 | `result-track:da5b3b5905073e461faa653a7aa5c3e19c154e7a4d4dd5f822d2b10e1012bf0c` |
| 4 | `def` | [toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/tolinearequiv--068d733f6994daf1ee2e8870.md) | 77 | `declaration-track:068d733f6994daf1ee2e8870f1a5b3cdb222c43a6b8cdcefa0f06e609f744c55` |
| 5 | `theorem` | [ker_toLin_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/ker-tolin-eq-bot--ea16b2c67e731b080d0b3c8f.md) | 89 | `result-track:ea16b2c67e731b080d0b3c8f5bdd6d4341da998db631a159da5d5c6810c1dc67` |
| 6 | `theorem` | [range_toLin_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/range-tolin-eq-top--42d234c7335d62abe96fa747.md) | 93 | `result-track:42d234c7335d62abe96fa747a7a8dd44dc1b3a25f7c47d71b15c76587207c4a9` |
| 7 | `theorem` | [exists_mulVec_eq_zero_iff_aux](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/exists-mulvec-eq-zero-iff-aux--bff20c55b4d01aaa35de412a.md) | 105 | `result-track:bff20c55b4d01aaa35de412a3e48674548af71c8c98582dc8a3bfa65ace61581` |
| 8 | `theorem` | [exists_mulVec_eq_zero_iff'](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/exists-mulvec-eq-zero-iff--76077c467855f7629337014e.md) | 125 | `result-track:76077c467855f7629337014e080b31aa223cecfd9ca5cd2c2aef2d20081d9e08` |
| 9 | `theorem` | [exists_mulVec_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/exists-mulvec-eq-zero-iff--49eb87bfe9c930ac9fb838e6.md) | 159 | `result-track:49eb87bfe9c930ac9fb838e641dfe0c43d8336b58e544da020c7f3bb2f97efdc` |
| 10 | `theorem` | [exists_vecMul_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/exists-vecmul-eq-zero-iff--c268063fb0a5c54a79c302bb.md) | 163 | `result-track:c268063fb0a5c54a79c302bbeaa7af63ee163cfee3448eba2ea66514553e96b6` |
| 11 | `theorem` | [nondegenerate_iff_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/nondegenerate-iff-det-ne-zero--b5141e1c4ba07d20df9a8461.md) | 167 | `result-track:b5141e1c4ba07d20df9a8461f65918d01e90a51017318a2a3213c7ec3bb4b669` |
| 12 | `theorem` | [Nondegenerate.mul_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/nondegenerate-mul-iff-right--957a85011012f097f8a07c42.md) | 180 | `result-track:957a85011012f097f8a07c42e244b03dd3ca6381ab1f1cc56dc380c421f7c9dd` |
| 13 | `theorem` | [Nondegenerate.mul_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/nondegenerate-mul-iff-left--87c52d11d318ee56978b083d.md) | 187 | `result-track:87c52d11d318ee56978b083d559385d28a06c8846c05f69f36dc3f51e754a716` |
| 14 | `theorem` | [Nondegenerate.smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/nondegenerate-smul-iff--d20caa6890fdd5d9bc3f99ae.md) | 195 | `result-track:d20caa6890fdd5d9bc3f99ae90514f9c4e1056069dd74aec1aee3b82b2d5a8cc` |
| 15 | `lemma` | [det_ne_zero_of_sum_col_pos](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/det-ne-zero-of-sum-col-pos--4d811fb2d07d9bec2848a974.md) | 213 | `result-track:4d811fb2d07d9bec2848a974ad5ab21d011ca82da7ffbc1828d527898b446063` |
| 16 | `lemma` | [det_ne_zero_of_sum_row_pos](../../../../../mathematics/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/declarations/det-ne-zero-of-sum-row-pos--ceb95ec81a71bf645b49ef33.md) | 242 | `result-track:ceb95ec81a71bf645b49ef331f0a02f4d15d5d3d5ee418f6d5d0f621c8b78291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
