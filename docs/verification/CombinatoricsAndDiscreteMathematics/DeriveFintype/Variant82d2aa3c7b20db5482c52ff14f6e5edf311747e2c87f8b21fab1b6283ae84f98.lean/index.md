# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f995c6ce284307641add31441447ad45eb0e8a1",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f995c6ce284307641add31441447ad45eb0e8a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveFintype` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/a--ea94120ed80e03cbd8286cd2.md) | 12 | `declaration-track:ea94120ed80e03cbd8286cd298b814d16181cec855eb7de8b247ba6986134983` |
| 2 | `inductive` | [A'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/a--9bb007a54983927f6f99c383.md) | 21 | `declaration-track:9bb007a54983927f6f99c383c0b7970a02b1a2cf6e8f11d83588ef5d9ed48929` |
| 3 | `inductive` | [A''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/a--e6bd8c11f281e5b55760a8fe.md) | 30 | `declaration-track:e6bd8c11f281e5b55760a8fe132e3d8b31358bf3eff61b5ad9de88f14a008ffd` |
| 4 | `inductive` | [B](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/b--9ee0e4e7ec01ae620dfc37bf.md) | 44 | `declaration-track:9ee0e4e7ec01ae620dfc37bf42ed620166680eb12ed3794ae833aafb444c230f` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--b4692c38432d2a88c6e9b1d3.md) | 47 | `declaration-track:b4692c38432d2a88c6e9b1d3f9e5d8bd7f711310c64ce79bb4a95a3f58154d3c` |
| 6 | `inductive` | [C](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/c--c3cd09c96ee1c028325537e0.md) | 49 | `declaration-track:c3cd09c96ee1c028325537e002c2cfe25cab4aa1811a519480702c1d2beab5be` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--457b7aa3acb900c2bff505c1.md) | 58 | `declaration-track:457b7aa3acb900c2bff505c122271533e108180073f2774e846ce20280e0ae0c` |
| 8 | `inductive` | [C'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/c--faf7893f00fcc602f8edd043.md) | 60 | `declaration-track:faf7893f00fcc602f8edd0432d3debd4877ad3c1cbef251b0afacc1d223d4d15` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--a20ae10450c2902135cde87c.md) | 67 | `declaration-track:a20ae10450c2902135cde87c1a6ac64df4bbf472094dfb8a7b2e79069256dbdf` |
| 10 | `inductive` | [C''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/c--77273586b507c7c0365037a9.md) | 69 | `declaration-track:77273586b507c7c0365037a9074ef8c94c1b372fbd27e9645aa7ae63b87a55c2` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--cb108dba8367852031040961.md) | 72 | `declaration-track:cb108dba836785203104096122d482a07803b224edb1e6d68e9aaffe22d35e42` |
| 12 | `inductive` | [D](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/d--55fe6891bdb62a155b18c5fd.md) | 84 | `declaration-track:55fe6891bdb62a155b18c5fd5798d00f7863b314b54331a8b21cec0cff4fa116` |
| 13 | `inductive` | [baz](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/baz--2520f789551f0abc65488072.md) | 95 | `declaration-track:2520f789551f0abc6548807231a2500831c330ca770114a3edccc280164c4a28` |
| 14 | `inductive` | [bar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/bar--3fd418109dc9dae97f704488.md) | 98 | `declaration-track:3fd418109dc9dae97f7044887cad256fc368bb0ea64a762f9f6d18ceeba73676` |
| 15 | `inductive` | [Y](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/y--a5216f34938ec2370b2d93ab.md) | 105 | `declaration-track:a5216f34938ec2370b2d93ab538258dabe996a9bf366035e791017b68d6527a5` |
| 16 | `structure` | [S](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/s--8c7f6f2546c9355d967cf7fc.md) | 109 | `declaration-track:8c7f6f2546c9355d967cf7fcf57651f610fee5d4629bc13585ccdd64b4bcdcca` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--d295aa2e1e63264aed038b73.md) | 113 | `declaration-track:d295aa2e1e63264aed038b732d969bf2c91cd0568a213fcd73c4057d7f1d0ea3` |
| 18 | `inductive` | [MyOption](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/myoption--33f85421693d7289fc55ce35.md) | 115 | `declaration-track:33f85421693d7289fc55ce3552a35cc471b3a1c5f46c91267cf8356e2d9b8793` |
| 19 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--ec801836819801d994133613.md) | 120 | `declaration-track:ec801836819801d994133613369fc20ea2080f171033eb7fa738fc96fce0f583` |
| 20 | `inductive` | [I](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/i--c19f978900a887ce202cd60c.md) | 123 | `declaration-track:c19f978900a887ce202cd60c7798f7c6c5b83de1a3b4a1994cf15eeaa23f6c98` |
| 21 | `inductive` | [I'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/i--71113d535d29f9a14e5df202.md) | 127 | `declaration-track:71113d535d29f9a14e5df2024c4b493df159346a8aa8298d2bd5da36bc1f9c8c` |
| 22 | `def` | [myBoolInst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/myboolinst--b06449a1ac4ea1485ba00709.md) | 135 | `declaration-track:b06449a1ac4ea1485ba007091bfb31e4600d612db43340002136df1fe39a6f62` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--ada5038c4a74ff0f209cff3d.md) | 137 | `declaration-track:ada5038c4a74ff0f209cff3d004748e1140ab3ae12fabe06cb6afee05f31d4ca` |
| 24 | `def` | [myBoolInst'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/myboolinst--cba127c8dc93f0bc37589a61.md) | 139 | `declaration-track:cba127c8dc93f0bc37589a619e734aa1916ffd9772f86aca7b1dedea9e41ea02` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--77e0ca7fdf7469844cb8ddd2.md) | 141 | `declaration-track:77e0ca7fdf7469844cb8ddd205c860feb590f5769c924a4e95140f1295b9a8ba` |
| 26 | `def` | [myProdInst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/myprodinst--cef2b45ac2badd6486f3629b.md) | 143 | `declaration-track:cef2b45ac2badd6486f3629bfb13f11edc92ff12fcc2914166678cf3839cfae3` |
| 27 | `structure` | [MySubtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/mysubtype--9f3ca1bbba62a262de7b6fd6.md) | 145 | `declaration-track:9f3ca1bbba62a262de7b6fd65ecaa10ecd2af1b041bd7a90d62e24c1444ad83a` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/instance--5840768a4390ff814b2d78f8.md) | 150 | `declaration-track:5840768a4390ff814b2d78f86cad9393e207a1010fa5f0db28d35573ed428cc1` |
| 29 | `inductive` | [Alphabet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/alphabet--79bc614bd0efe50a31b9ea18.md) | 157 | `declaration-track:79bc614bd0efe50a31b9ea188904e4a90f873c337b820ddbd32388e2aa2daba7` |
| 30 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--afe510c29617163a1bb9d720.md) | 164 | `declaration-track:afe510c29617163a1bb9d72056880ae99f69eb71512984d221d411b10f5e8a93` |
| 31 | `inductive` | [foo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/foo--f0802ed82b913b62577399be.md) | 166 | `declaration-track:f0802ed82b913b62577399bec4424d7bac58f911a059aa8416f97944ef53cc1a` |
| 32 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/example--9149eca3818eca56f71a6919.md) | 172 | `declaration-track:9149eca3818eca56f71a6919fb78b76bab773b2711caa286bf11ad81b57f7462` |
| 33 | `inductive` | [foo2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/foo2--4d8d17ddf31f9e210f68c38e.md) | 174 | `declaration-track:4d8d17ddf31f9e210f68c38ea801549425a675ff511108d2571812152206fd47` |
| 34 | `inductive` | [foo3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/foo3--72edc695e8b88f09be887fef.md) | 181 | `declaration-track:72edc695e8b88f09be887feffdad3e44284ea1b8efa16cd201dc57f34840fb07` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/instance--6200fd6af5266eb4543558cc.md) | 186 | `declaration-track:6200fd6af5266eb4543558cc36ad83c10344bd0a2c648a6076236a92031828d7` |
| 36 | `structure` | [foo4](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/foo4--ed6b0effcdd08d914f41e197.md) | 189 | `declaration-track:ed6b0effcdd08d914f41e1977abfcea3b63938980fe39bd1f7b35050e617f75d` |
| 37 | `class` | [MyClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/myclass--1d0294798b0709541c9ca299.md) | 195 | `declaration-track:1d0294798b0709541c9ca2992fb8d5dc486b3fb2383aec67168d62f0c751d89b` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant82d2aa3c7b20db5482c52ff14f6e5edf311747e2c87f8b21fab1b6283ae84f98.lean/declarations/instance--891f2281f9dba6e6568f7058.md) | 199 | `declaration-track:891f2281f9dba6e6568f7058ea3052034bd15bde9c86657e6929e3c96cd209db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
