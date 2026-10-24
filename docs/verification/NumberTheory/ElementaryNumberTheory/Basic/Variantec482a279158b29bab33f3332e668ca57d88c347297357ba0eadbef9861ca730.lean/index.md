# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7319586d97788d271e343f61c2037f50e82e80dc",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7319586d97788d271e343f61c2037f50e82e80dc`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Gcd` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.Int.DivMod` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/rat--4e5271e671374bd84973a9c8.md) | 24 | `declaration-track:4e5271e671374bd84973a9c83b58d4a57db2bbfac0177fbd54133a2512c5f716` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--9d5b625d57782c2e4b6eed6b.md) | 38 | `declaration-track:9d5b625d57782c2e4b6eed6b1ca569664e812ea67e6f156f11f4a781aa9fd568` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--122a16837ec7db92568a1361.md) | 40 | `declaration-track:122a16837ec7db92568a1361c3ad868b7ad58d1dbb1853f5aa32c34793d11125` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--a2978043d0316e2a8b5edfd6.md) | 43 | `declaration-track:a2978043d0316e2a8b5edfd640bac2f868d09ab8259682b3ac8ae2be1c05e608` |
| 5 | `theorem` | [Rat.den_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/rat-den-pos--3ada37351305ed9094383a1a.md) | 46 | `result-track:3ada37351305ed9094383a1a493a2f94429c3742161ea36e8fb0458d5d78799f` |
| 6 | `def` | [Rat.maybeNormalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/rat-maybenormalize--899aa781410c4eb86db6cf99.md) | 55 | `declaration-track:899aa781410c4eb86db6cf99bf417f070e497b03559514a0c86c640606642cb6` |
| 7 | `theorem` | [Rat.normalize.den_nz](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/rat-normalize-den-nz--76be3ca1ca75761a58dce075.md) | 63 | `result-track:76be3ca1ca75761a58dce07521620e559c18b0ad545875958a606230ddc79e75` |
| 8 | `theorem` | [Rat.normalize.reduced](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/rat-normalize-reduced--7259275a26195abcacb7732e.md) | 67 | `result-track:7259275a26195abcacb7732eff4cf01ee626f64b938eff2a1ba7b147c3770523` |
| 9 | `def` | [Rat.normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/rat-normalize--d6d620a7f44d5bfe9fe6f8a2.md) | 80 | `declaration-track:d6d620a7f44d5bfe9fe6f8a25deac73cbef6f3b3580b86d24055c03c546ef024` |
| 10 | `def` | [mkRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/mkrat--061a3d47874df21223065dc7.md) | 90 | `declaration-track:061a3d47874df21223065dc793d58cd9f74edb9aaf59c37eadd167a424e26ad0` |
| 11 | `def` | [ofInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/ofint--f780ae3689a7abda94f0cc72.md) | 96 | `declaration-track:f780ae3689a7abda94f0cc72972c539ccc16fb16ee7fd6af50203ef75e4e491e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--655a8dc61daaad4e5a200419.md) | 98 | `declaration-track:655a8dc61daaad4e5a2004197903fdb3ed6bbbaf15fc74a6bd051ffe400c6291` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--c5d41531b409896efabe9c16.md) | 100 | `declaration-track:c5d41531b409896efabe9c16ee23e07b10ec33878b20cd54625397f28c311539` |
| 14 | `def` | [isInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/isint--bca2137f44dcb238717cbcb2.md) | 103 | `declaration-track:bca2137f44dcb238717cbcb2b4a866fe77b4fa257c28e703a6b17823326616d1` |
| 15 | `def` | [divInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/divint--57f388fdeaaee158c9e7bd42.md) | 106 | `declaration-track:57f388fdeaaee158c9e7bd42ade9e74933bc7a66269fe32f1918c6cd59a212ce` |
| 16 | `def` | [ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/ofscientific--c6f802efcb0fcdeb8b3f3ea7.md) | 115 | `declaration-track:c6f802efcb0fcdeb8b3f3ea7e4cdf226ef435d24d081885360bb450d1e7432bc` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--c0ff028d7ac7aaf3292552fa.md) | 121 | `declaration-track:c0ff028d7ac7aaf3292552fa8ec4f67fd75a501d4e74bcea55ec9d5282bdd885` |
| 18 | `def` | [blt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/blt--e0a71774dc97cf34daac5a83.md) | 124 | `declaration-track:e0a71774dc97cf34daac5a83aeb2223923d9e6e65091a196788d2855c6646f06` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--ca3a9730fcd4e53444fc4ed3.md) | 135 | `declaration-track:ca3a9730fcd4e53444fc4ed3f5f2668ed5097398d96be85f169cae141734b0cb` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--643d5ed0a0a61dfced77312d.md) | 137 | `declaration-track:643d5ed0a0a61dfced77312d55da8fc13a5db4bd17a56e954be478759ab9398e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--573e694353a2614b1ae05440.md) | 140 | `declaration-track:573e694353a2614b1ae054402566c7849cf523f6f42f4f9943045494aefc97e3` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--2b651055a4d9fac1530a29e1.md) | 142 | `declaration-track:2b651055a4d9fac1530a29e13b7fda67f05353c43cfe2f5962066e62c6e55a0a` |
| 23 | `def` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/mul--d966116c3fed8826f1314f7a.md) | 147 | `declaration-track:d966116c3fed8826f1314f7ac2fe363d3f6ab46f1ffcb64073dcabf52fee9c46` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--80578421333212cdbd809652.md) | 164 | `declaration-track:80578421333212cdbd8096524ce0fd19c5c2898a5561b6db4b349693aa6ef08e` |
| 25 | `def` | [inv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/inv--7f50ffda5f3c8e54cef32fbf.md) | 170 | `declaration-track:7f50ffda5f3c8e54cef32fbffb6a6293217d7cc2c90b951f0429873013be878f` |
| 26 | `def` | [div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/div--256aca300e9eaf7315c99786.md) | 183 | `declaration-track:256aca300e9eaf7315c99786540051c619414e9c154674d64105b4241ba955c2` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--3fc44d2b207160950047be5f.md) | 187 | `declaration-track:3fc44d2b207160950047be5fccfeac24d6b79c964cbfb1124037ad3c4a0b484e` |
| 28 | `theorem` | [add.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/add-aux--8522eb10b4a467fb9b67a4bf.md) | 189 | `result-track:8522eb10b4a467fb9b67a4bf9a1d3a5def3d958655279b12e05a253cbda89632` |
| 29 | `def` | [add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/add--72e4a8f80805f5f22e1adeeb.md) | 221 | `declaration-track:72e4a8f80805f5f22e1adeebd3882fd0c358a6d161055740942e2ba44df9cd2c` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--cdde4070cb0c2f3d3e17f0a0.md) | 236 | `declaration-track:cdde4070cb0c2f3d3e17f0a059663aa4045a624f9f97a3caaec0066a4c58c2d0` |
| 31 | `def` | [neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/neg--b42c5f58d1b6f7607ac26780.md) | 239 | `declaration-track:b42c5f58d1b6f7607ac267800f14a9aafcbe38c87ec43e675d76c2c5e2ae45dc` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--cacd14a0b66ba90c10b9d731.md) | 242 | `declaration-track:cacd14a0b66ba90c10b9d7313fa2d6f322f180a14a72a5e63aa2e675cc540489` |
| 33 | `theorem` | [sub.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/sub-aux--44598a20d4d6acba0ce61b58.md) | 244 | `result-track:44598a20d4d6acba0ce61b58fb8aa5b406171d89a7aa4e0a490e00727c2667d5` |
| 34 | `def` | [sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/sub--0edf353434177c57e2e398d5.md) | 255 | `declaration-track:0edf353434177c57e2e398d57beca087fd1bc0824442bec82d700ab9f1b22fe8` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/instance--06af50406c77e9d7f9b11781.md) | 270 | `declaration-track:06af50406c77e9d7f9b11781a3dbf62dbd2ecc55c97573cb94c048742fe3c403` |
| 36 | `def` | [floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/floor--f61c2875fb26f9178e5f1f6d.md) | 273 | `declaration-track:f61c2875fb26f9178e5f1f6dfd1e4ca2d961c6410d0e4d48eb8eca92c39f9dbb` |
| 37 | `def` | [ceil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantec482a279158b29bab33f3332e668ca57d88c347297357ba0eadbef9861ca730.lean/declarations/ceil--d324af9de295a74d79b5dcaa.md) | 280 | `declaration-track:d324af9de295a74d79b5dcaa61f88c6712f7091e6062f675608d9ed409820cc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
