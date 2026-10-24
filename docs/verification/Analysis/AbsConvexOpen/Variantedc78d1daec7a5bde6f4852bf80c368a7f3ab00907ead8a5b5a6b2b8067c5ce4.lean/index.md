# Verification target: GRWTSK.Analysis.AbsConvexOpen.Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7be3f55ba9e565f20042953e5f54acfaccd7e94",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/index.md) · [Full source](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7be3f55ba9e565f20042953e5f54acfaccd7e94`.

Source path: `GRWTSK/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.AbsConvex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsConvexOpenSets](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/absconvexopensets--e840c45537bd29c9994edda3.md) | 44 | `declaration-track:e840c45537bd29c9994edda351eb33f6d3a32e9c8caba9492e08adb690ecf987` |
| 2 | `instance` | [AbsConvexOpenSets.instCoeOut](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/absconvexopensets-instcoeout--9f8093a0d98d7af2d9378bff.md) | 47 | `declaration-track:9f8093a0d98d7af2d9378bff1c8fd0ee63e1842264ea52164a8e882a3bf763c8` |
| 3 | `theorem` | [coe_zero_mem](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/coe-zero-mem--e1a517150889f6472bb29300.md) | 54 | `result-track:e1a517150889f6472bb29300e3f7aea6f4a6c12a8e3c72659690641baf2bc154` |
| 4 | `theorem` | [coe_isOpen](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/coe-isopen--0f97cc67500737f4ef31c16e.md) | 57 | `result-track:0f97cc67500737f4ef31c16ec3a38d88d79a9529d56468e4e7d71546254f6815` |
| 5 | `theorem` | [coe_nhds](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/coe-nhds--747278dedf2778dac4317213.md) | 60 | `result-track:747278dedf2778dac431721335906ecca122ce8e1b4b5972f49bc02d2b634291` |
| 6 | `theorem` | [coe_balanced](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/coe-balanced--08f2b70937dbcabfb71b60f9.md) | 63 | `result-track:08f2b70937dbcabfb71b60f9f5fe544958fad12eca9460b334404edb6cccbe6f` |
| 7 | `theorem` | [coe_convex](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/coe-convex--66c72b079035c18440268855.md) | 66 | `result-track:66c72b079035c18440268855e76474a09d7c9326d7e7d6cdf406f5df4407bd10` |
| 8 | `instance` | [AbsConvexOpenSets.instNonempty](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/absconvexopensets-instnonempty--a2a5a7e0e067f6b44b2c3834.md) | 71 | `declaration-track:a2a5a7e0e067f6b44b2c38346a4dec6cf70ea345b5f5a9f8633cab0245079865` |
| 9 | `def` | [gaugeSeminormFamily](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/gaugeseminormfamily--c91746188956a82fd697a0ef.md) | 86 | `declaration-track:c91746188956a82fd697a0ef3f6a62e6d9fe6031e85541b5566639b83a6bf636` |
| 10 | `theorem` | [gaugeSeminormFamily_ball](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/gaugeseminormfamily-ball--3e9f6851f4f31705bf4d7b2d.md) | 91 | `result-track:3e9f6851f4f31705bf4d7b2d56f9be2f3c87471e700c040ada49aac700b77ba8` |
| 11 | `theorem` | [with_gaugeSeminormFamily](../../../../mathematics/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/declarations/with-gaugeseminormfamily--93cf62e1d26e626e7e36c9c6.md) | 102 | `result-track:93cf62e1d26e626e7e36c9c6d48b51976decb25698fc9ecc87adb87476c58d6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
