# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e05c6274c77d6c3c8da6461789760028da7b39",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e05c6274c77d6c3c8da6461789760028da7b39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Except` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Exact` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.ForwardAttr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GCongrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/gcongrlemma--c30e955e875bee6a10e9af78.md) | 130 | `declaration-track:c30e955e875bee6a10e9af78ff0006669344677982cd13d7b24301cf77c5e49f` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/initialize--2477a974b759384b856aba07.md) | 137 | `declaration-track:2477a974b759384b856aba0742f6b13d703dbae5a293481265aacab3c1a996c4` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/initialize--1364971ca72067acf58f5025.md) | 156 | `declaration-track:1364971ca72067acf58f502540ddc68d565896588f01f9e1f175e6210e70d624` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/initialize--c29e3b7acd983b374a447bd4.md) | 220 | `declaration-track:c29e3b7acd983b374a447bd4a8df7b4a681ee51370d7c3bdcad009d7abfe9935` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/syntax--f13b3a12fec5a472c0cc43c9.md) | 222 | `declaration-track:f13b3a12fec5a472c0cc43c97cb0529669b3c344fc290d085299a5efb8e1c724` |
| 6 | `def` | [gcongrDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/gcongrdischarger--a8e3ccc795bb552b262cd669.md) | 228 | `declaration-track:a8e3ccc795bb552b262cd669cbd17e489af41e123ed9f3249e99d78ee93e842c` |
| 7 | `def` | [exactRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/exactrefl--c1baf238fa16b39742efceac.md) | 237 | `declaration-track:c1baf238fa16b39742efceacea34fb7e1842c86d877cd0566d5fc62ca07e6244` |
| 8 | `def` | [exactLeOfLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/exactleoflt--777c612e3fa957743d2b7d95.md) | 244 | `declaration-track:777c612e3fa957743d2b7d95d4c35b85f166e65bada0e899065b420c69ad1b86` |
| 9 | `def` | [symmExact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/symmexact--2dce00a66637e31461e6ef54.md) | 248 | `declaration-track:2dce00a66637e31461e6ef5431cf845ba8cc815de8a9529b3316ba74e3c5cdab` |
| 10 | `def` | [exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/exact--79172a7519fac6b8dbf32725.md) | 251 | `declaration-track:79172a7519fac6b8dbf3272548b91aa172dc7eedd8cd70a1b748ae806db45b92` |
| 11 | `def` | [_root_.Lean.MVarId.gcongrForward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/root-lean-mvarid-gcongrforward--129b9819125902591943fea3.md) | 257 | `declaration-track:129b9819125902591943fea3d5c6f4943f62176e97228f6c13a97b7467b11192` |
| 12 | `def` | [gcongrForwardDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/gcongrforwarddischarger--5ffe1d2141ede3caab47b8ed.md) | 277 | `declaration-track:5ffe1d2141ede3caab47b8ed24460ce2c8681c916844ffa7a9750759e8a98d9f` |
| 13 | `def` | [_root_.Lean.MVarId.gcongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/root-lean-mvarid-gcongr--e1e3c66c788e52bcc049ecfe.md) | 291 | `declaration-track:e1e3c66c788e52bcc049ecfe41771f5e889977eee85bbd5ecc347999f7b6f75c` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/elab--0b3575203ce04751537e7797.md) | 470 | `declaration-track:0b3575203ce04751537e7797e763b7e121d497ddec4b5fb996dd62dbbb37e72c` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/syntax--fccc9e85be601dc728028135.md) | 510 | `declaration-track:fccc9e85be601dc728028135684440117ca0cb43490e80f53906d6a79a6ae91f` |
| 16 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/declarations/elab-rules--d8b9fd42a5af6950423c33b4.md) | 512 | `declaration-track:d8b9fd42a5af6950423c33b41eaee202dfec274d768c5982497da561888876e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
