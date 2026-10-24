# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SquareRootScale.Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679fe673d28252dc0fe843f89c1db9767eafd6b8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679fe673d28252dc0fe843f89c1db9767eafd6b8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.WeilSpecialization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PacketSquareRootScale](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/packetsquarerootscale--e2a9a785bc14bf1c5085da3f.md) | 19 | `declaration-track:e2a9a785bc14bf1c5085da3f8e0416e5895a49c61244ea2b1a1e527c8ff3af0d` |
| 2 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/constant--92dd41483a4c1d1141461508.md) | 43 | `declaration-track:92dd41483a4c1d114146150834b11b598e740513d2a222d5096b5122656fb479` |
| 3 | `constant` | [*](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/anonymous--d6304ee86019aae8afd292d4.md) | 51 | `declaration-track:d6304ee86019aae8afd292d4b58b219e116fdd5d869553715ef1b083a44dfca3` |
| 4 | `def` | [PacketSquareRootScale.weight](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/packetsquarerootscale-weight--d86bc21f811e0378710a6c7d.md) | 57 | `declaration-track:d86bc21f811e0378710a6c7db0c20de48d6c78433126611813a46d88b2d64caa` |
| 5 | `theorem` | [PacketSquareRootScale.weight_nonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/packetsquarerootscale-weight-nonnegative--f9d2234bcb3be5fd5357d012.md) | 80 | `result-track:f9d2234bcb3be5fd5357d012ceff2e3eac68eb8695bec8876c3d3cc7a413a8e3` |
| 6 | `structure` | [ArithmeticResidualSquareRootScale](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/arithmeticresidualsquarerootscale--b057541d1b92165fcf61bcbc.md) | 112 | `declaration-track:b057541d1b92165fcf61bcbc7b04c1b64d9509bd2027171cf9eb7a961066fe39` |
| 7 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/constant--8b97fb89ec8fcc269e57d10e.md) | 132 | `declaration-track:8b97fb89ec8fcc269e57d10ea2095ef99413ac9343e69904811a7233d7a83dcb` |
| 8 | `constant` | [*](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/anonymous--fed4d973acce4faaf581c567.md) | 141 | `declaration-track:fed4d973acce4faaf581c567c65aa6646877ec8bc0f4e2eb0ef930d82a270457` |
| 9 | `theorem` | [arithmeticTrace_squareRoot_transport_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/declarations/arithmetictrace-squareroot-transport-bound--2ecb8a131b5fbf6719971139.md) | 144 | `result-track:2ecb8a131b5fbf6719971139f8f10b8b73127977cb0be4530743281d34551ee5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
