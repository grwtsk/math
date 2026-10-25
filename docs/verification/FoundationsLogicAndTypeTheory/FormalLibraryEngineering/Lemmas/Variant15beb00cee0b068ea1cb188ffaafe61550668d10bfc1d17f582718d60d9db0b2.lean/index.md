# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca6c99c1d585a7d01fd30d3ae709464cf5cdcead",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca6c99c1d585a7d01fd30d3ae709464cf5cdcead`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Bitwise.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 22; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shiftRight_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftright-eq--5714345f0ba26f2a87bccb9c.md) | 32 | `result-track:5714345f0ba26f2a87bccb9c44b47acdc269fb980f2fc806fc7d7125b641a210` |
| 2 | `theorem` | [natCast_shiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/natcast-shiftright--acb860c4bb44d5043ac0103e.md) | 35 | `result-track:acb860c4bb44d5043ac0103e51cb77a5bb14127ef298d8ac25620f598b5a1bc2` |
| 3 | `theorem` | [negSucc_shiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/negsucc-shiftright--80b211d6d23e6959bf67da85.md) | 38 | `result-track:80b211d6d23e6959bf67da8583fa62191aa5a6af1f1b16e9a912926a53cce731` |
| 4 | `theorem` | [shiftRight_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftright-add--c10d7da52a254e751832fb7d.md) | 41 | `result-track:c10d7da52a254e751832fb7d15182324b8eae571ef7ef13ec732148f335858bc` |
| 5 | `theorem` | [shiftRight_eq_div_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftright-eq-div-pow--44c839ae00fb72485a7f5a61.md) | 52 | `result-track:44c839ae00fb72485a7f5a611b47d68a00f9d0fef44726e306745af72a56162c` |
| 6 | `theorem` | [zero_shiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/zero-shiftright--cc5b219b845730388df6ae5a.md) | 61 | `result-track:cc5b219b845730388df6ae5a63ebb59e02e6d466f896f57e0a16c4a1f7bd3c6d` |
| 7 | `theorem` | [shiftRight_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftright-zero--eeb63079bfe210fbb280c44f.md) | 65 | `result-track:eeb63079bfe210fbb280c44f44b0d94059272404ac73c91fb8913092b8033073` |
| 8 | `theorem` | [le_shiftRight_of_nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/le-shiftright-of-nonpos--d9d2ade3efe995168b2f8924.md) | 68 | `result-track:d9d2ade3efe995168b2f89240402b2a484aeeb7e06fcc9732d6bf928e7f0b858` |
| 9 | `theorem` | [shiftRight_le_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftright-le-of-nonneg--6b311ff2475cb92afa11d5e6.md) | 82 | `result-track:6b311ff2475cb92afa11d5e67635048f0169d0b83dba6c1d6db5d6f4840903a5` |
| 10 | `theorem` | [le_shiftRight_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/le-shiftright-of-nonneg--e96c473291b8ecdd9b27b662.md) | 95 | `result-track:e96c473291b8ecdd9b27b6627e4d6a93c0d4db8b4f633c13cdc37d837aa2da9b` |
| 11 | `theorem` | [shiftRight_le_of_nonpos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftright-le-of-nonpos--3c0a7aeea36a74b2b2db07d0.md) | 103 | `result-track:3c0a7aeea36a74b2b2db07d07c299cdeae31ac28b2548beb54f85c54cccc2865` |
| 12 | `theorem` | [natCast_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/natcast-shiftleft--5c9ede79b2a83163de646a64.md) | 112 | `result-track:5c9ede79b2a83163de646a64ded9ac500228197b99390250341c9287408125c6` |
| 13 | `theorem` | [zero_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/zero-shiftleft--f7fe3ada46f30b73ee232cff.md) | 115 | `result-track:f7fe3ada46f30b73ee232cff9606690866aae4fe395dec0e5d1187968a57368a` |
| 14 | `theorem` | [shiftLeft_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-zero--c73ffcb6d5e60bb6e4998bdf.md) | 120 | `result-track:c73ffcb6d5e60bb6e4998bdf5fc77187488db471fe0572767d04e8e88c0e85e8` |
| 15 | `theorem` | [shiftLeft_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-succ--d7feca2066d863e05e1f6104.md) | 126 | `result-track:d7feca2066d863e05e1f610420ee23e4b860f9ddf95cc16bc07d903a13ca5787` |
| 16 | `theorem` | [shiftLeft_succ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-succ--55394f40134a68a6e74ee997.md) | 138 | `result-track:55394f40134a68a6e74ee997a85a75fe89b89e4e321f7b75e6f8b5aac91e2784` |
| 17 | `theorem` | [shiftLeft_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-eq--b5f59b517f896994443e48df.md) | 141 | `result-track:b5f59b517f896994443e48df9f5553f39ae193ec677b8ee113106663e02e736f` |
| 18 | `theorem` | [shiftLeft_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-eq--fba2e742bfe465465a080e91.md) | 147 | `result-track:fba2e742bfe465465a080e91fc06dadbeb6fb11f5bdf616336a4845ac9e66bd1` |
| 19 | `theorem` | [shiftLeft_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-add--0785278c5ad5d4f924784a71.md) | 150 | `result-track:0785278c5ad5d4f924784a71c84f40f15e375b3870bf3b6102c9af5ee8aee2b7` |
| 20 | `theorem` | [shiftLeft_shiftRight_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-shiftright-cancel--a7585431dbb91eb01ca38991.md) | 154 | `result-track:a7585431dbb91eb01ca38991cc6191ff9b448da6eadfcc8c5ce106f0ba8c3b08` |
| 21 | `theorem` | [shiftLeft_shiftRight_eq_shiftLeft_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-shiftright-eq-shiftleft-of-le--5a680476a99062fe30c8cec0.md) | 157 | `result-track:5a680476a99062fe30c8cec031e67e0b520184fd23cd49f4963f9629388608a8` |
| 22 | `theorem` | [shiftLeft_shiftRight_eq_shiftRight_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-shiftright-eq-shiftright-of-le--359f4aaa05b3bb69027d5ff3.md) | 163 | `result-track:359f4aaa05b3bb69027d5ff32c745fcbec749ed3b20b58295fd7741733f64f0d` |
| 23 | `theorem` | [shiftLeft_shiftRight_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-shiftright-eq--d32641f181234dacd1f42f20.md) | 168 | `result-track:d32641f181234dacd1f42f20870e8a21e6068847dee27fce587ba8191286f927` |
| 24 | `theorem` | [shiftRight_shiftLeft_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftright-shiftleft-cancel--be0ee648d29a071722deda2d.md) | 175 | `result-track:be0ee648d29a071722deda2db43864c792da4ffdfcc8b5394088927851e8b6d8` |
| 25 | `theorem` | [add_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/add-shiftleft--29d7dc76e90f2ac6b6e5dd9a.md) | 178 | `result-track:29d7dc76e90f2ac6b6e5dd9a387c1b1674fb3107386440b353798e9865a6f0ae` |
| 26 | `theorem` | [neg_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/neg-shiftleft--0e222b2ec1ac161f5e73d361.md) | 181 | `result-track:0e222b2ec1ac161f5e73d36119bea6792543c02e8152d45474a4f86b4254c5e8` |
| 27 | `theorem` | [shiftLeft_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-mul--28774e84ca8d6a076c80c232.md) | 184 | `result-track:28774e84ca8d6a076c80c2323794b93d2889bdf784cec232cbfe816154310853` |
| 28 | `theorem` | [mul_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/mul-shiftleft--b39586702e092db80e9b173c.md) | 187 | `result-track:b39586702e092db80e9b173c53a7e89dbffb9973c72d44af1ebf387e436bfb12` |
| 29 | `theorem` | [shiftLeft_mul_shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-mul-shiftleft--b5333c88c999f90f910391ff.md) | 190 | `result-track:b5333c88c999f90f910391ff63a4f3500f55cf2e3ac1e5533c163f5cfeb3b0e8` |
| 30 | `theorem` | [shiftLeft_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/shiftleft-eq-zero-iff--d375378194be0d7a8c97361e.md) | 195 | `result-track:d375378194be0d7a8c97361e60acbaabc64e38c209a5f3395e5109b7fd2721af` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/declarations/instance--88419b4594aa313b8cd84f15.md) | 198 | `declaration-track:88419b4594aa313b8cd84f156db6e6d04f00deef6dccbdde5f93f4f87f7fc9f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
