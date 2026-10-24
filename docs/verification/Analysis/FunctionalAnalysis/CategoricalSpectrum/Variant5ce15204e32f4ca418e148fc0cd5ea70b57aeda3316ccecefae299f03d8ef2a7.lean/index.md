# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CategoricalSpectrum.Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3592af0738d4f72c63c2a9af3372c63a8350526",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3592af0738d4f72c63c2a9af3372c63a8350526`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Tensor` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiracSpectrumMorphism](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/declarations/diracspectrummorphism--ff0f481ab8a6b97c93a5516b.md) | 24 | `declaration-track:ff0f481ab8a6b97c93a5516bc42cdaf744907297fbff2119387bca6c40ce3a27` |
| 2 | `structure` | [DiracSpectrumCategory](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/declarations/diracspectrumcategory--284e1daaf806828ae0f7074d.md) | 40 | `declaration-track:284e1daaf806828ae0f7074d1efcc4dc8706ce19288c3487af6623b91c3cc402` |
| 3 | `theorem` | [dirac_morphism_preserves_eigenvalues](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/declarations/dirac-morphism-preserves-eigenvalues--d5d1fb91a106c06202238381.md) | 53 | `result-track:d5d1fb91a106c062022383811f2923a18a5b9ec98b2d714f0418ed785c9cd752` |
| 4 | `theorem` | [dirac_morphism_preserves_multiplicity](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/declarations/dirac-morphism-preserves-multiplicity--62d48743f68673864c55cf9a.md) | 59 | `result-track:62d48743f68673864c55cf9a97606239c68e3e24551271532125af426723a59a` |
| 5 | `theorem` | [dirac_spectrum_category_assoc](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/declarations/dirac-spectrum-category-assoc--5681a62602fd25f0e6935f45.md) | 65 | `result-track:5681a62602fd25f0e6935f4560676e73caa0a1af194d6b8d5efe8c111e8e6e12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
