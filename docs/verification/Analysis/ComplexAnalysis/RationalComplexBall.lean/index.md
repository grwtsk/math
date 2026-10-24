# Verification target: GRWTSK.Analysis.Complex.RationalComplexBall

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e323c4a17697d7a307ae3e303cf96d4947e272b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalComplexBall.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e323c4a17697d7a307ae3e303cf96d4947e272b`.

Source path: `GRWTSK/Analysis/Complex/RationalComplexBall.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalComplexBall.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalRoundedArithmetic`](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.Norm` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ball](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/ball--03eccc75f538d61dea0b9282.md) | 31 | `declaration-track:03eccc75f538d61dea0b9282543acb16602d7ba9cce547c586c0f921c72621ea` |
| 2 | `def` | [Contains](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/contains--37714a5a30ec3cece71ec5db.md) | 40 | `declaration-track:37714a5a30ec3cece71ec5db2a5792a6064459befd0f11727064493ee5ae6f5c` |
| 3 | `def` | [zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/zero--0f47d99757bff6298641739d.md) | 44 | `declaration-track:0f47d99757bff6298641739d71aae2803778f697dfca9d805e112fe5ecb377c6` |
| 4 | `def` | [add](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/add--a84de3a037e98f85047cddc3.md) | 50 | `declaration-track:a84de3a037e98f85047cddc38abf445ec05df147400b0cdd51972b7298769af7` |
| 5 | `theorem` | [zero_center](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/zero-center--b8468c1913d3b21127f1fe2a.md) | 55 | `result-track:b8468c1913d3b21127f1fe2a083ba4ecd0d713a85762ed0f1f1065ced2386cd6` |
| 6 | `theorem` | [zero_radius](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/zero-radius--d1a07fbebcade074c9d31e6d.md) | 56 | `result-track:d1a07fbebcade074c9d31e6da219235015a505ed64daf255f8be615add55c05c` |
| 7 | `theorem` | [add_center](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/add-center--88a6f9d7a1c3c4831b9ddcd5.md) | 57 | `result-track:88a6f9d7a1c3c4831b9ddcd5afdcc9f2f14704da28ce90e9d588686fc57ab993` |
| 8 | `theorem` | [add_radius](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/add-radius--f68e33e7eb877b934124b223.md) | 59 | `result-track:f68e33e7eb877b934124b2236d15a7881849a1c2b554b3ad63b1e5f027ed327a` |
| 9 | `theorem` | [zero_contains](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/zero-contains--a95f488f03415deefa42d394.md) | 63 | `result-track:a95f488f03415deefa42d394984eb173b6078ae79051dd13fa93b47936325b82` |
| 10 | `theorem` | [contains_add](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/contains-add--04049466df3637299c4ee42d.md) | 67 | `result-track:04049466df3637299c4ee42d87b2a6fceee5a8c359d0123487c324a00bdaf0e6` |
| 11 | `def` | [realLower](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/reallower--e14fabe75d9a693a04551272.md) | 88 | `declaration-track:e14fabe75d9a693a0455127286e5b5e789dfbd4d0e66f1fdfa90b7bba56303f3` |
| 12 | `def` | [realUpper](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/realupper--86e19dbb3123f48731fba4dd.md) | 91 | `declaration-track:86e19dbb3123f48731fba4dd918f6664d903e751710f1ab78d68334cb587a7f6` |
| 13 | `theorem` | [realLower_le_realUpper](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/reallower-le-realupper--2ff13e9b02879aed3c4fba52.md) | 94 | `result-track:2ff13e9b02879aed3c4fba529215a7ddec08e34b697b56974cfc0f819b436045` |
| 14 | `theorem` | [contains_re_bounds](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/contains-re-bounds--96f9d9cdf6ee2b6e0ffe1f6c.md) | 100 | `result-track:96f9d9cdf6ee2b6e0ffe1f6c883f39ef44c81edfc5e9b3d9ab9356e99e8f5c7d` |
| 15 | `theorem` | [realUpper_sub_realLower](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexBall.lean/declarations/realupper-sub-reallower--53393776080764ce3ba73b88.md) | 122 | `result-track:53393776080764ce3ba73b888cbbffd3a9351cc21736e5576d3e7448da5dbc73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
