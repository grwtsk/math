# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Opposite.Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22d1d3e866ffb3d514b69ca65ddd502e916650cc",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22d1d3e866ffb3d514b69ca65ddd502e916650cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.FactoriesExtra` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LE.opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/le-opposite--450729b2f1b78b468f4b977d.md) | 56 | `declaration-track:450729b2f1b78b468f4b977d6f54b6b62bfcfc93891c333c47d004087020f0b2` |
| 2 | `theorem` | [LE.opposite_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/le-opposite-def--7d65b2c26184f637cc72a0f8.md) | 59 | `result-track:7d65b2c26184f637cc72a0f8fc17a299dd6e51074cc82bbab64a62eb2f97c015` |
| 3 | `theorem` | [LE.le_opposite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/le-le-opposite-iff--cf9e3554d78378b6f97b06cd.md) | 63 | `result-track:cf9e3554d78378b6f97b06cdf4d030201d6a445b377e9431c5293f1eaf7dd921` |
| 4 | `def` | [LT.opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/lt-opposite--0573943f8c35f8f8ebb54fa9.md) | 94 | `declaration-track:0573943f8c35f8f8ebb54fa90819a44ab6508296af87303168fcb00036409254` |
| 5 | `theorem` | [LT.opposite_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/lt-opposite-def--0cb04a16cc38e2456fc22e9d.md) | 97 | `result-track:0cb04a16cc38e2456fc22e9dc86e9b41873e55d19de92e4f45deb49ca8a189da` |
| 6 | `theorem` | [LT.lt_opposite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/lt-lt-opposite-iff--0f8969869680d7244bf621d3.md) | 101 | `result-track:0f8969869680d7244bf621d32717a8c0993d2a40754c37d88b4f7679c8fa035c` |
| 7 | `def` | [Min.oppositeMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/min-oppositemax--2214848de24ad7701dd57e90.md) | 131 | `declaration-track:2214848de24ad7701dd57e9084587edccdd50b64f7a4d7012d4894e496043db5` |
| 8 | `theorem` | [Min.oppositeMax_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/min-oppositemax-def--3ec8c4e55289ebf2bacca692.md) | 134 | `result-track:3ec8c4e55289ebf2bacca692104d99ee358ccebd0b5e9b41d2e17803c5f31e93` |
| 9 | `theorem` | [Min.max_oppositeMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/min-max-oppositemax--38339e21a91d1a8a58d3609c.md) | 138 | `result-track:38339e21a91d1a8a58d3609c7aecbbe81402962082a3cb1e0f97e6bc6bcbdd17` |
| 10 | `def` | [Max.oppositeMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/max-oppositemin--619783e86c917eaf49ca2611.md) | 168 | `declaration-track:619783e86c917eaf49ca261162405fe5fedd8cb51a49221d7087990a8cced457` |
| 11 | `theorem` | [Max.oppositeMin_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/max-oppositemin-def--15c22b6717122e70b34fc559.md) | 171 | `result-track:15c22b6717122e70b34fc5598e903283114e9e0e1bf32fca92885f0a5a6a5fc9` |
| 12 | `theorem` | [Max.min_oppositeMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/max-min-oppositemin--df1d8a3b1efad6ec7a51aab7.md) | 175 | `result-track:df1d8a3b1efad6ec7a51aab70ddaa03bf0880d21deab7b3035f756c39f00ac0e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--aff5263de8fe67001ce29955.md) | 182 | `declaration-track:aff5263de8fe67001ce299554666b3e6ee99f46d265e5c219ec2c55c5eb74450` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--e3bc9773daa98c151f0e9de4.md) | 188 | `declaration-track:e3bc9773daa98c151f0e9de427319250245bec037738c7b4973bbf90abd6924d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--007832142bb83773678bbb3b.md) | 193 | `declaration-track:007832142bb83773678bbb3b80161811c0fca639edb53a5fbcc29cac2eed3bf2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--9f9c30b239bb274fc597e635.md) | 199 | `declaration-track:9f9c30b239bb274fc597e635c0ecb83bde2d9777fea13b3ee4480387dd4193bb` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--84aaf45d2d92ddfde2296b47.md) | 206 | `declaration-track:84aaf45d2d92ddfde2296b4798c6b8cfbaecc3982e974c21e165736632a62632` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--6126ab4e274ca9a506addd1c.md) | 213 | `declaration-track:6126ab4e274ca9a506addd1c01ba61b8bec254409441844970ba78aed52daabe` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--8e2ab7f63336420a00f9dd03.md) | 220 | `declaration-track:8e2ab7f63336420a00f9dd038cb331a7f5c08a9ebf98a97a66e54409f35d306f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--d8e83bdb12b190a0ce8e746f.md) | 228 | `declaration-track:d8e83bdb12b190a0ce8e746f27c84362d707a39c5bee35c93d6a69de6b3e492c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--6d83296688de6f565b2df68e.md) | 234 | `declaration-track:6d83296688de6f565b2df68e2da0ec8aadc3aa248e03365fe93349d44916e26b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--4217a8287b5e625b4128ee05.md) | 240 | `declaration-track:4217a8287b5e625b4128ee053d084f7ed7566e14ebf9f87258969176443e9675` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--05245b191063acadb23cd258.md) | 247 | `declaration-track:05245b191063acadb23cd258f27ecdb76bf437755b091fbb43e9ba067cbcb715` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--9b153d06d5989af72ed978f0.md) | 253 | `declaration-track:9b153d06d5989af72ed978f040124b5af53cea9f170cd05d020babd93a9fb73d` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--ac03f8070d1f4d385eb1ecf7.md) | 259 | `declaration-track:ac03f8070d1f4d385eb1ecf7d873a08fe6e782b3946d5834f9f134e6e5d50abd` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--13ea80cbb020d7b87ffcc0e9.md) | 264 | `declaration-track:13ea80cbb020d7b87ffcc0e9df6dcc222f64261c9ce8dfbafeddc5dec5f4a1b1` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--d58ec4b60e9a29885be1155f.md) | 282 | `declaration-track:d58ec4b60e9a29885be1155fd302e2cd8be1251a9984d746ef8143967d9ede0f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--79708976312c7837fd42d851.md) | 294 | `declaration-track:79708976312c7837fd42d85188fb240b24ccb482698c438e5f2b8b96eb1d2a45` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--428a284c7d2a5ae49657f8f6.md) | 305 | `declaration-track:428a284c7d2a5ae49657f8f6f8f81fae654caf85606d351780cf39fa9338b316` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--de2d1ec726d033b8bd9d4560.md) | 317 | `declaration-track:de2d1ec726d033b8bd9d4560e45f62bb66b2b23b9c20676e3f35cfd55439a553` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--097b61b0f06fe4dfd09b5673.md) | 333 | `declaration-track:097b61b0f06fe4dfd09b567384ba2e4152daa553306d75cbd2c9a5c10ac00691` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--03b30eae8b2a380af5de9bd4.md) | 345 | `declaration-track:03b30eae8b2a380af5de9bd48da8ec15b14dd2e3720181dd15ff183059c962b4` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--e8731048902901e9c159fad5.md) | 361 | `declaration-track:e8731048902901e9c159fad54b8ac4f3168530fdb3746651d15eaacb97846ce5` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variant43d669a641ac2158fab6fd667a1877872ec24ba852d41b0c976fce9c4b7d4551.lean/declarations/instance--58e69efffea606d8f06e83d5.md) | 377 | `declaration-track:58e69efffea606d8f06e83d5b7fda013e2568af7b3a832f5df315c016bb29110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
