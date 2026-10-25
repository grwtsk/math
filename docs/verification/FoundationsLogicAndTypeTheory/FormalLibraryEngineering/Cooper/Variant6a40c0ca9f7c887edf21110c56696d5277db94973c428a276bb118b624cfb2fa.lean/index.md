# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cooper.Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15f49a11fe4fadfbd74f08060ae8ac163ae44303",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15f49a11fe4fadfbd74f08060ae8ac163ae44303`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.DivMod.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [add_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/add-of-le--5479edf186571f0382892e84.md) | 22 | `declaration-track:5479edf186571f0382892e840cfcf602ac4d4fef285ac549ca5aa8c5035f3d12` |
| 2 | `theorem` | [dvd_of_mul_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/dvd-of-mul-dvd--181574adb169d534ba6cc1bf.md) | 26 | `result-track:181574adb169d534ba6cc1bfba0587e1c3024b90bd3542c96cc63095dd748556` |
| 3 | `theorem` | [dvd_mul_emod_add_of_dvd_mul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/dvd-mul-emod-add-of-dvd-mul-add--5d02a2dc3966590ca60a689e.md) | 40 | `result-track:5d02a2dc3966590ca60a689ec65bd7ceefd388d1856685056f97e5d8e328e0f7` |
| 4 | `theorem` | [dvd_emod_add_of_dvd_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/dvd-emod-add-of-dvd-add--a638ef8eb1583fd68b44fd52.md) | 57 | `result-track:a638ef8eb1583fd68b44fd525c96d5edb1c0f22adf57d250e2fdea81ff34bee6` |
| 5 | `def` | [resolve_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left--795e99de1e76a50e3b3e81e1.md) | 94 | `declaration-track:795e99de1e76a50e3b3e81e162ac454c1ae9ea1d5d7665a4b45ada404b8a75ad` |
| 6 | `def` | [resolve_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left--45e28bac13e10a5e133a820b.md) | 97 | `declaration-track:45e28bac13e10a5e133a820bbad9a3ad7b896019e4294df701c9cf289651e660` |
| 7 | `theorem` | [resolve_left_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left-eq--529a9e36e82b3d0bdee2f33b.md) | 99 | `result-track:529a9e36e82b3d0bdee2f33b2d5567dffdf7146816557859aec20ab780eaead2` |
| 8 | `theorem` | [le_zero_resolve_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/le-zero-resolve-left--46344dad6ce4a138b9e38e22.md) | 106 | `result-track:46344dad6ce4a138b9e38e2205947365d356d6eb9a6bceac3498cc6cabf936a6` |
| 9 | `theorem` | [resolve_left_lt_lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left-lt-lcm--d76044e7ceb0a52e67032051.md) | 111 | `result-track:d76044e7ceb0a52e67032051f14e6835921ffe82e80d0a86d80cfcb77701acea` |
| 10 | `theorem` | [resolve_left_ineq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left-ineq--36ec1c55969bdde8dbba43d8.md) | 118 | `result-track:36ec1c55969bdde8dbba43d811b53178ce22f8a77b01f53b29fbef7f99f62027` |
| 11 | `theorem` | [resolve_left_dvd₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left-dvd--4516b141c9cd5d5626e55b67.md) | 132 | `result-track:4516b141c9cd5d5626e55b677757a02c124ee15b193f7ab98b03acb01d25382f` |
| 12 | `theorem` | [resolve_left_dvd₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left-dvd--d1a630ab699eacb1f7013cc8.md) | 138 | `result-track:d1a630ab699eacb1f7013cc807e520c4c0c1bf17288a2eed7835543dda70e9d0` |
| 13 | `def` | [resolve_left_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left-inv--f19652c363290463d4b17fe7.md) | 151 | `declaration-track:f19652c363290463d4b17fe7d531394d5ad5759c8d122ecac481a99bfd13f83b` |
| 14 | `theorem` | [le_mul_resolve_left_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/le-mul-resolve-left-inv--36c1925d3bb5166ab4b14e4a.md) | 153 | `result-track:36c1925d3bb5166ab4b14e4a092282ce3cfc9e1f96aca5fdb801c929542ac5b3` |
| 15 | `theorem` | [mul_resolve_left_inv_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/mul-resolve-left-inv-le--15594ca515192b32eeb98aaf.md) | 160 | `result-track:15594ca515192b32eeb98aafa98ac9563ae5074e1b3af79f2c8fe341077b5975` |
| 16 | `theorem` | [resolve_left_inv_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/resolve-left-inv-dvd--14c5363c932a1547759b973b.md) | 167 | `result-track:14c5363c932a1547759b973b894bceed732cf66606e296a5863c49d0f6aaa03a` |
| 17 | `theorem` | [cooper_resolution_dvd_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/cooper-resolution-dvd-left--c02a55d550d8fbb9a2e2e61f.md) | 181 | `result-track:c02a55d550d8fbb9a2e2e61f9fb7352fbdc93115727cfc0d1e0a9a24b4af3d9d` |
| 18 | `theorem` | [cooper_resolution_dvd_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/declarations/cooper-resolution-dvd-right--4d4003778618c7a0f142b13f.md) | 205 | `result-track:4d4003778618c7a0f142b13f5e91c5864b7fb9d4cbe4cd508cf56c9159d84d1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
