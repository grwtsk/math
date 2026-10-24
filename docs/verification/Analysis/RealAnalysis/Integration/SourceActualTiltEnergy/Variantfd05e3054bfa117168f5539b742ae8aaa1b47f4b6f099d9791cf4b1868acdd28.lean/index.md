# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltEnergy.Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b05dcc1c8becf417f75c0809c1eb8b45d0daa61",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b05dcc1c8becf417f75c0809c1eb8b45d0daa61`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittilt--c309d6deed5f8fb5d490ea58.md) | 21 | `declaration-track:c309d6deed5f8fb5d490ea583d57de242d23959e4a9236b301f5144d6da1a67a` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittiltenergy--92c72e9113e81cb6ee70b2ee.md) | 25 | `declaration-track:92c72e9113e81cb6ee70b2eeb629ce86407fae076aeffa48aa59aec62fec59f9` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittilt-sq-integrable--4e1f4a5018f49fe7c48ff87c.md) | 29 | `result-track:4e1f4a5018f49fe7c48ff87c31a13a2a3ae78a9463c67d2fa05774c642890283` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittiltenergy-eq-integral--74605b4a96c1c39a1175a88b.md) | 44 | `result-track:74605b4a96c1c39a1175a88b20ac2ce22c402825bc06a21e8063783f2fedad48` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittilt-transform--413e301e6fadafa92ad12ea7.md) | 54 | `result-track:413e301e6fadafa92ad12ea7396cc26940b6a75308097663b72ac797ed765985` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittilt-integral-sq-le--02af8eedecc13cb3d9cb6a41.md) | 62 | `result-track:02af8eedecc13cb3d9cb6a4160a2088c4529583a68a9da10fa97312867fe5465` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittiltenergy-eventually-ge--a1d11102043493dd48804bf4.md) | 92 | `result-track:a1d11102043493dd48804bf464d9455e5146b76e30f55b5604e368869d68a504` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfd05e3054bfa117168f5539b742ae8aaa1b47f4b6f099d9791cf4b1868acdd28.lean/declarations/actualunittiltenergy-tendsto-attop--9d70e8b67e3204d5be5df552.md) | 142 | `result-track:9d70e8b67e3204d5be5df552efa7a278b3bc3a6d40b4b6a3812fe81aae6bd9f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
