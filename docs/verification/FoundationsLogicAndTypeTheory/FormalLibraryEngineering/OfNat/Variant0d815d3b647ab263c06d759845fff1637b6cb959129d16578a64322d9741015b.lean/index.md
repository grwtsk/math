# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfNat.Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ff7339cc6f82dcc19d2914e3b1540b4ef7a0fc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ff7339cc6f82dcc19d2914e3b1540b4ef7a0fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.LemmasAux` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofNat_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/ofnat-tonat--7f99eb640dba1b8789467ac2.md) | 29 | `result-track:7f99eb640dba1b8789467ac2d44ac2d8c9b4b6017f522d0073729826091f1c14` |
| 2 | `theorem` | [toNat_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/tonat-nonneg--da6fb01b354ce17962eba4ff.md) | 31 | `result-track:da6fb01b354ce17962eba4ff2ae8d80cf00afaa83a71ba88a1dc1c3a4cdb98c2` |
| 3 | `theorem` | [natCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/natcast-ofnat--830df04a68c2c0e680ab9a62.md) | 33 | `result-track:830df04a68c2c0e680ab9a6265eee28f53720286a5a64c102c5aab8962380d52` |
| 4 | `theorem` | [of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/of-eq--4535b248276cc51c7e00ba1b.md) | 35 | `result-track:4535b248276cc51c7e00ba1b6c42c752e6f51696807484f2e56d6573b31d49fb` |
| 5 | `theorem` | [of_diseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/of-diseq--874d8f31347c32b18116b1d7.md) | 40 | `result-track:874d8f31347c32b18116b1d7b7db8d849c5faca9ee2f8643102c2d8f10e129d9` |
| 6 | `theorem` | [of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/of-dvd--de614d89f4c31e08b20356e5.md) | 45 | `result-track:de614d89f4c31e08b20356e5caa54c9ba1092178404fa57d7aaa5e90b0fe9f5a` |
| 7 | `theorem` | [of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/of-le--b838632f6fabf59f979be1b5.md) | 49 | `result-track:b838632f6fabf59f979be1b516356d1efbdae94c3021e2c0a12290f7152353be` |
| 8 | `theorem` | [of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/of-not-le--3f1d3589ab165c8166be3f88.md) | 54 | `result-track:3f1d3589ab165c8166be3f88f40e37e2ca818386d5e02f467c088534c6e21f7d` |
| 9 | `theorem` | [add_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/add-congr--bb61433e2d83c5649822e445.md) | 59 | `result-track:bb61433e2d83c5649822e4452a156d7418768a3140535049da9f0404633a1f48` |
| 10 | `theorem` | [mul_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/mul-congr--b519b78065018f77dbcf490f.md) | 63 | `result-track:b519b78065018f77dbcf490f388caf84d6a52b20a080f1b37a2cab2e481bde61` |
| 11 | `theorem` | [sub_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/sub-congr--ef081c1e2788067d239419fd.md) | 67 | `result-track:ef081c1e2788067d239419fd24488e80fe680ac55c20228588dacb436c080c97` |
| 12 | `theorem` | [pow_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/pow-congr--80c92071b0a25aa0222d866d.md) | 85 | `result-track:80c92071b0a25aa0222d866d87ad8147b6c6652ff3f0de7266c793fdb526e482` |
| 13 | `theorem` | [div_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/div-congr--15e46f132c6693adb1b80dc1.md) | 89 | `result-track:15e46f132c6693adb1b80dc1398dc3644fed7590ba4a6c5d18ae9c4c1efdb9cd` |
| 14 | `theorem` | [mod_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/mod-congr--65795c5d61e25571d06f8879.md) | 93 | `result-track:65795c5d61e25571d06f88791a84ae234cadbf374b1f44939367aa8d9796d2a7` |
| 15 | `theorem` | [finVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/finval--d9043a7f644f260b899931bb.md) | 97 | `result-track:d9043a7f644f260b899931bb7bf6369cc9b738f5af3843298a3820093b601c4a` |
| 16 | `theorem` | [eq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/eq-eq--f6860520087fe51004eaa86c.md) | 101 | `result-track:f6860520087fe51004eaa86c21c338408452db0dbdcce4e7516889d2a6e42f5d` |
| 17 | `theorem` | [lt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/lt-eq--bc83bb3f23688690679c06b2.md) | 107 | `result-track:bc83bb3f23688690679c06b22c4bb16f5aef85583b0d62a71dd154fc1fde71f4` |
| 18 | `theorem` | [le_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/le-eq--e72b1b2be377e6cdc135b1ca.md) | 111 | `result-track:e72b1b2be377e6cdc135b1ca1a167dc4c5ef9586179a21af0e90ae5c9ada774e` |
| 19 | `def` | [num_cert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/num-cert--6f2319a860ae0107d333ff24.md) | 119 | `declaration-track:6f2319a860ae0107d333ff24a38542f05d44fbca4198b8197a250f1a7ed4eefc` |
| 20 | `theorem` | [num](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/num--5ab9a1c8a3bf057e4f6e1f7a.md) | 120 | `result-track:5ab9a1c8a3bf057e4f6e1f7adc691d42ed905a446b606830f614e2b49d970112` |
| 21 | `theorem` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/add--60dbb37dd1895cc4026e08f4.md) | 121 | `result-track:60dbb37dd1895cc4026e08f43b6e1214d3322a13b34d79a78664d0a45565eced` |
| 22 | `theorem` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/mul--8e761245aa557d7a84ab8bf4.md) | 122 | `result-track:8e761245aa557d7a84ab8bf40a1f43d7b8ef9be6496645a81aae859d3c6b604a` |
| 23 | `theorem` | [div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/div--c2bfaef6051210b9d167f539.md) | 123 | `result-track:c2bfaef6051210b9d167f5398c38789ac5da42f844bf411acb1dffecb54126e5` |
| 24 | `theorem` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/pow--f335ad3de9f42d2ae0f4ffe2.md) | 124 | `result-track:f335ad3de9f42d2ae0f4ffe26814048efb9e5d6aeba27d05bf69a86f519426f8` |
| 25 | `theorem` | [mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/mod--690232a393d3a7498a85163c.md) | 125 | `result-track:690232a393d3a7498a85163cc0023e7c168e60f480363d2c8ebb0a42be60b6d1` |
| 26 | `theorem` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/natcast--6ada2f86ae1084c67f52ba54.md) | 129 | `result-track:6ada2f86ae1084c67f52ba5444d91b211327477246043c0afd5e137259f16e17` |
| 27 | `theorem` | [toPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant0d815d3b647ab263c06d759845fff1637b6cb959129d16578a64322d9741015b.lean/declarations/topoly--3af67fdbebe3de2a3d1d50e2.md) | 130 | `result-track:3af67fdbebe3de2a3d1d50e2c79047522abcd027fdfc44b1001a20a049aef099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
