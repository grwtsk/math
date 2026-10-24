# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletSeries.Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d16293c22af9f33bd0c27b1eeadcd592a160c5ce",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d16293c22af9f33bd0c27b1eeadcd592a160c5ce`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfPlane](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/halfplane--b5bc773160fa10434aa06a85.md) | 17 | `declaration-track:b5bc773160fa10434aa06a85d52affd6508773ffc0ba99c60c2036c23dcfaba4` |
| 2 | `structure` | [DirichletSeries](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/dirichletseries--26a32dfa37df2bccb8f34702.md) | 22 | `declaration-track:26a32dfa37df2bccb8f347020d7ab386ca861f481c976889847e1faac74a8679` |
| 3 | `structure` | [AbsoluteConvergenceCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/absoluteconvergencecertificate--8358604ff4b4b8616d876522.md) | 27 | `declaration-track:8358604ff4b4b8616d876522ed15a36f149ea48c902d6b8687c06c03328c35e3` |
| 4 | `structure` | [CauchyProductCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/cauchyproductcertificate--d2f6d75fcd406dcdb587c0c8.md) | 36 | `declaration-track:d2f6d75fcd406dcdb587c0c8669d753e7dedd3ad0a58941a440fecf3c7fcd92f` |
| 5 | `theorem` | [absolute_convergence_sound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/absolute-convergence-sound--cfc55136f2509ebd49636db3.md) | 45 | `result-track:cfc55136f2509ebd49636db37fed2af058826bd9b6bb1a0e57321f3be1d23986` |
| 6 | `theorem` | [cauchy_product_sound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/cauchy-product-sound--eb8339fe048405bf6250a1b7.md) | 52 | `result-track:eb8339fe048405bf6250a1b769a985ef8d86d761a4a49d74937426af15028771` |
| 7 | `def` | [DirichletSeriesOwnsConvergence](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/dirichletseriesownsconvergence--4a4d0b5b759b82d76e6acfb4.md) | 63 | `declaration-track:4a4d0b5b759b82d76e6acfb48c5ca33fffd9a3342d945f497b9065668d0f9e19` |
| 8 | `theorem` | [dirichlet_series_not_convergence_authority](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7.lean/declarations/dirichlet-series-not-convergence-authority--fcbeab585cebba4ce1808021.md) | 67 | `result-track:fcbeab585cebba4ce1808021f4c877435057311bbbaf2688c3cf933286982d90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
