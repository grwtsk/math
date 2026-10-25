# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "146ba0f12ba6ddc102dc70c6c2ed242ba784d262",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `146ba0f12ba6ddc102dc70c6c2ed242ba784d262`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum--92cbc5c415831259ff4ab73d.md) | 35 | `declaration-track:92cbc5c415831259ff4ab73d680bfb1b88d70b2a07ef913232c1dc9e7e039076` |
| 2 | `theorem` | [birkhoffSum_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-zero--5b0549eba95bb721e3d09bbe.md) | 37 | `result-track:5b0549eba95bb721e3d09bbe2abe02bd4a506ddf85fb6e1d32482b0f2f883d61` |
| 3 | `theorem` | [birkhoffSum_zero'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-zero--f3c3189eceb05ee7026f4c5b.md) | 41 | `result-track:f3c3189eceb05ee7026f4c5b14936724adb9d1a6ff742a268ce6f2a7d9a16221` |
| 4 | `theorem` | [birkhoffSum_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-one--8ff02e1e2efe0169648b76ae.md) | 44 | `result-track:8ff02e1e2efe0169648b76aeb7acb3c00e34448803c9fdf08a16028cbae56962` |
| 5 | `theorem` | [birkhoffSum_one'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-one--8a313955e00fe1caf84aab42.md) | 48 | `result-track:8a313955e00fe1caf84aab42bed1aa87c3b7f66a2499b567811e82a963c42d54` |
| 6 | `theorem` | [birkhoffSum_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-succ--4d3128f106b067ea900c6f05.md) | 51 | `result-track:4d3128f106b067ea900c6f0596891fe60efbcd10772fca3233ea905ab1371c09` |
| 7 | `theorem` | [birkhoffSum_succ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-succ--7d24b884b4b33c30fb638f57.md) | 55 | `result-track:7d24b884b4b33c30fb638f5771288cfa20d9baf14b7cc035c5a85c4255a26afe` |
| 8 | `theorem` | [birkhoffSum_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-add--4c473df4a43f71ecc592445c.md) | 59 | `result-track:4c473df4a43f71ecc592445c49d9464a0017a5f9b78e1602444f2376225c36bc` |
| 9 | `theorem` | [Function.IsFixedPt.birkhoffSum_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/function-isfixedpt-birkhoffsum-eq--348e63133c51a09cd5a236b2.md) | 63 | `result-track:348e63133c51a09cd5a236b276558b04bf9c133b0d7c94f4d8b1ec7dee05fa61` |
| 10 | `theorem` | [map_birkhoffSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/map-birkhoffsum--268dbb3c8ff1732e759dabe2.md) | 67 | `result-track:268dbb3c8ff1732e759dabe2e9c10627cfec36a63def47461555bfb8ba2c6ab1` |
| 11 | `theorem` | [birkhoffSum_apply_sub_birkhoffSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbebac9629daa48efb195c8efabab0ac96072a839bf61c17867145774be630187.lean/declarations/birkhoffsum-apply-sub-birkhoffsum--21b60a036e16168ff77dc19d.md) | 81 | `result-track:21b60a036e16168ff77dc19d105fb23a491d19f277f0d446a40b98660dece8a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
