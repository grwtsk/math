# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.Basic.Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1102b9976e6f1593684cae51b31c6aff87212fe",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1102b9976e6f1593684cae51b31c6aff87212fe`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Tangent` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon--07c0b7e5e86c4d2a7a8e25a0.md) | 65 | `declaration-track:07c0b7e5e86c4d2a7a8e25a039bfdcb296ce5306e4adae71fbb2705d15eb1f5f` |
| 2 | `def` | [IsIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveat--0f736a12aa692f865ffca3d0.md) | 71 | `declaration-track:0f736a12aa692f865ffca3d092c462519bc4837b9075a1dc198993c462b0105a` |
| 3 | `def` | [IsIntegralCurve](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurve--5bfba6afeae6bc146dbf09d7.md) | 76 | `declaration-track:5bfba6afeae6bc146dbf09d7345706d24e1bacd4d15f5ac0917b75275cbf41a1` |
| 4 | `lemma` | [IsIntegralCurve.isIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurve-isintegralcurveon--9be046415dcf991886f8a640.md) | 81 | `result-track:9be046415dcf991886f8a64080a95a5eee6af570e89b51c87289ab522453701f` |
| 5 | `lemma` | [isIntegralCurve_iff_isIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurve-iff-isintegralcurveon--3b85f5d7695787ca94244b29.md) | 84 | `result-track:3b85f5d7695787ca94244b299cc49394af8eda591fbf9ece582036ea5e240452` |
| 6 | `lemma` | [isIntegralCurveAt_iff](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveat-iff--e88a2d100763b105c5568811.md) | 87 | `result-track:e88a2d100763b105c5568811acd714505a8775eede700f8124cf5a45b08bcc6c` |
| 7 | `lemma` | [isIntegralCurveAt_iff'](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveat-iff--ccc1c9cb6e0397f8d77d706c.md) | 93 | `result-track:ccc1c9cb6e0397f8d77d706caa78f5eb9d619262f9505d5caee80b2de775f304` |
| 8 | `lemma` | [IsIntegralCurve.isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurve-isintegralcurveat--cb8c49bed65c42b3cb516387.md) | 97 | `result-track:cb8c49bed65c42b3cb5163870715459f836472ca25c43c75a04ad9c496df1740` |
| 9 | `lemma` | [isIntegralCurve_iff_isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurve-iff-isintegralcurveat--c5badb6d0a2d5c86dea2205b.md) | 100 | `result-track:c5badb6d0a2d5c86dea2205b96b3cfbc585926b743f4f97602babffbf2881c5e` |
| 10 | `lemma` | [IsIntegralCurveOn.mono](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon-mono--55251b1bbfe741d15de0bf4c.md) | 106 | `result-track:55251b1bbfe741d15de0bf4ce4efc1dda3b721e200bf58275ba18e3f2a876528` |
| 11 | `lemma` | [IsIntegralCurveOn.of_union](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon-of-union--13e2b80261abcab841876376.md) | 109 | `result-track:13e2b80261abcab841876376c7ace15cccf99dac5eadb32b77edb3eb7aed115f` |
| 12 | `lemma` | [IsIntegralCurveAt.hasMFDerivAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveat-hasmfderivat--8b1e9e7acaefc87b78c82f7b.md) | 112 | `result-track:8b1e9e7acaefc87b78c82f7bb40b42c1a20c91a43379af35cafb099361122ec4` |
| 13 | `lemma` | [IsIntegralCurveOn.isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon-isintegralcurveat--c9510a8ff6831b601a868e51.md) | 117 | `result-track:c9510a8ff6831b601a868e51cf39ea9612d360964b0740ef9a44769f49db4c0f` |
| 14 | `lemma` | [IsIntegralCurveAt.isIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveat-isintegralcurveon--5081e20c9b9d812bd97ee561.md) | 121 | `result-track:5081e20c9b9d812bd97ee56190c105eab0e12765b5d595470257c9e977b6a520` |
| 15 | `lemma` | [isIntegralCurveOn_iff_isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon-iff-isintegralcurveat--3144106ac8dfb93cf68ecb00.md) | 127 | `result-track:3144106ac8dfb93cf68ecb00f2df7f559250afb493fe7a797855e9dc200b2002` |
| 16 | `lemma` | [IsIntegralCurveOn.continuousAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon-continuousat--dbf5a89c56722ea855966955.md) | 131 | `result-track:dbf5a89c56722ea85596695508744fa15b79975a8f196726b6c1e93d350eff21` |
| 17 | `lemma` | [IsIntegralCurveOn.continuousOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon-continuouson--da3923b9d780dbb367744873.md) | 134 | `result-track:da3923b9d780dbb367744873f22fd1c839f5128f6d3712a057c969f120d083d8` |
| 18 | `lemma` | [IsIntegralCurveAt.continuousAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveat-continuousat--8d9964626ea1ed9406f8eede.md) | 137 | `result-track:8d9964626ea1ed9406f8eede0738ad19e41092263ce5447f34daea892dddcbf8` |
| 19 | `lemma` | [IsIntegralCurve.continuous](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurve-continuous--8de22980c3934e91323ff6ca.md) | 142 | `result-track:8de22980c3934e91323ff6caa5d377ac8ddc035e90dc230aba76caa368fcc340` |
| 20 | `lemma` | [IsIntegralCurveOn.hasDerivAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveon-hasderivat--486a168aa6b296fac35edcca.md) | 149 | `result-track:486a168aa6b296fac35edcca35ebc625bd75ca64b9c1fb21a7cff80ce9d2cc5a` |
| 21 | `lemma` | [IsIntegralCurveAt.eventually_hasDerivAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant1e32ed6d54461f1f1d24cf95b95d20fc34b4202598007a2d53a59d266be7110e.lean/declarations/isintegralcurveat-eventually-hasderivat--14c1a97ce8a8b85189addb1c.md) | 165 | `result-track:14c1a97ce8a8b85189addb1cdae66e692e62d23ecd6a439caaa25f5f0f5a2ac8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
