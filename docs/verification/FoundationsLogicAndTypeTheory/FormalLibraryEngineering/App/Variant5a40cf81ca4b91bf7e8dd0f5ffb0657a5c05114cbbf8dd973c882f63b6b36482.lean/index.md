# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.App.Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "559b0157c620291795eaf092087dd0ad761dabf3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `559b0157c620291795eaf092087dd0ad761dabf3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Types` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.CongrInfo` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/mkcongr--4d83646d134a3ede8f4e7d0b.md) | 44 | `declaration-track:4d83646d134a3ede8f4e7d0bd1efb51f2adac5b169c5e18dbfcf309058718fb1` |
| 2 | `def` | [mkCongrFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/mkcongrfun--3e5ccff7667e061d014faaed.md) | 75 | `declaration-track:3e5ccff7667e061d014faaed9ea1b0c68c1195754b2da8a71c16e519f03de8be` |
| 3 | `def` | [simpOverApplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/simpoverapplied--9f626f9d168dcb9e97e5abb3.md) | 114 | `declaration-track:9f626f9d168dcb9e97e5abb3855b71a6cca3891cf5989067773f9630765ca9e4` |
| 4 | `def` | [propagateOverApplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/propagateoverapplied--c55c27ddc04de3575d89e244.md) | 160 | `declaration-track:c55c27ddc04de3575d89e24472aac0886a2963140f19f0d93e6cf6b0f3eed265` |
| 5 | `def` | [whnfToForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/whnftoforall--865f34f5fac2651b08200e17.md) | 180 | `declaration-track:865f34f5fac2651b08200e175d478b7663f174b8e75c7b664e7ba4e6e5db733b` |
| 6 | `def` | [getFnType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/getfntype--87270773c402ae0b69377bfd.md) | 198 | `declaration-track:87270773c402ae0b69377bfdd538601f5e4e3f687d2f3b39a2cd2a820aacd76a` |
| 7 | `def` | [simpFixedPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/simpfixedprefix--1525c6e6fea027336dc3ca6f.md) | 233 | `declaration-track:1525c6e6fea027336dc3ca6fba77b6b0c94eb058610571da5d24950c377eff70` |
| 8 | `def` | [simpInterlaced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/simpinterlaced--f299b1aa38b3d53316bd0728.md) | 285 | `declaration-track:f299b1aa38b3d53316bd07287ce5ec66925af4bc96859622c8e40449f5bd4418` |
| 9 | `def` | [pushResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/pushresult--328f173a8a7255501e3daef1.md) | 314 | `declaration-track:328f173a8a7255501e3daef17e82a507be81860724acd622699337d6264d820a` |
| 10 | `def` | [simpUsingCongrThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/simpusingcongrthm--44ff056896ed0687d15ec5b2.md) | 360 | `declaration-track:44ff056896ed0687d15ec5b22a00d2ff625b1d32fccd50568fea0f19169c4689` |
| 11 | `def` | [simpAppArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/simpappargs--0065384c03ae7589bbdc43c8.md) | 452 | `declaration-track:0065384c03ae7589bbdc43c88b729a40fb07b1e22f44382dee3265dc048e9010` |
| 12 | `def` | [simpAppArgRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/declarations/simpappargrange--b8998c4e376b84949a33f366.md) | 470 | `declaration-track:b8998c4e376b84949a33f366b9271705dbf6b30661a2f26d5492bd6ae7d4773f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
