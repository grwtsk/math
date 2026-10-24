# Verification target: GRWTSK.Analysis.RealAnalysis.RealFunctions.AdmissibleRealPowerModel.Varianta330bd9a635a18f2.AdmissiblePowerNonnegativity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b38caf39b6d788b922becc48558942dfcbe59a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b38caf39b6d788b922becc48558942dfcbe59a1`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrecessionInvocation](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean/declarations/precessioninvocation--0413132178496045eb6fc791.md) | 44 | `declaration-track:0413132178496045eb6fc791f9d7ec219093c1bab19e134228688aa6643ff280` |
| 2 | `def` | [executePrecession](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean/declarations/executeprecession--b3b41bc0b9ea8f0fd3b30f64.md) | 50 | `declaration-track:b3b41bc0b9ea8f0fd3b30f64348f4c04df6df8df5e4f80b3c381e4dd3b2064f2` |
| 3 | `def` | [precessionRepresentation](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean/declarations/precessionrepresentation--e326ff91b17abd8904b86ca7.md) | 54 | `declaration-track:e326ff91b17abd8904b86ca7581d22b2ab2fc1d4fdcf2a8d5372b0c8d29b652c` |
| 4 | `theorem` | [executePrecession_represents](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean/declarations/executeprecession-represents--c489e5af22d1dc5b58b73a65.md) | 61 | `result-track:c489e5af22d1dc5b58b73a656cfe5b249b7c9ae61bdbc6b2f79adb293916be1d` |
| 5 | `theorem` | [executePrecession_nonnegative](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean/declarations/executeprecession-nonnegative--945acba5d30f2b83633c28b4.md) | 70 | `result-track:945acba5d30f2b83633c28b4f999cd430156725aa112c4e61818f21eefbdc792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
