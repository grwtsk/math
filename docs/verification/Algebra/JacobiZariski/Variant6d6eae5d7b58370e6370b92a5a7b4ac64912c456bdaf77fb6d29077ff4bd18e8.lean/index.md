# Verification target: GRWTSK.Algebra.JacobiZariski.Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf0f6ea882e602ecdf39c8b7a061880ff38eda37",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/index.md) · [Full source](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf0f6ea882e602ecdf39c8b7a061880ff38eda37`.

Source path: `GRWTSK/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Generators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.SnakeLemma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Cotangent.surjective_map_ofComp](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangent-surjective-map-ofcomp--2565be6abd037ecd816d133a.md) | 44 | `result-track:2565be6abd037ecd816d133a88744b9b77fa82269db94812d0d912a8fc9fb30d` |
| 2 | `lemma` | [Cotangent.exact](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangent-exact--a0042d6f91cfa421335e8f19.md) | 60 | `result-track:a0042d6f91cfa421335e8f19fb3de29c830fc0df41e97b9d523b322896452370` |
| 3 | `def` | [CotangentSpace.compEquiv](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-compequiv--a0ddaee8ca9d14d2e624c1e2.md) | 111 | `declaration-track:a0ddaee8ca9d14d2e624c1e22a11f660c902248e2cd65840d3b9e6b4dff320bc` |
| 4 | `lemma` | [CotangentSpace.compEquiv_symm_inr](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-compequiv-symm-inr--71fd7e4dbdac9e241e258234.md) | 123 | `result-track:71fd7e4dbdac9e241e2582343da19d95127c95a79b59e2d977d36e461481b9d0` |
| 5 | `lemma` | [CotangentSpace.compEquiv_symm_zero](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-compequiv-symm-zero--b84b10290f4b9132d9929ea3.md) | 143 | `result-track:b84b10290f4b9132d9929ea38319b5ed21be89c2b603db684c8460e777ab47cc` |
| 6 | `lemma` | [CotangentSpace.fst_compEquiv](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-fst-compequiv--1ef710cd48f6aa080fc77b8f.md) | 148 | `result-track:1ef710cd48f6aa080fc77b8f167bea7c2072c4d32977a5733c881d9fb7df7386` |
| 7 | `lemma` | [CotangentSpace.fst_compEquiv_apply](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-fst-compequiv-apply--12cbe0158d773e6b2800f323.md) | 165 | `result-track:12cbe0158d773e6b2800f3231a8bfcf51d5177548822f82afe670263da4334f0` |
| 8 | `lemma` | [CotangentSpace.map_toComp_injective](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-map-tocomp-injective--4bb004199791a839a9d1d5d9.md) | 169 | `result-track:4bb004199791a839a9d1d5d9404b53f8457eb84788d87fbd9cff0a1ade3cf6f1` |
| 9 | `lemma` | [CotangentSpace.map_ofComp_surjective](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-map-ofcomp-surjective--0dda08abdff519e200911428.md) | 176 | `result-track:0dda08abdff519e20091142828aab93abecb93c8a3ed7f7e63d725f0ecb85812` |
| 10 | `lemma` | [CotangentSpace.exact](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/cotangentspace-exact--92259124590bb792a5323291.md) | 186 | `result-track:92259124590bb792a532329117e1c2f3eb3ccf2dec767a5bcadde2ac1dc6e969` |
| 11 | `def` | [δAux](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/aux--dce77e01df6e7fb4ebb5c250.md) | 202 | `declaration-track:dce77e01df6e7fb4ebb5c250692fe48806227918e33c5df278532e7ee1460f0c` |
| 12 | `lemma` | [δAux_monomial](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/aux-monomial--319b2d87a89b209b94185f44.md) | 207 | `result-track:319b2d87a89b209b94185f44d7658abeeef98db39467c7524058913234abcc3e` |
| 13 | `lemma` | [δAux_X](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/aux-x--76d1361881ffee382097c452.md) | 212 | `result-track:76d1361881ffee382097c4524449deb2c0e08d294e31934e53acd26849f50f0e` |
| 14 | `lemma` | [δAux_mul](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/aux-mul--2fea17b908fcc39cc613c483.md) | 217 | `result-track:2fea17b908fcc39cc613c4832d8af93c68242493591ff9e320786796a88bc3da` |
| 15 | `lemma` | [δAux_C](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/aux-c--70f894f1817eca5326686e38.md) | 230 | `result-track:70f894f1817eca5326686e38482a03330932944678174b6469c60e5281f07579` |
| 16 | `lemma` | [δAux_toAlgHom](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/aux-toalghom--64e1441af34f446b1351cc11.md) | 234 | `result-track:64e1441af34f446b1351cc11e18014c2d9e0747873aacb36aa0cf3190e0f09eb` |
| 17 | `lemma` | [δAux_ofComp](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/aux-ofcomp--b21bee75e17b59cc8e57d0aa.md) | 256 | `result-track:b21bee75e17b59cc8e57d0aa160389fcc70726c871c3d5c5acd8b70555e0e71e` |
| 18 | `lemma` | [map_comp_cotangentComplex_baseChange](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/map-comp-cotangentcomplex-basechange--ce85328c00e142c0820d0c2f.md) | 287 | `result-track:ce85328c00e142c0820d0c2f42a06b90adff1fd561539c695c1fac514facaea9` |
| 19 | `def` | [δ](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/anonymous--517412ac04e49d2f1984eead.md) | 313 | `declaration-track:517412ac04e49d2f1984eead792ff7c3375917a14720d35f92700ddc56e84064` |
| 20 | `lemma` | [exact_δ_map](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/exact-map--d7ceaa6ad2125ebd4214f139.md) | 336 | `result-track:d7ceaa6ad2125ebd4214f13969387dabbda5ddbee4cd94dff391c10ed5b36d9f` |
| 21 | `lemma` | [δ_eq](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/eq--b12574fbf4277ec4676dff4e.md) | 352 | `result-track:b12574fbf4277ec4676dff4ea710811c211e753e27bb79d2d9ec12040443ddc8` |
| 22 | `lemma` | [δ_eq_δAux](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/eq-aux--2949a4d9daced040a71785ab.md) | 361 | `result-track:2949a4d9daced040a71785ab28827e3ac4a1301e470924b9f896f28121d71b57` |
| 23 | `lemma` | [δ_eq_δ](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/eq--6ad94935f537a9b07adfd1d9.md) | 383 | `result-track:6ad94935f537a9b07adfd1d9ced5adee9a813c0cb1106e0a569f25f94cac4e65` |
| 24 | `lemma` | [exact_map_δ](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/exact-map--22dbec40511810465d0c5418.md) | 390 | `result-track:22dbec40511810465d0c5418fae8416b818518a15d74935d62229b6896ffd448` |
| 25 | `lemma` | [δ_map](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/map--ee8f785e591b8b5d41a0e938.md) | 399 | `result-track:ee8f785e591b8b5d41a0e93864c92395be51953dd742f62336b72dbc38181e88` |
| 26 | `lemma` | [δ_comp_equiv](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/comp-equiv--096d5c452bc290d0174cb857.md) | 413 | `result-track:096d5c452bc290d0174cb857121a366cfe360800b51946ac30ae458421c76a19` |
| 27 | `lemma` | [exact_map_δ'](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/exact-map--6b07b7a5da36383e8fdfcc30.md) | 421 | `result-track:6b07b7a5da36383e8fdfcc306746cd62dbca9304ee7368331f560382696e7030` |
| 28 | `def` | [H1Cotangent.δ](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/h1cotangent--2da9b1ff112b68309e0e4a13.md) | 442 | `declaration-track:2da9b1ff112b68309e0e4a13297ce666e926e939639d989ccd67abd8caf2e39e` |
| 29 | `lemma` | [H1Cotangent.exact_map_δ](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/h1cotangent-exact-map--d5cf42ddeff8ba23f67a05de.md) | 446 | `result-track:d5cf42ddeff8ba23f67a05debc256bdbc7cfb2bdc347491ae85a34e8f5679740` |
| 30 | `lemma` | [H1Cotangent.exact_δ_mapBaseChange](../../../../mathematics/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean/declarations/h1cotangent-exact-mapbasechange--bc5de73da83559e30668df33.md) | 451 | `result-track:bc5de73da83559e30668df3339abb1696288bfab9e766d3819d9900680c02b58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
