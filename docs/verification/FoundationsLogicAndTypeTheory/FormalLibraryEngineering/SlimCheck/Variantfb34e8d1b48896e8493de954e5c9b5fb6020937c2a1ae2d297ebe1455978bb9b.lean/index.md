# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SlimCheck.Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6b980c939ac02f00f9e840f9b316dc49a73ec06",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6b980c939ac02f00f9e840f9b316dc49a73ec06`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Notation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Have` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Testing.Plausible.Functions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Testing.Plausible.Sampleable` — import line 9; external provider; requires a separately pinned dependency.
- `Plausible` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/test-sorry--83ff24c790a258fc6a1d5f23.md) | 12 | `declaration-track:83ff24c790a258fc6a1d5f2384ab14b7241d32de055d791e8916f80f1bfce544` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--8db3451529d6bed81ebfabe1.md) | 25 | `declaration-track:8db3451529d6bed81ebfabe1f5d1ab72d82144808e160b9dd63828d30a9e16f0` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--7d591f38fc4f0972886fa1c7.md) | 46 | `declaration-track:7d591f38fc4f0972886fa1c7787a105f9b0def24e233bff6d685c3be71ee1bb3` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--9f74aa19ae8527b8c884a8d3.md) | 99 | `declaration-track:9f74aa19ae8527b8c884a8d35f596eb38ddd64726853fac9acbaac9d04e10e3d` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--82c5c4bac44b96df8871094e.md) | 116 | `declaration-track:82c5c4bac44b96df8871094e59994400d5cf5ee55acc29097b65d3937ada3379` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--11f1b381efdd186fe01b002a.md) | 132 | `declaration-track:11f1b381efdd186fe01b002a9f442a05bf1b60dd0b9d89aa97b9368edf94447d` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--ffc8b944abf74c3a6c798fbc.md) | 148 | `declaration-track:ffc8b944abf74c3a6c798fbc7acb7a171e5bdc769b892bc93c50a3a36c13a02b` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--ddbfca64e4b588d2092368c4.md) | 154 | `declaration-track:ddbfca64e4b588d2092368c4ba72d75a6a8c48a5336ca9e70596d1457c00442e` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--51e4851af7db95d4c45f2e9a.md) | 169 | `declaration-track:51e4851af7db95d4c45f2e9a83760d4e36dba0d3fcd51bcdc81d116df1cc8a27` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--a1d149b11aaa9b836f16138a.md) | 184 | `declaration-track:a1d149b11aaa9b836f16138a04d56d600b7a00c8b6bf4ef91bc61da8a4952003` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--f4baf4142946acabc227cb4a.md) | 205 | `declaration-track:f4baf4142946acabc227cb4a0308605d50ce730cc81b255b40f55a06a7cfc3c6` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--5a4f207e4e26cc4aa8aedd1a.md) | 223 | `declaration-track:5a4f207e4e26cc4aa8aedd1a28a16b46f6190d889e8bf68ad7bbccfbed246a71` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variantfb34e8d1b48896e8493de954e5c9b5fb6020937c2a1ae2d297ebe1455978bb9b.lean/declarations/example--41bcc167e147b92b69a2b824.md) | 236 | `declaration-track:41bcc167e147b92b69a2b824561ac82a7668450a93e0383abf4cb28a193e1b3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
