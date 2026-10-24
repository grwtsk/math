# Verification target: GRWTSK.AlgebraicGeometry.Hodge.DegreeOneSlope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cec65f74cdf4efd3839898cb1ab1f45087de973",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/DegreeOneSlope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cec65f74cdf4efd3839898cb1ab1f45087de973`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/DegreeOneSlope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/DegreeOneSlope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PureDegreeOneHodgeType](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/declarations/puredegreeonehodgetype--bd8d0f2a39524b4047c11f25.md) | 34 | `declaration-track:bd8d0f2a39524b4047c11f25fc72c5ae1bcb6f3d3ab00e40c59f40e04dbdbf36` |
| 2 | `structure` | [DegreeOneFiltration](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/declarations/degreeonefiltration--e973faa8549f2f35cd6a8354.md) | 40 | `declaration-track:e973faa8549f2f35cd6a83546710c38994ee2319825a98d750a33b8f6b4c76a1` |
| 3 | `def` | [HasPureType](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/declarations/haspuretype--88d2496e82ecf2a6ae24e882.md) | 45 | `declaration-track:88d2496e82ecf2a6ae24e882d7ac4979dc8e81561b2f580ac755203ffc6b55bd` |
| 4 | `structure` | [PureSlopeNumerics](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/declarations/pureslopenumerics--5d16b48ae103efa701f94eaf.md) | 52 | `declaration-track:5d16b48ae103efa701f94eaf66a7f7dd8b8b80be158e805c5eaa5c839ed72b1b` |
| 5 | `theorem` | [antiholomorphic_of_slope_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/declarations/antiholomorphic-of-slope-zero--7730e82c4d65156f871c267f.md) | 62 | `result-track:7730e82c4d65156f871c267f4cfa8fa6c9e24b3d8ee6681ce2752843fadffca1` |
| 6 | `theorem` | [holomorphic_of_slope_one](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/declarations/holomorphic-of-slope-one--18d553980e4e3263fe8322d3.md) | 73 | `result-track:18d553980e4e3263fe8322d35ddca7e60cbc8ac4f9314fb44423d33fc79e3981` |
| 7 | `theorem` | [pureType_of_zero_or_one_slope](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/DegreeOneSlope.lean/declarations/puretype-of-zero-or-one-slope--db11b43a3b98cc4dfb271834.md) | 83 | `result-track:db11b43a3b98cc4dfb271834fe1fb5cc3b18d2fd529e5bf6a737e2344ebe5c0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
