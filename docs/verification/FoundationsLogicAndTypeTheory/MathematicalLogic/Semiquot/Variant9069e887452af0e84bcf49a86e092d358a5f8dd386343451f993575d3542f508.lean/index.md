# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Semiquot.Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57a4725511e167bc02da807bfdb391d8f4d895fa",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57a4725511e167bc02da807bfdb391d8f4d895fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Semiquot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/semiquot--8cf950566f18206651771a20.md) | 25 | `declaration-track:8cf950566f18206651771a20fb90ca5c186804ab2c41707ca4f91d190f0fcf70` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/instance--8d2f148a4470747d46c9f61e.md) | 35 | `declaration-track:8d2f148a4470747d46c9f61e1924c1926cbd3e13ef45ad5d5a11302de133bd92` |
| 3 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mk--65e526cc4695e5a1bf4a7f98.md) | 39 | `declaration-track:65e526cc4695e5a1bf4a7f98d6b90a7e088396731d2247356619b771ee17f0c5` |
| 4 | `theorem` | [ext_s](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ext-s--bd53195aa19980fa90b476ae.md) | 42 | `result-track:bd53195aa19980fa90b476ae5c0af991535a08581f2611571b687b08dc4208be` |
| 5 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ext--4abf7a9ea90c1b65152d1cf1.md) | 47 | `result-track:4abf7a9ea90c1b65152d1cf19f2cf2ddd70712b60239a3e18593c8450a8ca335` |
| 6 | `theorem` | [exists_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/exists-mem--4cc49c2d76aabb18820b8a07.md) | 50 | `result-track:4cc49c2d76aabb18820b8a074bda79fd75f6c50e0db3ccf06167d1a0fd2ca2d2` |
| 7 | `theorem` | [eq_mk_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/eq-mk-of-mem--2ec7abcad9dbf524fa988414.md) | 54 | `result-track:2ec7abcad9dbf524fa988414427309ac33dfe5d1249fb26602e64b867d797484` |
| 8 | `theorem` | [nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/nonempty--f05e8da69f60bbc0a4cfd874.md) | 57 | `result-track:f05e8da69f60bbc0a4cfd8741d904aa3694ba1c013e62ea116fb5dbaf60946d0` |
| 9 | `def` | [pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/pure--673a7c7f0974dcfd47c85737.md) | 61 | `declaration-track:673a7c7f0974dcfd47c857373ed513c3e43edde5f27baebd91a5a36010c99d06` |
| 10 | `theorem` | [mem_pure'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mem-pure--4d0e2677f1c1c1af37ace309.md) | 65 | `result-track:4d0e2677f1c1c1af37ace309ae4dddb03cc4ab80f9cef68ee784910d83785eaf` |
| 11 | `def` | [blur'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/blur--7c7bb6f4d597c00b9d90c5d9.md) | 69 | `declaration-track:7c7bb6f4d597c00b9d90c5d9232927fe2b0b2b0143aca8ea54a3c2542b79566b` |
| 12 | `def` | [blur](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/blur--650d9b05e75772bfd3843ee0.md) | 73 | `declaration-track:650d9b05e75772bfd3843ee0460caf0a6fb07663482847814f16a9d6b981546d` |
| 13 | `theorem` | [blur_eq_blur'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/blur-eq-blur--cee61a75f2082e1245fda4e9.md) | 76 | `result-track:cee61a75f2082e1245fda4e928ccc5d10a7c75e9d8b3eff74ab21298223bb56d` |
| 14 | `theorem` | [mem_blur'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mem-blur--dfaa5cea9d7c8f638bd453b1.md) | 80 | `result-track:dfaa5cea9d7c8f638bd453b15de56c5feacc474c230fd876b0c513032e56e8e2` |
| 15 | `def` | [ofTrunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/oftrunc--c6947be76b825db7c251259e.md) | 84 | `declaration-track:c6947be76b825db7c251259e83bbba56f0df6857c4ba22a0aaeb7c788904dd9d` |
| 16 | `def` | [toTrunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/totrunc--589cf9e8ca6fe399145c3d19.md) | 88 | `declaration-track:589cf9e8ca6fe399145c3d1996f31b1d5b33ddf48fbf530b560ca453933d663a` |
| 17 | `def` | [liftOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/lifton--91afa7a6c8c425e2fe3df428.md) | 93 | `declaration-track:91afa7a6c8c425e2fe3df428ae4131e12fdf15ac7084b8e13581b581fad9fece` |
| 18 | `theorem` | [liftOn_ofMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/lifton-ofmem--321e2c4a06639ef1818ace4f.md) | 96 | `result-track:321e2c4a06639ef1818ace4fb2099dafff3571a4a2a77138b23cf11e5dc2cfd9` |
| 19 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/map--df7c56cc58b9f4ebddb7c1ab.md) | 101 | `declaration-track:df7c56cc58b9f4ebddb7c1ab68dd14d98624b965e770c7aa202c22aa7c70e4e2` |
| 20 | `theorem` | [mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mem-map--e0ab70aa90543cde0bb70dac.md) | 105 | `result-track:e0ab70aa90543cde0bb70dac451ec90a89eff9c4bce2f7e2e6523fd300d21087` |
| 21 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/bind--a9fd3a69df7beeba61957504.md) | 109 | `declaration-track:a9fd3a69df7beeba6195750421c4b6764082c49f67ff8fc3daf5a2d27611b52d` |
| 22 | `theorem` | [mem_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mem-bind--d381c69619c873ad02d6eaf6.md) | 113 | `result-track:d381c69619c873ad02d6eaf68caaee4bfc6367f3130944f96cad39279f48a203` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/instance--b496f511422e19a6ae4b1430.md) | 116 | `declaration-track:b496f511422e19a6ae4b1430746c8997b1b012e4a5b9a25a3be4e053398d7aa2` |
| 24 | `theorem` | [map_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/map-def--03efeea3c767757201799017.md) | 122 | `result-track:03efeea3c7677572017990173f5bbf5e09c985a3c1638d57afc3648dd23ea78a` |
| 25 | `theorem` | [bind_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/bind-def--a15b2ee33fbc5e7cd8b4a57a.md) | 126 | `result-track:a15b2ee33fbc5e7cd8b4a57a5a64990b7a65d0df549afa9f1a274e02e068a23a` |
| 26 | `theorem` | [mem_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mem-pure--6f922f7a189299157212d027.md) | 130 | `result-track:6f922f7a189299157212d0270c3b002ed275f71d5380a116909a4b0fc76468e8` |
| 27 | `theorem` | [mem_pure_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mem-pure-self--d0018f4d586673a8249c9dc6.md) | 133 | `result-track:d0018f4d586673a8249c9dc6c8028ddedd75359e64933e781ba68f30921443eb` |
| 28 | `theorem` | [pure_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/pure-inj--ad89b3cd5d2513594b62fd91.md) | 137 | `result-track:ad89b3cd5d2513594b62fd91f53dcb5f793f96e3f3d879b71aed517774ed52c0` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/instance--5d83b97e3068b171276ded67.md) | 140 | `declaration-track:5d83b97e3068b171276ded67ace4c7ebd06dcca66e2e0da80882f9077f47b5cd` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/instance--ade74ee975635c3de997cfe4.md) | 150 | `declaration-track:ade74ee975635c3de997cfe416c825f1dcf116951f134042cbfdadc9fe2e92ac` |
| 31 | `instance` | [partialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/partialorder--216f7345a6b8b3aba9b073a4.md) | 153 | `declaration-track:216f7345a6b8b3aba9b073a4d38d706086a1c5a6f5be9f1fd4deffcefc5f3dc4` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/instance--f03d5594cb1fe71805f4ccf3.md) | 159 | `declaration-track:f03d5594cb1fe71805f4ccf355d4cc287164736d610a2c76b835bad294d73020` |
| 33 | `theorem` | [pure_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/pure-le--11e0e89a49a05f93cf7f83c2.md) | 167 | `result-track:11e0e89a49a05f93cf7f83c2103d0592ca14be0153b5414e30df8badd680536b` |
| 34 | `def` | [IsPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ispure--92af239a93aedb9fcea2e3ce.md) | 171 | `declaration-track:92af239a93aedb9fcea2e3ce043f72fd87cd66969c88aa973cc9173cb9909dab` |
| 35 | `def` | [get](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/get--dd9d97530e8a1006298f2fa1.md) | 175 | `declaration-track:dd9d97530e8a1006298f2fa1e9eec4b3eeac1c045e8c1bcaa1943f5f3bc2afdf` |
| 36 | `theorem` | [get_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/get-mem--31e88cee1354771d62060611.md) | 178 | `result-track:31e88cee1354771d6206061116e20d026dbddb50e3cace20d17d3de166def12e` |
| 37 | `theorem` | [eq_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/eq-pure--096dedde7830b7b204c19c95.md) | 182 | `result-track:096dedde7830b7b204c19c959c9b38011695c3dc038ed0908b12acdd29f72a45` |
| 38 | `theorem` | [pure_isPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/pure-ispure--e65070f7d0fee854b09dd53c.md) | 186 | `result-track:e65070f7d0fee854b09dd53cabd4f6353ad714ef220bc6549cccae4ae106e9b7` |
| 39 | `theorem` | [isPure_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ispure-iff--24ba63978920c0e2ad2121e9.md) | 191 | `result-track:24ba63978920c0e2ad2121e94ea2311fb84de78f8e34a3add527b66dc9a0ff29` |
| 40 | `theorem` | [IsPure.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ispure-mono--ef26992b74e4f7943c1a3003.md) | 194 | `result-track:ef26992b74e4f7943c1a3003a61db5229d5daea15ca286b89cfd44115e0fcb0f` |
| 41 | `theorem` | [IsPure.min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ispure-min--75ff2903b64cf7f9e291dd01.md) | 197 | `result-track:75ff2903b64cf7f9e291dd0124a440a7fe4fbad959efd24e6395c975bf607704` |
| 42 | `theorem` | [isPure_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ispure-of-subsingleton--b1cf4afbaed076a37c098530.md) | 203 | `result-track:b1cf4afbaed076a37c0985306e29c6f6751a658fd17a4f1c47f0d4cbfcf56afc` |
| 43 | `def` | [univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/univ--45e0a84a4b2ed64ef807b308.md) | 207 | `declaration-track:45e0a84a4b2ed64ef807b3085a67689472ab0d99fd6550caf15b9b253cd8d141` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/instance--1a07945f0f0a5ae37fe0273d.md) | 210 | `declaration-track:1a07945f0f0a5ae37fe0273db571cc743c7a0925ee273d86c44fe9ce85c50aaa` |
| 45 | `theorem` | [mem_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/mem-univ--8f509c350243697ea5babee4.md) | 214 | `result-track:8f509c350243697ea5babee4c00d150604350f1570956801b5a6390e7d75ce20` |
| 46 | `theorem` | [univ_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/univ-unique--1e263f833da98e1a0d479c2a.md) | 218 | `result-track:1e263f833da98e1a0d479c2a5eab73496b733c1cc5b3e440a88e624db3bdeae4` |
| 47 | `theorem` | [isPure_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/ispure-univ--1694760b86bce09aad8ef1fa.md) | 222 | `result-track:1694760b86bce09aad8ef1fa101d37576d668d166ff37cc93f5e8fdb7e3a61b1` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiquot/Variant9069e887452af0e84bcf49a86e092d358a5f8dd386343451f993575d3542f508.lean/declarations/instance--00e31a6898995e724912c46a.md) | 225 | `declaration-track:00e31a6898995e724912c46a61bb559f0a18de1d71d75120fe55577edfa52067` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
