# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SpectralDeterminantLift.Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74903929d657028fdcab994703762bb9cdf84fb7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74903929d657028fdcab994703762bb9cdf84fb7`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.PivotAtlas` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.ContinuationQuasiIsomorphism` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.DeterminantLinePropagation` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralDeterminantValue](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/spectraldeterminantvalue--96fdde2a3ad23038640f33dc.md) | 26 | `declaration-track:96fdde2a3ad23038640f33dca3b00222489098d454e82e165c98251c0ec37821` |
| 2 | `structure` | [DeterminantPivot](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinantpivot--55685ecfa7335719911dc658.md) | 31 | `declaration-track:55685ecfa7335719911dc6589cae41005547c6f6cd579ae5ef9d55c64f6636a7` |
| 3 | `structure` | [DeterminantTransition](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinanttransition--59a1c855de341f2eeb247692.md) | 42 | `declaration-track:59a1c855de341f2eeb247692f1e16494559364001866979c80df1c473fe67cd6` |
| 4 | `structure` | [PrecomputedSpectralDeterminantAtlas](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/precomputedspectraldeterminantatlas--12d1126fd109cd4e10188400.md) | 56 | `declaration-track:12d1126fd109cd4e1018840046fa516a14e561060b70d3cdad65bbb2dd2bdc00` |
| 5 | `structure` | [DeterminantPreservingQuasiIsomorphism](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinantpreservingquasiisomorphism--01cef2acfeaa5b540123506a.md) | 77 | `declaration-track:01cef2acfeaa5b540123506a25fc04c76d0a71f54dd128382749e60e6442c450` |
| 6 | `structure` | [SpectralDeterminantLift](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/spectraldeterminantlift--4be568c48ea348e26d885d3b.md) | 93 | `declaration-track:4be568c48ea348e26d885d3b85499bb64f1fd82c52c07dd4240271432182cd78` |
| 7 | `theorem` | [determinant_transition_preserves_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-transition-preserves-if-supplied--c918965e0aee50901b4c3999.md) | 111 | `result-track:c918965e0aee50901b4c3999f746d0f0f6080314b5220aeb26c88ae5dbcd04ca` |
| 8 | `theorem` | [determinant_atlas_covers_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-atlas-covers-if-supplied--8ef6c537e5269e3493f84248.md) | 116 | `result-track:8ef6c537e5269e3493f84248198bc3c6b40ccb5d06e3ba89a60334032a7eb8d7` |
| 9 | `theorem` | [determinant_atlas_cocycle_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-atlas-cocycle-if-supplied--457bb0eb79f81e13f5c68a67.md) | 121 | `result-track:457bb0eb79f81e13f5c68a679b20940c033c9cedd6a1d6f9ae34ddb55c2c98d0` |
| 10 | `theorem` | [determinant_atlas_path_independent_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-atlas-path-independent-if-supplied--9ef2b2c55e4ebe039f16c4d8.md) | 126 | `result-track:9ef2b2c55e4ebe039f16c4d82431ce4aa9718934660efb652f5a65f211c0046b` |
| 11 | `theorem` | [determinant_atlas_regularization_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-atlas-regularization-if-supplied--5bbc990b49e7a095688b4429.md) | 131 | `result-track:5bbc990b49e7a095688b442997306682512149bc0b49b86ef8b694fa7c43c6f1` |
| 12 | `theorem` | [determinant_quasi_iso_preserves_line_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-quasi-iso-preserves-line-if-supplied--155c4291075a45a184f89db8.md) | 136 | `result-track:155c4291075a45a184f89db8edd663f84b1fda265dcf1fd2bbbc6cd0d894d9a8` |
| 13 | `theorem` | [determinant_quasi_iso_preserves_spectral_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-quasi-iso-preserves-spectral-if-supplied--8600a858fe14264565b07253.md) | 141 | `result-track:8600a858fe14264565b07253f067eb1a1b921cbab590cc84e79109755bd60da0` |
| 14 | `theorem` | [determinant_lift_atlas_descends_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-lift-atlas-descends-if-supplied--bd6520f50e9bd4706bcead55.md) | 146 | `result-track:bd6520f50e9bd4706bcead55265335859050d2e81975c95a84af8656cd97c977` |
| 15 | `theorem` | [determinant_lift_quasi_iso_computes_same_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-lift-quasi-iso-computes-same-if-supplied--f47f0213537645591b028e37.md) | 151 | `result-track:f47f0213537645591b028e370a069da683fa706056e5f082a8f2fd06a987d550` |
| 16 | `theorem` | [determinant_lift_agrees_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-lift-agrees-if-supplied--4d9a965fc963a5aae031ae95.md) | 156 | `result-track:4d9a965fc963a5aae031ae95b8248997dd72e302a6a0d506e468c3d54b5c9bae` |
| 17 | `theorem` | [determinant_lift_atlas_to_quasi_iso_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-lift-atlas-to-quasi-iso-if-supplied--c2f52bec6dfc4a2713051948.md) | 161 | `result-track:c2f52bec6dfc4a2713051948b36f12b055a532ee5cc4471c589b46f06ad024ce` |
| 18 | `theorem` | [determinant_lift_quasi_iso_to_atlas_if_supplied](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/declarations/determinant-lift-quasi-iso-to-atlas-if-supplied--2041abbcec5facd3e41e46af.md) | 166 | `result-track:2041abbcec5facd3e41e46af3852a3eec1fd499a73df74d31e5accbca21510e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
