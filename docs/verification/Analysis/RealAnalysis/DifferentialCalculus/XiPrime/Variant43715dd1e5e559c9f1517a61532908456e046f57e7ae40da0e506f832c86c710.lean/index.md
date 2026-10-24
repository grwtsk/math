# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.XiPrime.Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "517b5fbb7844775d2864be348c3156d3ba046d1b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `517b5fbb7844775d2864be348c3156d3ba046d1b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/xi--7b759dee4672f6c6688b675c.md) | 24 | `declaration-track:7b759dee4672f6c6688b675cd03d61e6828cf6c2f2456b1de61bae3c5273d79d` |
| 2 | `def` | [xiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/xideriv--eaddb0112cd37ab028bfe5c3.md) | 27 | `declaration-track:eaddb0112cd37ab028bfe5c342c965d3e3a845d276e8b19888ff5d0730003561` |
| 3 | `def` | [IsXiDerivZero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/isxiderivzero--1eb8848bf6109ee0fc1a0f05.md) | 30 | `declaration-track:1eb8848bf6109ee0fc1a0f05197a35f70aec15444c3b68f77d8d307c7d91a9d0` |
| 4 | `def` | [xiDerivMult](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/xiderivmult--d9d9eb2af00d2d53e468fad4.md) | 33 | `declaration-track:d9d9eb2af00d2d53e468fad4091da28d79ae7eeb8606271208c9a5cf4a235b20` |
| 5 | `def` | [zerosIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/zerosin--3f9e9b6412ea8854ec97e874.md) | 39 | `declaration-track:3f9e9b6412ea8854ec97e8747ed8c7c2b43c8f995c3aee627d82b5995e5c7e51` |
| 6 | `def` | [Ncount](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/ncount--763c1e1056fabc2d8bf81621.md) | 42 | `declaration-track:763c1e1056fabc2d8bf8162190ade50e1e9637d00e8ade761d3af5bb46589654` |
| 7 | `def` | [Ndist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/ndist--ebe66832723bf886d7a32a43.md) | 45 | `declaration-track:ebe66832723bf886d7a32a4313c5986428cb64c81f9b62c848592c2390c148fd` |
| 8 | `def` | [N0simple](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710.lean/declarations/n0simple--b1f7196f9ccff46e8f003342.md) | 49 | `declaration-track:b1f7196f9ccff46e8f003342b8da41a676148935044849b0c23521fb098dca73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
