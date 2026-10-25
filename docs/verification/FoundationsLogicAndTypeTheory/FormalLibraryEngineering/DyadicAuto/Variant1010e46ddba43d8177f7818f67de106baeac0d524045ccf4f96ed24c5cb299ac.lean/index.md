# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DyadicAuto.Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8716f3dcdd22612d381900eaa26d4ba6b3dd8fa8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8716f3dcdd22612d381900eaa26d4ba6b3dd8fa8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [verify_upper_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/verify-upper-bound-dyadic--fe954df56d993cda86acffd6.md) | 68 | `result-track:fe954df56d993cda86acffd6650f1476a68341939e3146f4ba7bfbe043875551` |
| 2 | `theorem` | [verify_lower_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/verify-lower-bound-dyadic--15a867be304b354970d63ef2.md) | 98 | `result-track:15a867be304b354970d63ef2f0457a874ce46822642540ac1491a763ed3ca19d` |
| 3 | `inductive` | [KernelVerifyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/kernelverifyresult--72779658e638c24ca9fc9b19.md) | 125 | `declaration-track:72779658e638c24ca9fc9b196c5ccd0ebce03baa8fe287ffcd792ebd8bfbb7c9` |
| 4 | `def` | [extractOrReifyAst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/extractorreifyast--72d897da403ebd5454c32c96.md) | 136 | `declaration-track:72d897da403ebd5454c32c96a425c32cc522e66dad87b9b40fbbdd1d8a184631` |
| 5 | `def` | [fastBoundKernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/fastboundkernel--216cc74475fbba4ee2930701.md) | 152 | `declaration-track:216cc74475fbba4ee2930701ae69fc2256011df1a2c73750c2aac1363201eb25` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/elab--4b008a9a5af47322bdd743d0.md) | 342 | `declaration-track:4b008a9a5af47322bdd743d0b120c6c8bbaaa4bb3cbad41968d3e2a056302ba1` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/macro--08280096e9b217e8609b8cf1.md) | 372 | `declaration-track:08280096e9b217e8609b8cf1c1eea97f0fe775a9de801b92031eab9028771247` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/elab--90118a33ca02801990b88174.md) | 380 | `declaration-track:90118a33ca02801990b881746c864f4e0e4d25e4ee23b030510d31ce5dd42077` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/macro--2db880924f1e80d6bca266b3.md) | 386 | `declaration-track:2db880924f1e80d6bca266b3187b402a229f4da5a6391a57ee8684e91d22ba8e` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/elab--a5aac4f048945584ed93f120.md) | 392 | `declaration-track:a5aac4f048945584ed93f1202c9a4723e2af826cccdec1ed48593f5cd1e510fe` |
| 11 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/macro--a214afd21b3da0cebc8111e6.md) | 398 | `declaration-track:a214afd21b3da0cebc8111e6699ac4716860b09634ede262bf680175d6e9127f` |
| 12 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/initialize--f0b5c5cdbda8d947c559629f.md) | 401 | `declaration-track:f0b5c5cdbda8d947c559629f8a82043bad5c614aa40a9aff8caca5791f7d2b1e` |
| 13 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/declarations/initialize--7fcc8f737bdb1edb7d5242d7.md) | 402 | `declaration-track:7fcc8f737bdb1edb7d5242d701e4b93ca303280aa2dd108a2cf5fe5d64baff6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
