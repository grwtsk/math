# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d55319c62a0da9b2588f1012d6a00591d53119b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d55319c62a0da9b2588f1012d6a00591d53119b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean/declarations/localinverse--3e64f3922c001b4bd679e612.md) | 37 | `declaration-track:3e64f3922c001b4bd679e61203fa7c858d73a587850e2c12df83e4418c7560a4` |
| 2 | `theorem` | [map_nhds_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean/declarations/map-nhds-eq--e60836c0116224d9d6ce99b7.md) | 42 | `result-track:e60836c0116224d9d6ce99b725ce3222210ebd984cf7606fe4372d29ed988c9a` |
| 3 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean/declarations/to-localinverse--4c9af812191996ac8f554c21.md) | 45 | `result-track:4c9af812191996ac8f554c216ea2144e8df9c0cf3afda90bafc09f7ecdb1d107` |
| 4 | `theorem` | [to_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean/declarations/to-local-left-inverse--9e34110783bbaf512d82f316.md) | 48 | `result-track:9e34110783bbaf512d82f316027ce7eabf86e88904a12938a3c7b9de218a1f7b` |
| 5 | `theorem` | [isOpenMap_of_hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9.lean/declarations/isopenmap-of-hasstrictderivat--2da4134c41b813aed4a6dbf3.md) | 57 | `result-track:2da4134c41b813aed4a6dbf3d3985da1cc093f01890c68beb690f758829b9038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
