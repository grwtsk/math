# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.XiPrime.Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "851118523d7291f292485f8d4de1fd89de92f127",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `851118523d7291f292485f8d4de1fd89de92f127`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/xi--47f835efb0b7cb6d410fe93c.md) | 16 | `declaration-track:47f835efb0b7cb6d410fe93cfe7992d24b60a758fbab13c244c5893b1baf4a60` |
| 2 | `def` | [xiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/xideriv--b05d6922f9c314c4928c862b.md) | 19 | `declaration-track:b05d6922f9c314c4928c862b2291591bea22abd8cc0718bc34082651ead1930d` |
| 3 | `def` | [IsXiDerivZero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/isxiderivzero--a76250c7065eb605a756c393.md) | 22 | `declaration-track:a76250c7065eb605a756c393ff1c2678c2799f3a5d3824cde21bfc2b7c776df9` |
| 4 | `def` | [xiDerivMult](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/xiderivmult--02835421643eed7164274e9a.md) | 25 | `declaration-track:02835421643eed7164274e9a590e7c0b66f079c802ba69abc897a04078c43773` |
| 5 | `def` | [zerosIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/zerosin--0df9d645be58c32faa875030.md) | 31 | `declaration-track:0df9d645be58c32faa875030aa4442024ac74c9858d22599cb3d62e01829b86e` |
| 6 | `def` | [Ncount](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/ncount--89837a1d4a33ea1e80a71cf9.md) | 34 | `declaration-track:89837a1d4a33ea1e80a71cf9c3c3a2ede61d1ef6e4b86f63cb4ad4bcb6bc6004` |
| 7 | `def` | [Ndist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/ndist--63de974f75eb31b16c973826.md) | 37 | `declaration-track:63de974f75eb31b16c9738261380fd2c0b03a81c61f8def1eecafb0425a19802` |
| 8 | `def` | [N0simple](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean/declarations/n0simple--94052334fea4fab60a0c8259.md) | 41 | `declaration-track:94052334fea4fab60a0c82596f16cc0e20b96d731438a4b860d65d68e051fc72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
