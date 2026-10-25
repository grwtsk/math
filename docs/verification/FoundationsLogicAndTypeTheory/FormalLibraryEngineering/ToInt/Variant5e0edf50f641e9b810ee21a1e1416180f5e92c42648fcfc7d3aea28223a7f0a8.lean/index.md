# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50820fc28fefd3edf29b05335ab7ef90553fdbf7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50820fc28fefd3edf29b05335ab7ef90553fdbf7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.LawfulBEqTactics` — import line 14; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IntInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/intinterval--b21a725708c8a7c7a84aae71.md) | 44 | `declaration-track:b21a725708c8a7c7a84aae715cbc234c572ac3885477ab734269abfa774a5f97` |
| 2 | `abbrev` | [uint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/uint--c08f49a1ce75587e8b163165.md) | 58 | `declaration-track:c08f49a1ce75587e8b163165fe34d2ee2c8fba2b33721e146bcf5c015ba4c22b` |
| 3 | `abbrev` | [sint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/sint--7f9467b6697ebbee26db6e27.md) | 60 | `declaration-track:7f9467b6697ebbee26db6e2707fc690f4b8b1161ec3afaf25e6324aaa2dd76bd` |
| 4 | `def` | [lo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/lo--dc1e4f0d85af9159df932fd0.md) | 63 | `declaration-track:dc1e4f0d85af9159df932fd0e83b97f24748c09e5b8b1f6b0a6c3b30b2ccd73a` |
| 5 | `def` | [hi?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/hi--abcf6dfdd700bf2c1eae8da6.md) | 71 | `declaration-track:abcf6dfdd700bf2c1eae8da68cead1621acec203ee9abcd39c644dcdd8902b34` |
| 6 | `def` | [nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/nonempty--13b68bb300f4f1af2e0af4af.md) | 78 | `declaration-track:13b68bb300f4f1af2e0af4af177807ead15b27469e1432dc52d65757382a9447` |
| 7 | `def` | [isFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/isfinite--31d1c2ce81a60abf9bbfc4f5.md) | 85 | `declaration-track:31d1c2ce81a60abf9bbfc4f5d3b9919b0e7a0569766dd14fe469fcd9d45aa2be` |
| 8 | `def` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/mem--ff859e4fab4c56e0cbd0d0b2.md) | 92 | `declaration-track:ff859e4fab4c56e0cbd0d0b2cf5095d17219d61b6e83dd5a4c4fbc4b6f8311e0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/instance--72981fe4180512a2df15e7fa.md) | 99 | `declaration-track:72981fe4180512a2df15e7fa90fb29227190a2412dbbe5492cf9203ed2379fae` |
| 10 | `theorem` | [mem_co](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/mem-co--19df8faab6a549e99f9999a7.md) | 102 | `result-track:19df8faab6a549e99f9999a7f6f36bdfc00f7052ca6b05744efaae764102134a` |
| 11 | `theorem` | [mem_ci](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/mem-ci--f515b37c7ef4c20bc1aec732.md) | 103 | `result-track:f515b37c7ef4c20bc1aec7327cd6dfbade9ce33e0fdea9505486b8fa832c0abf` |
| 12 | `theorem` | [mem_io](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/mem-io--d10ebbf969f501e18372f528.md) | 104 | `result-track:d10ebbf969f501e18372f528fca40842ab5b3831e5c665d941cefc9460aa456c` |
| 13 | `theorem` | [mem_ii](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/mem-ii--7a6552456dbd1c8809183181.md) | 105 | `result-track:7a6552456dbd1c88091831818b8249a88354a6e8aa54056b5f110b84835af6e2` |
| 14 | `theorem` | [nonEmpty_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/nonempty-of-mem--cf1fa159a6304cf4df25b303.md) | 107 | `result-track:cf1fa159a6304cf4df25b3039b6d920616c91f4c4803a0cfa40dd6d0aa2dd3a8` |
| 15 | `def` | [wrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap--fe6f116f7a6bf4219bc99833.md) | 111 | `declaration-track:fe6f116f7a6bf4219bc99833f7b0c485ccd5e29d456ff81663ec799813871098` |
| 16 | `theorem` | [wrap_wrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-wrap--7a1df73db0dc731b58bb807c.md) | 118 | `result-track:7a1df73db0dc731b58bb807cf0174587fa2133f4ad86a692fce4904bdd0dafaf` |
| 17 | `theorem` | [wrap_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-mem--02ff32a3b02dc2b79cf8a533.md) | 122 | `result-track:02ff32a3b02dc2b79cf8a5332756dc774d5685584deb352ea28cc64f0c2280f7` |
| 18 | `theorem` | [wrap_eq_self_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-eq-self-iff--d49e8b9b3d7230b13ea75489.md) | 143 | `result-track:d49e8b9b3d7230b13ea754896679b5af9dc56c22552b867e43fbb92cf4ee5b94` |
| 19 | `theorem` | [wrap_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-add--d7288a29614736a4f2bf3d29.md) | 164 | `result-track:d7288a29614736a4f2bf3d297bd2143f23c0ff0f79f7199c7a371595d2ce75dc` |
| 20 | `theorem` | [wrap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-mul--195cc530234df1e0fcf61feb.md) | 177 | `result-track:195cc530234df1e0fcf61feb079ab76e4f363cfd212e94330a3487017082c0f5` |
| 21 | `theorem` | [wrap_eq_bmod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-eq-bmod--907fabf17aa4129fbd30491e.md) | 197 | `result-track:907fabf17aa4129fbd30491e7557fef2d2cd7ba8a31d44320742018cc7e3feb7` |
| 22 | `theorem` | [wrap_eq_wrap_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-eq-wrap-iff--0a10cc947388e79c35687990.md) | 236 | `result-track:0a10cc947388e79c356879908633bbef6a76161cf9ffb66abf3ffa044c80aeda` |
| 23 | `class` | [ToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint--1d3886b64cd1371c8e0b2a4f.md) | 249 | `declaration-track:1d3886b64cd1371c8e0b2a4f013dd4e3c014849039ca049707a975a5e1879456` |
| 24 | `class` | [ToInt.Zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-zero--9710c0137374c8d8da1e882b.md) | 260 | `declaration-track:9710c0137374c8d8da1e882b5ff9234e37f359e0aa2e1a4af7f73e6e26639a56` |
| 25 | `class` | [ToInt.OfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-ofnat--3ca92af2f1444b6f21e2b60f.md) | 267 | `declaration-track:3ca92af2f1444b6f21e2b60fa92c6073aef9f5ebf074e31fb0ab82ae21b1f2f4` |
| 26 | `class` | [ToInt.Add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-add--80ea77ab29f96eadc678be54.md) | 274 | `declaration-track:80ea77ab29f96eadc678be541f27a7ce2b3e1bb21224a49b916ff135e7fe0bd1` |
| 27 | `class` | [ToInt.Neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-neg--fe697b2a7272ed8e2057729e.md) | 281 | `declaration-track:fe697b2a7272ed8e2057729e55993eddc106de3cb989bbd1e00a278dc288855d` |
| 28 | `class` | [ToInt.Sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-sub--13447af73028e5ec915882f9.md) | 288 | `declaration-track:13447af73028e5ec915882f9f5a6cf43f6adb6df4366e2daeae22bd9eab85a19` |
| 29 | `class` | [ToInt.Mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-mul--fad4595374900b0045448dab.md) | 295 | `declaration-track:fad4595374900b0045448dabbebcc1987594b88754dae814ee2aa435bad3e321` |
| 30 | `class` | [ToInt.Pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-pow--619b18287480579bbcbf1b0b.md) | 302 | `declaration-track:619b18287480579bbcbf1b0bf51a1eb5ff3cef0d2cbf494a5040dd65457deabf` |
| 31 | `class` | [ToInt.Mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-mod--d73e75b1e13c03aa793f9194.md) | 309 | `declaration-track:d73e75b1e13c03aa793f9194bee4b987825ed9f8d9fad155bcfd0b874a4665e8` |
| 32 | `class` | [ToInt.Div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-div--1c6d4c0e0a019581c22b2f2c.md) | 320 | `declaration-track:1c6d4c0e0a019581c22b2f2c0378b0080ccd82d7a6c4175a36fc08d60e9592bd` |
| 33 | `class` | [ToInt.LE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-le--b619311e8d51bebfa21a5007.md) | 331 | `declaration-track:b619311e8d51bebfa21a50072df5bea3b96f9852e609dea95cd37ee5e806aaf8` |
| 34 | `class` | [ToInt.LT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/toint-lt--4239929656c74434a78ca319.md) | 338 | `declaration-track:4239929656c74434a78ca3196fb74cd8d9b450b43af173666b8ba57d73a4ec50` |
| 35 | `theorem` | [Zero.wrap_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/zero-wrap-zero--1672b7ed999402309b0ab2f4.md) | 347 | `result-track:1672b7ed999402309b0ab2f4357b359e9453d39a6ca481099a0fa98719a10bf5` |
| 36 | `theorem` | [wrap_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/wrap-toint--d73689297896d6933c5dd744.md) | 354 | `result-track:d73689297896d6933c5dd744d52cf896fe77f6213834a1e521dc34f28c7852bb` |
| 37 | `def` | [Sub.of_sub_eq_add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/sub-of-sub-eq-add-neg--a07bb6c5e4dcee59375c4db5.md) | 363 | `declaration-track:a07bb6c5e4dcee59375c4db502f9ac999d6b5cecfa00db95613a1180cdca1b15` |
| 38 | `def` | [toIntUnexpander](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant5e0edf50f641e9b810ee21a1e1416180f5e92c42648fcfc7d3aea28223a7f0a8.lean/declarations/tointunexpander--3f2cf2d306c5ff8f4eccae8b.md) | 378 | `declaration-track:3f2cf2d306c5ff8f4eccae8bd3953e4da3ff0756b636968d8ae690efed56d5b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
