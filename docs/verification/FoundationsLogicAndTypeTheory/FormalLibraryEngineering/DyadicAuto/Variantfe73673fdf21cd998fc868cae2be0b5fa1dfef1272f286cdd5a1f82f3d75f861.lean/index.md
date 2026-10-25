# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DyadicAuto.Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "736cd0a197834251628066ae1db85eb97dc01357",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `736cd0a197834251628066ae1db85eb97dc01357`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [verify_upper_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/verify-upper-bound-dyadic--090874d67ba00d5876657bde.md) | 76 | `result-track:090874d67ba00d5876657bde511a4a2d5145d4d405ad31c5e5c2fc9c400c9022` |
| 2 | `theorem` | [verify_lower_bound_dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/verify-lower-bound-dyadic--c0ff5904738383f5d1bc54f0.md) | 106 | `result-track:c0ff5904738383f5d1bc54f00dd9a89c1301908098812e8f93e8d17acb76e121` |
| 3 | `inductive` | [KernelVerifyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/kernelverifyresult--f54bc679d9aec329c21e2dde.md) | 133 | `declaration-track:f54bc679d9aec329c21e2dde0378d35ea8765dc1bd46a4126de56d3d558988f3` |
| 4 | `def` | [extractOrReifyAst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/extractorreifyast--3b05aa95e98810839d5208ab.md) | 144 | `declaration-track:3b05aa95e98810839d5208ab2cad8be076946e0aac7fd227604ca2e58f97c0e8` |
| 5 | `def` | [fastBoundKernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/fastboundkernel--4edac5a65386d9e915cec720.md) | 160 | `declaration-track:4edac5a65386d9e915cec720cf0d72e4f88c22a061a98d01be67dc331ee6ca49` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/elab--d05e973b1ee7d7be6536e3a7.md) | 350 | `declaration-track:d05e973b1ee7d7be6536e3a7ca778dd7ce8a142fdfc479b83f5c77a4085b2ac1` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/macro--06224f045a38dea77f6b99cb.md) | 380 | `declaration-track:06224f045a38dea77f6b99cb9155f6fbef0c49adc44c4e912c5e6d083178e9ce` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/elab--689f4ba7b117cbd7ef019ed9.md) | 388 | `declaration-track:689f4ba7b117cbd7ef019ed9490c9c5bc3039a0bcf8063f2e16df30156edccc8` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/macro--dd026ca3c7824fc4736406df.md) | 394 | `declaration-track:dd026ca3c7824fc4736406dfed7c278988f9efd521654403e944cc657d241af6` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/elab--150593a8faaaddcd3dfab3a0.md) | 400 | `declaration-track:150593a8faaaddcd3dfab3a030fdd442a6400c8257e38d9c0bcf055dd537aa7e` |
| 11 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/macro--48f2bfdb878670db65d3be57.md) | 406 | `declaration-track:48f2bfdb878670db65d3be575fc89fd012f7c63e2d4d55354f0e02e08d67380a` |
| 12 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/initialize--b14ed7c914b948b1c5e27f5e.md) | 409 | `declaration-track:b14ed7c914b948b1c5e27f5e94a2ae594f2e080ad12b4d32a8050ce398321d56` |
| 13 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/declarations/initialize--6488117ec4b8d4f1f2e44323.md) | 410 | `declaration-track:6488117ec4b8d4f1f2e443232869fa3ecef1e748cac7330d5e32900d90e260b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
