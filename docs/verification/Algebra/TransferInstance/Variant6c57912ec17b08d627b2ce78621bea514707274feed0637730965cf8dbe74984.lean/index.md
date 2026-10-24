# Verification target: GRWTSK.Algebra.TransferInstance.Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96b7d04b69b68415549a665fc71ac099914d6f0d",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/index.md) · [Full source](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96b7d04b69b68415549a665fc71ac099914d6f0d`.

Source path: `GRWTSK/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [one](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/one--4a6da52d3db82a113177e08d.md) | 53 | `declaration-track:4a6da52d3db82a113177e08d9d94a8aa45effc62a37c9a85e8bf7e246dc05bd4` |
| 2 | `theorem` | [one_def](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/one-def--f69ef31ebb25f47bb49d78e4.md) | 59 | `result-track:f69ef31ebb25f47bb49d78e4a0c3b35910fbb1eb3f40d82266e7ea749b64d35a` |
| 3 | `def` | [mul](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mul--eaef058ab165675e1df32239.md) | 68 | `declaration-track:eaef058ab165675e1df322397d51b66931df23ae178878c65ac307edc3af08f5` |
| 4 | `theorem` | [mul_def](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mul-def--1f46a1bff45b8b4bdd8fab02.md) | 74 | `result-track:1f46a1bff45b8b4bdd8fab02aa71cd9d4bcb3fe4581eb252dc6a8a6500c9664a` |
| 5 | `def` | [div](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/div--6b45de50a5d2ff582bc7bb58.md) | 83 | `declaration-track:6b45de50a5d2ff582bc7bb584da27a661de397a6b8a7884213466fc1745ca9ac` |
| 6 | `theorem` | [div_def](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/div-def--710f4a6e55ebd5dc9296eadd.md) | 89 | `result-track:710f4a6e55ebd5dc9296eadd8634266bc5c3cd153202a4db0f281db8170a8bad` |
| 7 | `def` | [Inv](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/inv--5df4c7ddd4fc437bece16044.md) | 100 | `declaration-track:5df4c7ddd4fc437bece160441a2b22e82c357edac080558bd319822e53faad3f` |
| 8 | `theorem` | [inv_def](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/inv-def--32e45e4e529ed9295343ff57.md) | 106 | `result-track:32e45e4e529ed9295343ff57a1037d8070b1bcf2b5fad8b259230ef2f949c167` |
| 9 | `def` | [smul](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/smul--137198c8fc9636872ca54351.md) | 115 | `declaration-track:137198c8fc9636872ca54351a52354b1821ef94dc006d96c5b52f988cba9b92c` |
| 10 | `theorem` | [smul_def](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/smul-def--58dc16bbc1fc2390b6a30303.md) | 119 | `result-track:58dc16bbc1fc2390b6a30303a52365a82cf5a9c15c7203c1f4de41d54be02ec6` |
| 11 | `def` | [pow](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/pow--a595eac41e110b38a9586a5b.md) | 127 | `declaration-track:a595eac41e110b38a9586a5b446cc0445890bf6b9bb6eb7a1c9d4cf5e5e59e2c` |
| 12 | `theorem` | [pow_def](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/pow-def--2e255305c4bdcb2dfe72957b.md) | 131 | `result-track:2e255305c4bdcb2dfe72957bfdb8f36e52862db0f2e26fa87e16899c74fe5931` |
| 13 | `def` | [mulEquiv](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mulequiv--4e543837d3f12204802e16c1.md) | 143 | `declaration-track:4e543837d3f12204802e16c1784a0ffddd1bfddd4a9da72b6876ceaa4696da4c` |
| 14 | `theorem` | [mulEquiv_apply](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mulequiv-apply--6c8ecf39192135d8567b6472.md) | 156 | `result-track:6c8ecf39192135d8567b64728b9654b99663779af451c30a5deb65c5bcefbbf6` |
| 15 | `theorem` | [mulEquiv_symm_apply](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mulequiv-symm-apply--2742f67d304e24922f04ea60.md) | 162 | `result-track:2742f67d304e24922f04ea60beb9324732cbe845049299e90aec9742294b9212` |
| 16 | `def` | [ringEquiv](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/ringequiv--d04b67f269f22fc947857ccd.md) | 173 | `declaration-track:d04b67f269f22fc947857ccdf8fbcff76f0de4aa9b5c734631863156b5f363a9` |
| 17 | `theorem` | [ringEquiv_apply](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/ringequiv-apply--b0d943659243c8ac15a4c1a0.md) | 189 | `result-track:b0d943659243c8ac15a4c1a0ae3fb0bd375bd739ae4c42ef3e95da1ea487efdc` |
| 18 | `theorem` | [ringEquiv_symm_apply](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/ringequiv-symm-apply--f7a305d36158a8e61882dc31.md) | 193 | `result-track:f7a305d36158a8e61882dc313b2899fdf7af190c732302f5133c2d5e63d43f0a` |
| 19 | `def` | [semigroup](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/semigroup--2a6df407f6160540829947bd.md) | 201 | `declaration-track:2a6df407f6160540829947bdbc7c36b220fd8014762ed456b50014088e941a75` |
| 20 | `def` | [semigroupWithZero](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/semigroupwithzero--9391abc7c8653e408c22b3a8.md) | 209 | `declaration-track:9391abc7c8653e408c22b3a8edd9e457605891891f8aca562f44b0f18a4161fa` |
| 21 | `def` | [commSemigroup](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/commsemigroup--9557b8a7f0a24c06803b0226.md) | 217 | `declaration-track:9557b8a7f0a24c06803b02262a8efc1561446e7de2af35b2a8f8289a720f8a70` |
| 22 | `def` | [mulZeroClass](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mulzeroclass--8d41e83e7e5b958ddb8e808d.md) | 225 | `declaration-track:8d41e83e7e5b958ddb8e808d32734b21c584833191547bfeaca0c4d154c01c98` |
| 23 | `def` | [mulOneClass](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/muloneclass--56ea0dc7218be1047f666ce1.md) | 233 | `declaration-track:56ea0dc7218be1047f666ce162458406398bbae978e5d9f0b99c4beb9aee2c2b` |
| 24 | `def` | [mulZeroOneClass](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mulzerooneclass--71ed5b0069a03af6e8ef7bab.md) | 242 | `declaration-track:71ed5b0069a03af6e8ef7babebf6024c5ed93f8d5a9d7e867b332276f1d6e348` |
| 25 | `def` | [monoid](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/monoid--b4ec4be7e492a33e9311bbda.md) | 251 | `declaration-track:b4ec4be7e492a33e9311bbdaa85259418cfa05ffa6da1b35ebf05917e5f86ef1` |
| 26 | `def` | [commMonoid](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/commmonoid--29e781ea30d30a9d9425c1ee.md) | 261 | `declaration-track:29e781ea30d30a9d9425c1ee6c224b86dce7acd60d31d8a9775098eed9c28e26` |
| 27 | `def` | [group](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/group--4e2808a8c93a8001bb0e0e5c.md) | 271 | `declaration-track:4e2808a8c93a8001bb0e0e5cfc6b02babdaf10db2b6582c0d98543e46ef23c97` |
| 28 | `def` | [commGroup](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/commgroup--9003cecff9d044a29c135600.md) | 284 | `declaration-track:9003cecff9d044a29c135600c493f81697453588067faa8d5cb78f6f1fd04b1e` |
| 29 | `def` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonunitalnonassocsemiring--fd1b9634f9e7aba383c84047.md) | 297 | `declaration-track:fd1b9634f9e7aba383c84047f3b5cd122fcf789c796238ab85c0679481b75981` |
| 30 | `def` | [nonUnitalSemiring](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonunitalsemiring--a17c1c9f57845237bd170a7f.md) | 308 | `declaration-track:a17c1c9f57845237bd170a7f693fd3ec2660fec29006644aff46fcc0f3464895` |
| 31 | `def` | [addMonoidWithOne](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/addmonoidwithone--1125c9b0a8d69d346aca789a.md) | 318 | `declaration-track:1125c9b0a8d69d346aca789ab543b22e5d77739a4280fb2b0c3e8bf4e8e9a167` |
| 32 | `def` | [addGroupWithOne](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/addgroupwithone--d9ded88a4123b45b65e5c3f6.md) | 327 | `declaration-track:d9ded88a4123b45b65e5c3f6862b89d0cd539e345463b5929a9eeea218777404` |
| 33 | `def` | [nonAssocSemiring](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonassocsemiring--7126e9babbb1fc3c6d5e8e04.md) | 338 | `declaration-track:7126e9babbb1fc3c6d5e8e04ae8cfb36846719b81c50f3842aa6ba68712a647c` |
| 34 | `def` | [semiring](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/semiring--bddc64661afadfb1fd4afe7d.md) | 346 | `declaration-track:bddc64661afadfb1fd4afe7d0bd6d369b6774f7c81ba9bad8339d7d6e6ae8913` |
| 35 | `def` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonunitalcommsemiring--2001c739d863bdb2daebee1a.md) | 355 | `declaration-track:2001c739d863bdb2daebee1a863bc6f924dff872159600ba48009ab076c697d2` |
| 36 | `def` | [commSemiring](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/commsemiring--20585fbc8fd81089f7439e36.md) | 365 | `declaration-track:20585fbc8fd81089f7439e369c163673bf6bb3f56e703c965f075246934d41fd` |
| 37 | `def` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonunitalnonassocring--430775aa15068f4a5fb7cea1.md) | 374 | `declaration-track:430775aa15068f4a5fb7cea1dbbb04ffa739fb35be1c7e68a3f51601f269e02a` |
| 38 | `def` | [nonUnitalRing](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonunitalring--a26f7195381d9518de64b930.md) | 387 | `declaration-track:a26f7195381d9518de64b93024c2005f7619eb0f2f0872a35e4606b59fb10722` |
| 39 | `def` | [nonAssocRing](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonassocring--c7f7ce5a74badb24cf254b79.md) | 400 | `declaration-track:c7f7ce5a74badb24cf254b79c5fa5d7d1c795a70d718e807cff886051550d2a9` |
| 40 | `def` | [ring](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/ring--ec805dd4b168f0d0e3ecac9b.md) | 408 | `declaration-track:ec805dd4b168f0d0e3ecac9b874bf3f445133ce65e99d2515174ee3709e90cac` |
| 41 | `def` | [nonUnitalCommRing](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nonunitalcommring--71f5fcddba374e4bf82cf80e.md) | 417 | `declaration-track:71f5fcddba374e4bf82cf80eb6c6762f543ef08b17a052536f3cc5e74ba20ab4` |
| 42 | `def` | [commRing](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/commring--d46172e90e80060abfd1936f.md) | 430 | `declaration-track:d46172e90e80060abfd1936f38aaa222ae67beac544d7677cc6173efc978bdae` |
| 43 | `theorem` | [nontrivial](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/nontrivial--6878f0926a30048b2a2231d5.md) | 439 | `result-track:6878f0926a30048b2a2231d5798c47e4b7e91dfc89c53a00ae8b916682556a52` |
| 44 | `theorem` | [isDomain](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/isdomain--c3a2a0f6e86cf41633c6318d.md) | 445 | `result-track:c3a2a0f6e86cf41633c6318dab1ab80f1a4e61d666f312d8cad2d427e962a5f1` |
| 45 | `def` | [RatCast](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/ratcast--7083b12ae59703baffe57790.md) | 451 | `declaration-track:7083b12ae59703baffe5779024e2eba5348bf4b0ca42fc744110a73071994c80` |
| 46 | `def` | [divisionRing](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/divisionring--bd8f33e4a9d3ff8d7c2af50d.md) | 456 | `declaration-track:bd8f33e4a9d3ff8d7c2af50d8ba9ccf1d8f2c93c49c311c4725a6ca1302cd7ad` |
| 47 | `def` | [field](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/field--8636124ff36da8cf96c8d436.md) | 470 | `declaration-track:8636124ff36da8cf96c8d436827ab8d9a9762c6e9c57385e3bb48b68d745a7d1` |
| 48 | `def` | [mulAction](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/mulaction--a313dcb94a2c2e9440cb9f65.md) | 493 | `declaration-track:a313dcb94a2c2e9440cb9f65680493097ad0da188da1388db859219deed4a542` |
| 49 | `def` | [distribMulAction](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/distribmulaction--9f635e146521e1632da33af2.md) | 501 | `declaration-track:9f635e146521e1632da33af2cf98a075c632d5b9e6a17288c04d0e0d69a661e5` |
| 50 | `def` | [module](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/module--f5e1342b34de06a685de53b4.md) | 521 | `declaration-track:f5e1342b34de06a685de53b491b4bfe08f800e1ef1182444cb6ff968261e3c7c` |
| 51 | `def` | [linearEquiv](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/linearequiv--a565081a7f20b3bd5bc5ae76.md) | 536 | `declaration-track:a565081a7f20b3bd5bc5ae769d22f85dc17899177dc906201fc9d511a456f16e` |
| 52 | `def` | [algebra](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/algebra--58ff736330f73fb0ec8b7026.md) | 557 | `declaration-track:58ff736330f73fb0ec8b7026e196aeeaaa30d56385646874c5e80c4f8e4f21ac` |
| 53 | `def` | [algEquiv](../../../../mathematics/Algebra/TransferInstance/Variant6c57912ec17b08d627b2ce78621bea514707274feed0637730965cf8dbe74984.lean/declarations/algequiv--1b42e1fe2d5b50c45520638f.md) | 578 | `declaration-track:1b42e1fe2d5b50c45520638fac2bb191536f94edd7c9c76ce4f90ca6632c2d3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
