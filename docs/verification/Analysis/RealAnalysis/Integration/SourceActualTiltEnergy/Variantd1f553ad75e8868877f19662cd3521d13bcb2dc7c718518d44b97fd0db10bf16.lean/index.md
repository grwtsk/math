# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltEnergy.Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "009ec71681e8f604ae152fa64cf39ebd6a47e70a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `009ec71681e8f604ae152fa64cf39ebd6a47e70a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittilt--10d2a989e1b5495728e79ed4.md) | 29 | `declaration-track:10d2a989e1b5495728e79ed47b1ee681c5c99ff725bed94db5caab5155e353d9` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittiltenergy--21fa5c39350202c4ce6d8d34.md) | 33 | `declaration-track:21fa5c39350202c4ce6d8d343d15d0faa499f0b005ba14fb008e74aea241daa8` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittilt-sq-integrable--95d4a49b95e2ff3dbdc174dd.md) | 37 | `result-track:95d4a49b95e2ff3dbdc174dd0a85658f16744276d369098b6597e8d0f5aa5405` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittiltenergy-eq-integral--4a12765ce65e1cd655558c58.md) | 50 | `result-track:4a12765ce65e1cd655558c584b8cf6f6287bd8be0b355db7fa76fa6577e3b2d4` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittilt-transform--30ae884d81f175723b6be3f7.md) | 60 | `result-track:30ae884d81f175723b6be3f7068376939ed0c8aa65f61f6fc759e7fa3fe846f2` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittilt-integral-sq-le--fd94fdf417914330d5fdd27f.md) | 68 | `result-track:fd94fdf417914330d5fdd27fc1dffec0ca9eff77fa6719974205808ff5521553` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittiltenergy-eventually-ge--c0b5022497412bdbd09ab56a.md) | 98 | `result-track:c0b5022497412bdbd09ab56a3bacc9329211cafbc76776a63cf6d5d839f1b5db` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantd1f553ad75e8868877f19662cd3521d13bcb2dc7c718518d44b97fd0db10bf16.lean/declarations/actualunittiltenergy-tendsto-attop--3f7058acb20ad94155a1d4ec.md) | 148 | `result-track:3f7058acb20ad94155a1d4ec8c491d40a33fad2145bba95c4e08447d8803b991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
