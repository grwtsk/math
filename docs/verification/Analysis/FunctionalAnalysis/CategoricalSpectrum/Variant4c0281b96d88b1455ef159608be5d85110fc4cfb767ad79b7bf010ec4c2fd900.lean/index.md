# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CategoricalSpectrum.Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edb3359c27eb5af99981718be6c91924a5cbe7b1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edb3359c27eb5af99981718be6c91924a5cbe7b1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Tensor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiracSpectrumMorphism](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/declarations/diracspectrummorphism--e3a2b7a1c7d82787fd12e441.md) | 32 | `declaration-track:e3a2b7a1c7d82787fd12e441f2f0921e8441c910dbc4eed6dc63436c384d6783` |
| 2 | `structure` | [DiracSpectrumCategory](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/declarations/diracspectrumcategory--c185fda18d77cf85a8a7d694.md) | 48 | `declaration-track:c185fda18d77cf85a8a7d69402b70daa306a6e8f7b3c1aa9ed40087a95dea774` |
| 3 | `theorem` | [dirac_morphism_preserves_eigenvalues](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/declarations/dirac-morphism-preserves-eigenvalues--9724733b38bd34fc838941eb.md) | 61 | `result-track:9724733b38bd34fc838941eb883efed1d407fa9a8e254d3cdf919c6e8d9801b2` |
| 4 | `theorem` | [dirac_morphism_preserves_multiplicity](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/declarations/dirac-morphism-preserves-multiplicity--2a282e386e4b349f377c59eb.md) | 67 | `result-track:2a282e386e4b349f377c59eb88f0a338d14f244b557b56e91b35cc193d7d4702` |
| 5 | `theorem` | [dirac_spectrum_category_assoc](../../../../../mathematics/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/declarations/dirac-spectrum-category-assoc--c9147a27c18a58a72072316f.md) | 73 | `result-track:c9147a27c18a58a72072316f9fc04311da3868947ec960602aa343df681539a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
