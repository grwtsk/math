# Verification target: GRWTSK.Algebra.PolygonalQuarticResolvent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e40e31876da5291cc10e8dfae0f45f728d73bd2f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PolygonalQuarticResolvent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/index.md) · [Full source](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e40e31876da5291cc10e8dfae0f45f728d73bd2f`.

Source path: `GRWTSK/Algebra/PolygonalQuarticResolvent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PolygonalQuarticResolvent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticPairSum](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/quarticpairsum--2a3d135ff8a64363b66ca7f8.md) | 27 | `declaration-track:2a3d135ff8a64363b66ca7f8ec73ec93b0beaff91066b59b47a55a35268e6eee` |
| 2 | `def` | [cycleABCD](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cycleabcd--eb64f633250a155405870747.md) | 31 | `declaration-track:eb64f633250a15540587074735453b7c4fca1776ad2fab99b8949311270cf3a3` |
| 3 | `def` | [cycleACBD](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cycleacbd--1d6457aeb95de0cfc06e2468.md) | 35 | `declaration-track:1d6457aeb95de0cfc06e246873eb182801a2d7bc334381446765c9ad91b562f1` |
| 4 | `def` | [cycleABDC](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cycleabdc--fd5e98225c0faa50447d9a36.md) | 39 | `declaration-track:fd5e98225c0faa50447d9a3668dcc3b22ea05f681fb9c04684300d400b4ceba6` |
| 5 | `def` | [matchAC_BD](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/matchac-bd--deffc943ef39dc059eeb63b8.md) | 43 | `declaration-track:deffc943ef39dc059eeb63b8e34e0263635aba0fc6c315a2c950fd4c0d05b006` |
| 6 | `def` | [matchAB_CD](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/matchab-cd--1c7285d7aca041161e97d07d.md) | 46 | `declaration-track:1c7285d7aca041161e97d07df62b249896d27c1f97bb6596750cb76b0f0f736d` |
| 7 | `def` | [matchAD_BC](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/matchad-bc--3aa2953926b66a73655d6cf1.md) | 49 | `declaration-track:3aa2953926b66a73655d6cf1c3a19dd6fdab8a40289dcaeed5a01343958848f6` |
| 8 | `theorem` | [cycleABCD_eq_complement](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cycleabcd-eq-complement--28acd963a7cdd7f8a5708650.md) | 51 | `result-track:28acd963a7cdd7f8a5708650874d83dbb1172af269d4e0558a97407b4c84b89c` |
| 9 | `theorem` | [cycleACBD_eq_complement](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cycleacbd-eq-complement--bfec25d3826080fb5d40a448.md) | 57 | `result-track:bfec25d3826080fb5d40a4481dc76901fb786ab107a3bc9e69ac616cea7ca5e0` |
| 10 | `theorem` | [cycleABDC_eq_complement](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cycleabdc-eq-complement--cc4bda453eb986922ccdf8fe.md) | 63 | `result-track:cc4bda453eb986922ccdf8fe03f2472eaf1a5807cffbe6d36cfe4e67137d0f9d` |
| 11 | `def` | [cycleCubic](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cyclecubic--cdfce24036116152596f6677.md) | 70 | `declaration-track:cdfce24036116152596f66778d20d8b1f09787d0ce5902800fb8c31d9998cd60` |
| 12 | `def` | [complementaryMatchingCubic](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/complementarymatchingcubic--d74a8fa38fd6df981e9a1401.md) | 76 | `declaration-track:d74a8fa38fd6df981e9a140166dd660144104576c6f0fce5d4e7836845aaa9f9` |
| 13 | `theorem` | [cycleCubic_eq_complementaryMatchingCubic](../../../mathematics/Algebra/PolygonalQuarticResolvent.lean/declarations/cyclecubic-eq-complementarymatchingcubic--4a707705aaba4791a59c30ff.md) | 84 | `result-track:4a707705aaba4791a59c30ff336f05904f21e5f559361c2924aaffc9178602df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
