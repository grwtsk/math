# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e12ed84bf6faa52192473321fb0be9f0930c1b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e12ed84bf6faa52192473321fb0be9f0930c1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Literal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/literal--b6b8a7f974df06fb55754c14.md) | 18 | `declaration-track:b6b8a7f974df06fb55754c14f85787a66ce9da97eb3f877029c65b65aef96e2b` |
| 2 | `def` | [fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/fromexpr--3f746de2abe92c07fdc0b2f5.md) | 29 | `declaration-track:3f746de2abe92c07fdc0b2f52cfc2cfed267087ae00468edb27462f322eb7ec0` |
| 3 | `def` | [toExpr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/toexpr--bfc875abeba29a2f1b4cb4dd.md) | 33 | `declaration-track:bfc875abeba29a2f1b4cb4dde3bf59f41b2133a35dbce929505557a64b34f731` |
| 4 | `def` | [reduceUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reduceunary--2313253a2d20643b21c9eb09.md) | 42 | `declaration-track:2313253a2d20643b21c9eb099138d5656c8596362ff8aeb9d56a5c51b0419a67` |
| 5 | `def` | [reduceBin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reducebin--e74d4c004552c80e1da04bac.md) | 51 | `declaration-track:e74d4c004552c80e1da04bacab0d4870447239a44e3b7e89d38827bcfb13da2d` |
| 6 | `def` | [reduceExtend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reduceextend--f74e2e12c1db32ca23105cc7.md) | 62 | `declaration-track:f74e2e12c1db32ca23105cc7c6908a0e59854d0aa725182bdf23499fc3f765c5` |
| 7 | `def` | [reduceGetBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reducegetbit--f0123183661b18bd54276c6f.md) | 72 | `declaration-track:f0123183661b18bd54276c6fff12ae3d9a152bf6a7e025c0d5ee4bcd610d2e50` |
| 8 | `def` | [reduceShift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reduceshift--45339802243d7f27f51a084d.md) | 83 | `declaration-track:45339802243d7f27f51a084d27cfe3789911c7bb8cc0b04f3e589f0fe925da47` |
| 9 | `def` | [reduceShiftWithBitVecLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reduceshiftwithbitveclit--0db518110044a9223b902c5f.md) | 94 | `declaration-track:0db518110044a9223b902c5fee78bb46d6b12f4f425b0cbaf27386b4650f1fc2` |
| 10 | `def` | [reduceBinPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reducebinpred--48f7b3109037035004d311c1.md) | 103 | `declaration-track:48f7b3109037035004d311c1295d4335de68096e3577c3f6d444ff0d6e7cfec2` |
| 11 | `def` | [reduceBoolPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reduceboolpred--027c52f59006929e6f0fd818.md) | 114 | `declaration-track:027c52f59006929e6f0fd8183f2b7be073810b25d58b80fe28c90ed5172518dc` |
| 12 | `def` | [reduceShiftShift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant13cc3c6132a1f492059feaa4c9d5d04c1eccbe3b3f13f745f6a86374fdfc90ca.lean/declarations/reduceshiftshift--cf2dc1d2cdcd919ee84a0f31.md) | 377 | `declaration-track:cf2dc1d2cdcd919ee84a0f312c47673d059454c0020593e7eca8f6df7e4f40e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
