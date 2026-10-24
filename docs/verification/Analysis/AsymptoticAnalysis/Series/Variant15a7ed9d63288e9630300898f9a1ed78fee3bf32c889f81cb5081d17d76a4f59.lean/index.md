# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c6cf90050c2e6d5cbef0745d0445e3a8d02394a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c6cf90050c2e6d5cbef0745d0445e3a8d02394a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.GammaFacts` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDerivUniformlyOn` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.MultipliableUniformlyOn` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.IntegerCompl` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/wterm--f1f4d7ec4a182f013e9a0adf.md) | 38 | `declaration-track:f1f4d7ec4a182f013e9a0adf4cee299edf553983f6a58e483bdd54d9fe8eba6b` |
| 2 | `lemma` | [one_add_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/one-add-wterm--4402b41f95415fdc8440a478.md) | 40 | `result-track:4402b41f95415fdc8440a47893cbe22587eca662cdeef17014436f85dacf42ff` |
| 3 | `lemma` | [norm_natCast_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/norm-natcast-add-one--649c292feaa0f07b45df0180.md) | 45 | `result-track:649c292feaa0f07b45df0180ce3069356679ccf5d3767cbce21d8ccd5f9688c1` |
| 4 | `lemma` | [norm_wTerm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/norm-wterm-le--186f9918243371833a28121b.md) | 50 | `result-track:186f9918243371833a28121baec05bd0c5514d64b75439643ec552784d7f62fa` |
| 5 | `lemma` | [summable_wBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/summable-wbound--448d789d3ead390e297b18f5.md) | 89 | `result-track:448d789d3ead390e297b18f5d52bb847247d43b2f01d71cca5c34fe1c1ce7b91` |
| 6 | `lemma` | [summable_norm_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/summable-norm-wterm--ec0042359abd7aa799b0b0ff.md) | 107 | `result-track:ec0042359abd7aa799b0b0ffb1c1a1ac0b06d662442615c82b92aa6ffae2a648` |
| 7 | `lemma` | [multipliable_one_add_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/multipliable-one-add-wterm--6a5fbee9c525e6778f411b30.md) | 117 | `result-track:6a5fbee9c525e6778f411b3056cc6a3ae0c0ca0f6ae06ca8b5fbe92b7635e638` |
| 8 | `lemma` | [harmonic_cast_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/harmonic-cast-eq--6aaa4dcb94d422766d6670d7.md) | 122 | `result-track:6aaa4dcb94d422766d6670d70193810cb116beeb35a96ceb33ba13ee917cb8cc` |
| 9 | `lemma` | [inv_gammaSeq_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/inv-gammaseq-eq--3304f0e9948e144863a726e3.md) | 130 | `result-track:3304f0e9948e144863a726e3a6b3c0de936def6ff45e2d8fe25207f4f7d60839` |
| 10 | `theorem` | [inv_gamma_eq_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/inv-gamma-eq-prod--b846033d653cde9a8d536f05.md) | 209 | `result-track:b846033d653cde9a8d536f052b8ccb70a64853481731148aeaa8c74f5846624e` |
| 11 | `lemma` | [logDeriv_one_add_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/logderiv-one-add-wterm--30a15c484eb4d17ed3329461.md) | 249 | `result-track:30a15c484eb4d17ed3329461ccef57f839e30aa1f6e73d1f076e556d7c1ce6de` |
| 12 | `theorem` | [summable_digamma_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/summable-digamma-series--d80a5c31ca7a05a43d6c9f03.md) | 298 | `result-track:d80a5c31ca7a05a43d6c9f03afef37fe1182377fcdc4ae464833fc37cefdcc00` |
| 13 | `theorem` | [hasSum_digamma_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/hassum-digamma-series--8479f8d9219a633efa32ce5b.md) | 348 | `result-track:8479f8d9219a633efa32ce5b26bb34df6fc63abad93e66fd223aa138852e218d` |
| 14 | `theorem` | [digamma_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant15a7ed9d63288e9630300898f9a1ed78fee3bf32c889f81cb5081d17d76a4f59.lean/declarations/digamma-series--471b9e83226bb3b9a01ac43e.md) | 492 | `result-track:471b9e83226bb3b9a01ac43e822dea19568f4748f3851d71a75c69abe30591a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
