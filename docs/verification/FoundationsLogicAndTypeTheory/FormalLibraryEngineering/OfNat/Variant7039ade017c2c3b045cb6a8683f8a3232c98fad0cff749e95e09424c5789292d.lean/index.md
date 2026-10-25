# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfNat.Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64248c6aa4cef8c34ba9db921f4c1d328450d1c6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64248c6aa4cef8c34ba9db921f4c1d328450d1c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Int.LemmasAux` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofNat_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/ofnat-tonat--5cf0b655708a1e22d1f470ec.md) | 21 | `result-track:5cf0b655708a1e22d1f470ec0f53e8bf383bbd9e345348bbae3bb9eb534254ea` |
| 2 | `theorem` | [toNat_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/tonat-nonneg--07cfce0d2700167b50fc0ff1.md) | 23 | `result-track:07cfce0d2700167b50fc0ff12f231caaa23ac2dc643e1eae578a0f485f80899a` |
| 3 | `theorem` | [natCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/natcast-ofnat--8d76fe10b5b5431b7b3784b1.md) | 25 | `result-track:8d76fe10b5b5431b7b3784b1b1d3ca62f473991798c72c72fecf71c3b9839326` |
| 4 | `theorem` | [of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/of-eq--615aedc828d322cbe16cacbd.md) | 27 | `result-track:615aedc828d322cbe16cacbd2352e017ad719cc7d9cc3edf4634dd13bc04d168` |
| 5 | `theorem` | [of_diseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/of-diseq--940c51265b8f35b7fc916a16.md) | 32 | `result-track:940c51265b8f35b7fc916a16737e1b7a387ae36336458a872560f62f82bd8168` |
| 6 | `theorem` | [of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/of-dvd--74a67a6786d573a43d7fb21a.md) | 37 | `result-track:74a67a6786d573a43d7fb21a2028f1afbd9d0d8cc2dc01983324ae29072c6b67` |
| 7 | `theorem` | [of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/of-le--9caf5810035b58203320b354.md) | 41 | `result-track:9caf5810035b58203320b3540abdf1915ed7522e46e8c9b63daa2b5bcb9cc5ab` |
| 8 | `theorem` | [of_not_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/of-not-le--f08a38355d280bac4cbc17d0.md) | 46 | `result-track:f08a38355d280bac4cbc17d04368765527b4d6d2ae400ba20e5fcc7657060662` |
| 9 | `theorem` | [add_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/add-congr--d6944d1efc09cf667ef64fe0.md) | 51 | `result-track:d6944d1efc09cf667ef64fe08f021f224000b499d55ba6f11dcafafe07b76a00` |
| 10 | `theorem` | [mul_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/mul-congr--84d88e3b30060394b115b1e0.md) | 55 | `result-track:84d88e3b30060394b115b1e0a926776a14d01217cf218817bbb1c78a0f5634f4` |
| 11 | `theorem` | [sub_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/sub-congr--5cd0c212c791c92296f9baaa.md) | 59 | `result-track:5cd0c212c791c92296f9baaac10e909957c4234e578ce7620c24af9327357868` |
| 12 | `theorem` | [pow_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/pow-congr--eee2bf96f619f6481ab9568b.md) | 77 | `result-track:eee2bf96f619f6481ab9568b1e86e370e50df90103a6689b4ce834959e56b5af` |
| 13 | `theorem` | [div_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/div-congr--fe1b58769d2e0ab714ba71e7.md) | 81 | `result-track:fe1b58769d2e0ab714ba71e77743b03e14304f9a031c85b50cb7a6073ba9d23b` |
| 14 | `theorem` | [mod_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/mod-congr--f0f80432edbbf3e32370f796.md) | 85 | `result-track:f0f80432edbbf3e32370f796b4819b2e547c68622820a0a107b0306c50a374a1` |
| 15 | `theorem` | [finVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/finval--d2a455eff9957ca0fd6cfeef.md) | 89 | `result-track:d2a455eff9957ca0fd6cfeef31d034f6fd639a30bbbd99ce550ff457b571a0bc` |
| 16 | `theorem` | [eq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/eq-eq--c026dd7383b71431be437dc6.md) | 93 | `result-track:c026dd7383b71431be437dc6e7aa8fcadb0001f96c4e7b3e854f3999a6fd93de` |
| 17 | `theorem` | [lt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/lt-eq--d5dd76ef4613b7687fd31222.md) | 99 | `result-track:d5dd76ef4613b7687fd31222bfe4279a490150c457ed63e608071adb63b6c46e` |
| 18 | `theorem` | [le_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/le-eq--f2139e5ca3212dc6fce07b49.md) | 103 | `result-track:f2139e5ca3212dc6fce07b49d2ce37e2e6799421c455fee150d2f833be22fdfc` |
| 19 | `def` | [num_cert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/num-cert--0ed147e21398dce1d7e502b2.md) | 111 | `declaration-track:0ed147e21398dce1d7e502b252b2f33fc29434f056d435d3025d12c9795a01f1` |
| 20 | `theorem` | [num](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/num--9b8b79641da70842e4c4512f.md) | 112 | `result-track:9b8b79641da70842e4c4512f43e11ed53c28dd1f7341c8b1a6be6002f357333a` |
| 21 | `theorem` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/add--a852fdbc3560a7221201aba5.md) | 113 | `result-track:a852fdbc3560a7221201aba5952dd08d9183adac721e4f849dce1828a1e49944` |
| 22 | `theorem` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/mul--c396f90358c23d4b0fdca5f7.md) | 114 | `result-track:c396f90358c23d4b0fdca5f72e55bc13fdc6096f22e462f1979901a34cd48ab1` |
| 23 | `theorem` | [div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/div--4b3b1ca9e100a6f179cfd43e.md) | 115 | `result-track:4b3b1ca9e100a6f179cfd43eafd6e5cfdf9c189ac81301c6ee78cafa5d432c9c` |
| 24 | `theorem` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/pow--0a60d7dbd6a4d04771f8e854.md) | 116 | `result-track:0a60d7dbd6a4d04771f8e854ded27fac7108f6369211300d4770f4ead7ba6138` |
| 25 | `theorem` | [mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/mod--3bc02fd1c189077279dfec5a.md) | 117 | `result-track:3bc02fd1c189077279dfec5a4399b45b1605bb1acce62df88b07c0e5add4029d` |
| 26 | `theorem` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/natcast--9fb382ec58e4966d6f9297ed.md) | 121 | `result-track:9fb382ec58e4966d6f9297eddfb6681959b14a56bf1824128109a81ef2640a19` |
| 27 | `theorem` | [toPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNat/Variant7039ade017c2c3b045cb6a8683f8a3232c98fad0cff749e95e09424c5789292d.lean/declarations/topoly--7b913082690b96e659304a31.md) | 122 | `result-track:7b913082690b96e659304a31e7bdee98fcb1eadd42728fccfecc749489147f69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
