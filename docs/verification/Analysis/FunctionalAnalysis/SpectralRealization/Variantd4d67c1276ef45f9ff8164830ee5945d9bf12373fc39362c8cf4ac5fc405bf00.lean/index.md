# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralRealization.Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69ed8fba5fd133a3d72fbf1ae2c840b35e0d1037",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69ed8fba5fd133a3d72fbf1ae2c840b35e0d1037`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.SpectralRealization` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [operator_data_has_hilbert_type](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/declarations/operator-data-has-hilbert-type--a2acf4a6f06a84f4c34cddc5.md) | 28 | `result-track:a2acf4a6f06a84f4c34cddc5119f979f677286df52e873179137fac415ec23fa` |
| 2 | `theorem` | [operator_data_domain_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/declarations/operator-data-domain-dense--56406b4312f02ea84246c4c7.md) | 33 | `result-track:56406b4312f02ea84246c4c7e9c4d4c502f1f2777b2fedebade0ae91411da8d2` |
| 3 | `theorem` | [D_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/declarations/d-selfadjoint--b1d7098b3aee6b9faec4b185.md) | 38 | `result-track:b1d7098b3aee6b9faec4b185a378ecdd9efd0d298b498ac7f519663c138ab1f8` |
| 4 | `theorem` | [D_compactResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/declarations/d-compactresolvent--c5742262bc1e0220df5a9b52.md) | 44 | `result-track:c5742262bc1e0220df5a9b5273ced906d0c014a10c5f085b1c7d63be98fec839` |
| 5 | `theorem` | [spectrum_real_of_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/declarations/spectrum-real-of-selfadjoint--bbad4012946297615f10475a.md) | 50 | `result-track:bbad4012946297615f10475a44ea221f0a19df50ad3788cd7f7c67f629ba334f` |
| 6 | `theorem` | [zero_spectrum_realization_has_parameter_map](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/declarations/zero-spectrum-realization-has-parameter-map--33147cb915ac3499373671f6.md) | 57 | `result-track:33147cb915ac3499373671f6c207ff41437826ea34b1fc908664fb83a4acd657` |
| 7 | `theorem` | [h0_zero_iff_spectral_point](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00.lean/declarations/h0-zero-iff-spectral-point--d16dc737787b12d0c916d021.md) | 63 | `result-track:d16dc737787b12d0c916d021ac79fbf6f1a432975878dbb7d767c28b9e90a791` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
