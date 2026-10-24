# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalDecay.Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afb1bf513109ce8d2a1ab48385f689d5d742dbf2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afb1bf513109ce8d2a1ab48385f689d5d742dbf2`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laplaceSliceSchwartz](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/declarations/laplacesliceschwartz--78dccb3062883c887384650c.md) | 46 | `declaration-track:78dccb3062883c887384650c536d62f1184b7adae5af15ef91b7fe9e99045e9b` |
| 2 | `theorem` | [laplaceSliceSchwartz_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/declarations/laplacesliceschwartz-apply--c4753cf115f683f95a5d7af0.md) | 58 | `result-track:c4753cf115f683f95a5d7af0e9263d2281e1eed08a4c4d4613739df46c969ba3` |
| 3 | `theorem` | [primitiveWeilLaplace_eq_fourier_laplaceSlice](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/declarations/primitiveweillaplace-eq-fourier-laplaceslice--621a77de7861490e79bae288.md) | 67 | `result-track:621a77de7861490e79bae288dd8ca9a074358cd63c92af87fdf0631f6ad5eec3` |
| 4 | `theorem` | [primitiveWeilLaplace_vertical_normalized_pow_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/declarations/primitiveweillaplace-vertical-normalized-pow-bound--8e2ce557d75c68a038a797b9.md) | 95 | `result-track:8e2ce557d75c68a038a797b9d1a92ee867edb2b9a018ef4cb47fc24c236e8076` |
| 5 | `theorem` | [primitiveWeilLaplace_vertical_pow_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/declarations/primitiveweillaplace-vertical-pow-bound--98b3b683fea650180122d79d.md) | 110 | `result-track:98b3b683fea650180122d79d6bdac26a34e102335c89f4edb75f06ec2131ef85` |
| 6 | `theorem` | [primitiveWeilLaplace_decay_fixedRealPart](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf.lean/declarations/primitiveweillaplace-decay-fixedrealpart--45939b1582c0e88786f94c49.md) | 129 | `result-track:45939b1582c0e88786f94c49a23fb22caf858296d5e3623c5ef9f0d11574d1dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
