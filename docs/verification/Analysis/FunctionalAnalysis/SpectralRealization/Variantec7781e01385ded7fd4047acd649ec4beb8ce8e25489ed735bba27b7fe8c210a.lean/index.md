# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralRealization.Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1010429b4d063223a0939aa57db9c236b4fe3893",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1010429b4d063223a0939aa57db9c236b4fe3893`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.OperatorData` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.RH.ZeroData` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroSpectrumRealization](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/declarations/zerospectrumrealization--ceebb4278d6472a5eca05a1a.md) | 28 | `declaration-track:ceebb4278d6472a5eca05a1a6382d55d3be824c331d767188d1d8102b28bbeab` |
| 2 | `theorem` | [D_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/declarations/d-selfadjoint--ef51b76dbb2769665f0572e6.md) | 32 | `result-track:ef51b76dbb2769665f0572e68fe3ccef5d556754f705fe11d5d6c60206101278` |
| 3 | `theorem` | [D_compactResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/declarations/d-compactresolvent--999f614afc3ad4259a8db9fd.md) | 38 | `result-track:999f614afc3ad4259a8db9fd0e630ad7388afaf750621c499fc228c58b080aea` |
| 4 | `theorem` | [spectrum_real_of_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/declarations/spectrum-real-of-selfadjoint--5791228bb7b19d69ce2e938e.md) | 44 | `result-track:5791228bb7b19d69ce2e938e2cc1a668522e660ba2222ccfb9e4ef3105db3725` |
| 5 | `theorem` | [zero_spectrum_realization_has_parameter_map](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/declarations/zero-spectrum-realization-has-parameter-map--cdb2f60ad767e1401ab09c54.md) | 51 | `result-track:cdb2f60ad767e1401ab09c543b878af8e47c397bcb1f88e363c58e3912ee666a` |
| 6 | `theorem` | [h0_zero_iff_spectral_point](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralRealization/Variantec7781e01385ded7fd4047acd649ec4beb8ce8e25489ed735bba27b7fe8c210a.lean/declarations/h0-zero-iff-spectral-point--97c8f46bfc96d4ae46ea06a0.md) | 57 | `result-track:97c8f46bfc96d4ae46ea06a0e560e831521de01116555155ef08f5b94c313725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
