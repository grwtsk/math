# Verification target: GRWTSK.Analysis.Fourier.ZModCharacterEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "425592aaa63e5fc93d0e3a9db0ffb4d360f491fc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModCharacterEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `425592aaa63e5fc93d0e3a9db0ffb4d360f491fc`.

Source path: `GRWTSK/Analysis/Fourier/ZModCharacterEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModCharacterEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.ZMod` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modularDistance](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance--8c78e629170d0083c779a91b.md) | 25 | `declaration-track:8c78e629170d0083c779a91bdb5ff5c231356c25a27acce353f791ed8b4af09a` |
| 2 | `theorem` | [normalized_val_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/normalized-val-nonneg--6a85089f0188f12a7f63d4b6.md) | 29 | `result-track:6a85089f0188f12a7f63d4b6511e81e936be8d26404dc63a77eba8fce610ea32` |
| 3 | `theorem` | [normalized_val_lt_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/normalized-val-lt-one--cab47ef1c52a27eb2857e46b.md) | 31 | `result-track:cab47ef1c52a27eb2857e46bb4bcdf10eae5fed98998b33059c1ec58c1d1b423` |
| 4 | `theorem` | [modularDistance_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-nonneg--eb4cd3c94339efebe9ea553e.md) | 36 | `result-track:eb4cd3c94339efebe9ea553e5aedf2ef67ab85ecb0e5ba67f71d8a4c9298486e` |
| 5 | `theorem` | [modularDistance_le_half](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-le-half--26741a4110467eb55d7c67e5.md) | 40 | `result-track:26741a4110467eb55d7c67e53659274db90e14203279339aeb7da3ddf637856a` |
| 6 | `theorem` | [modularDistance_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-zero--cff7646abec9870ea2a5c161.md) | 47 | `result-track:cff7646abec9870ea2a5c1617b6b10cc261b3546d42556573d340b30662a6bef` |
| 7 | `theorem` | [modularDistance_le_abs_sub_int](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-le-abs-sub-int--0d995bb72da5ed8db82ffd82.md) | 52 | `result-track:0d995bb72da5ed8db82ffd824832e62afd1d1af641c837372be1d79ab796afa9` |
| 8 | `theorem` | [modularDistance_attained](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-attained--d5407dad78032edf594eb9a0.md) | 63 | `result-track:d5407dad78032edf594eb9a0115c54502b124810363d255a94b6b73a15029620` |
| 9 | `theorem` | [stdAddChar_re](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/stdaddchar-re--2d8c11ee82c0ac694c19b628.md) | 75 | `result-track:2d8c11ee82c0ac694c19b628d6841bacd2917d920f2b93ca570404ffd4c1df85` |
| 10 | `theorem` | [cos_two_pi_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/cos-two-pi-le--279388e1ace1f5dd8070dea0.md) | 82 | `result-track:279388e1ace1f5dd8070dea02a524e8a7d27848863294fe636907e3aa1d067b3` |
| 11 | `theorem` | [stdAddChar_re_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/stdaddchar-re-le--ada57e1190982ce2def4a946.md) | 96 | `result-track:ada57e1190982ce2def4a946730385fd34ee375d88cfaea516a271c75f6e47ad` |
| 12 | `theorem` | [one_sub_modularDistance_sq_le_stdAddChar_re](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/one-sub-modulardistance-sq-le-stdaddchar-re--01d509bec58f355140cc50d2.md) | 111 | `result-track:01d509bec58f355140cc50d204f9c5b61983e5757dc28fd1ca92c38e97ccfa9a` |
| 13 | `theorem` | [modularDistance_add_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-add-le--037597eb3aee818933e6f926.md) | 132 | `result-track:037597eb3aee818933e6f9260a45f7140a711694a43263acb4383642a671931f` |
| 14 | `theorem` | [modularDistance_sum_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-sum-le--b890ca493d3224a98b78efd5.md) | 160 | `result-track:b890ca493d3224a98b78efd515f71051c24f247d5994367008bbf0c174d31942` |
| 15 | `theorem` | [modularDistance_sum_sq_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/modulardistance-sum-sq-le--c03125812d2d4312f540f688.md) | 170 | `result-track:c03125812d2d4312f540f688bb6c2f4768386281ef635ace0602dc50c1f9949b` |
| 16 | `def` | [characterAverage](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/characteraverage--c59cc98e5e5e11f961de093e.md) | 177 | `declaration-track:c59cc98e5e5e11f961de093e202d163e01dde4099a6d94678716dd15443fc26b` |
| 17 | `def` | [pairEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/pairenergy--a7ddd3eec7d1eb9b7e36139c.md) | 181 | `declaration-track:a7ddd3eec7d1eb9b7e36139c8a4d46c203c71dcbf26433c5b709a85f2d31ecdf` |
| 18 | `theorem` | [pairEnergy_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/pairenergy-nonneg--5794349b095ed8c9f1fcb53d.md) | 185 | `result-track:5794349b095ed8c9f1fcb53d55a6be1bc9d4123e43b3a06039d4010987bc8ad5` |
| 19 | `theorem` | [character_sum_norm_sq](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/character-sum-norm-sq--d09684369caea1747681b517.md) | 190 | `result-track:d09684369caea1747681b5171ac85abb2e5be1d3dc8466411f67a61ccfea6761` |
| 20 | `theorem` | [characterAverage_norm_sq](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/characteraverage-norm-sq--41ed8eb31a35401681cdf925.md) | 209 | `result-track:41ed8eb31a35401681cdf92560bd866c423204abac65584afc244cee4a946d9c` |
| 21 | `theorem` | [characterAverage_norm_sq_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/characteraverage-norm-sq-le--ea238c21a99fc17420274737.md) | 215 | `result-track:ea238c21a99fc174202747378a953e7ad319ffb93c9c2e88325260483a334a12` |
| 22 | `theorem` | [characterAverage_norm_le_exp_neg_pairEnergy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/characteraverage-norm-le-exp-neg-pairenergy--657d7b71de43d0b696157553.md) | 231 | `result-track:657d7b71de43d0b696157553667a86a25d11231fd599cbd0f63b9bfcebdcccef` |
| 23 | `theorem` | [pairEnergy_zero_frequency](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/pairenergy-zero-frequency--15ea51d8413603cc1cb36829.md) | 247 | `result-track:15ea51d8413603cc1cb368296c7b72aed77f2f448f6e57ff7f6d36c6f58da31a` |
| 24 | `theorem` | [pairEnergy_le_quarter](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/pairenergy-le-quarter--fdc25f44acecc966239e55b9.md) | 250 | `result-track:fdc25f44acecc966239e55b99793e77a699b8153d38b06e0f4500ee9fd2e9088` |
| 25 | `theorem` | [pairEnergy_le_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/pairenergy-le-one--593bf21db2213eab021a6dc6.md) | 269 | `result-track:593bf21db2213eab021a6dc66144fe59604231bd95b514e137658eb9d7b4dbcd` |
| 26 | `theorem` | [pairEnergy_sum_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/pairenergy-sum-le--a17dd4cc1fb13da1eb7433bc.md) | 273 | `result-track:a17dd4cc1fb13da1eb7433bc65e3e229b2fb07e030cfeddbe7bad6426c3628da` |
| 27 | `theorem` | [prod_characterAverage_norm_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/declarations/prod-characteraverage-norm-le--853fe1f7b7f1fc9ceef9f5eb.md) | 300 | `result-track:853fe1f7b7f1fc9ceef9f5ebefcf487714454c7c1a2d7905b41eeb438c4644c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
