# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubini.Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7079041c726efc89a0a05d5c34b34bb0802a385",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7079041c726efc89a0a05d5c34b34bb0802a385`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/declarations/finitedensity--d7f5bc4312a433f77934189a.md) | 28 | `declaration-track:d7f5bc4312a433f77934189a4990402c91faf076cb2fd9618ca1dd2bfbfe006b` |
| 2 | `theorem` | [threshold_order](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/declarations/threshold-order--70482665d4cd98033f3eff24.md) | 33 | `result-track:70482665d4cd98033f3eff240e3856813d88fc4bf8d71dfa864c3252fec2571f` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/declarations/finitedensity-integrable--0d19dd5787a9cc9d2fe5e728.md) | 37 | `result-track:0d19dd5787a9cc9d2fe5e72867e69e48457457ce7693fa7ff4b4b07c7d9277a9` |
| 4 | `theorem` | [density_left_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/declarations/density-left-slice--325d01e3273ef39c3c83a2df.md) | 96 | `result-track:325d01e3273ef39c3c83a2df7a33c2266b21d153d4275729af7583dfd3fd44f2` |
| 5 | `theorem` | [density_right_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/declarations/density-right-slice--eae3022a849005312911ad52.md) | 118 | `result-track:eae3022a849005312911ad522fe68e4ea86fbe8167736cf029150cfbf8b07d7f` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant51b2d095aef259f63d23d7bc0f7d4b85b79db9b548eef59000f30bd04d3c32d7.lean/declarations/actualfinitesecondreadout-outer-fubini--51080bfbedc45ca673da8d71.md) | 144 | `result-track:51080bfbedc45ca673da8d7177346424b5a442ae0547eb7ec12e3c2e35b5f0e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
