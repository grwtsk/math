# Verification target: GRWTSK.Algebra.Defs.Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18a38e761d156c799c88b99520a571e6b124c06d",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18a38e761d156c799c88b99520a571e6b124c06d`.

Source path: `GRWTSK/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subsemiring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SubringClass](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subringclass--d4bba2c88f35768fc98b1b36.md) | 82 | `declaration-track:d4bba2c88f35768fc98b1b363b68bcb6b2c2750aa373879d8b8fc6cf8751abc2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--3a81e4f0295c4a89ebb53c82.md) | 86 | `declaration-track:3a81e4f0295c4a89ebb53c8205d3095b8e5753aa5c2a7e1e98dcb30fd88f4dbe` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--d0d9f8cd851863d3f52a7ecf.md) | 90 | `declaration-track:d0d9f8cd851863d3f52a7ecfa95b7e13acedfd7fbf015593ddc6c7acf154387b` |
| 4 | `theorem` | [intCast_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/intcast-mem--be705a95d25c4524ffbf8481.md) | 96 | `result-track:be705a95d25c4524ffbf84819186566eb4f7fdb3a6dfe535b28136b53fb26981` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--3b13bf0c7a5e04dd52cb1b84.md) | 100 | `declaration-track:3b13bf0c7a5e04dd52cb1b848a249b84ad8bbe804b3edc48e4b2f7017828e3c0` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--b39e0eb5357480d92e62cce0.md) | 105 | `declaration-track:b39e0eb5357480d92e62cce067d3d03c6c54dd505ccc35fd60418e110b0e2b59` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--515785ab159482bca680d5a0.md) | 111 | `declaration-track:515785ab159482bca680d5a0c2a6eea12c1fa21834064b42f8c0a36f92ecfdd9` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--e31165b46da20457bdf25286.md) | 119 | `declaration-track:e31165b46da20457bdf252861c71aafa618c2f086c04d331c59e63be103569cc` |
| 9 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subtype--ee0c61b3876575bf183c16e0.md) | 123 | `declaration-track:ee0c61b3876575bf183c16e0479305df1177f6097081897c4714960de5566ad9` |
| 10 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subtype-apply--dcd4c41ab5ea99b96605db0c.md) | 129 | `result-track:dcd4c41ab5ea99b96605db0ca6d7d106e687041b8e35531d0e0a23bc09b17dee` |
| 11 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subtype-injective--c8bf25f244981353d52f03f1.md) | 132 | `result-track:c8bf25f244981353d52f03f1bfe16259e0cb655c67907b4b5dded02f501ac0a1` |
| 12 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-subtype--2bc44132149eec39775b1981.md) | 137 | `result-track:2bc44132149eec39775b198155402808a4429ac054e5a5ba920e23e3b726957f` |
| 13 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-natcast--4ea145f7533ec08b9764d68e.md) | 144 | `result-track:4ea145f7533ec08b9764d68e1ff6a0a6cc41dea34e21aa7738f364d906c1351e` |
| 14 | `theorem` | [coe_intCast](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-intcast--05c6eb1402f0641e3b871c9a.md) | 147 | `result-track:05c6eb1402f0641e3b871c9a2e300f0456b3051ae7c4da79a36ef078927f6ac6` |
| 15 | `structure` | [Subring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subring--e069c431dd0dec44844ea27f.md) | 158 | `declaration-track:e069c431dd0dec44844ea27fc77080d168087bf3385e5a73b40b5cc7b94a7df8` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--9a95aea2ef88484b5b6b5efe.md) | 171 | `declaration-track:9a95aea2ef88484b5b6b5efedfd322e5fc704509d72bca6990ea3e9412532a54` |
| 17 | `def` | [ofClass](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/ofclass--f9215a96f2c3c8692d49bed7.md) | 179 | `declaration-track:f9215a96f2c3c8692d49bed7607cb23bb06caac2e0dbf59605d0ba8aa9662053` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--761fdcbc10106e1956aa2e47.md) | 188 | `declaration-track:761fdcbc10106e1956aa2e47c2b54bcf513407a4bdd669e9e8711d103a9774ab` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--407d44ed5f630d80afadfd35.md) | 200 | `declaration-track:407d44ed5f630d80afadfd35a8cef15805f9adccc5cb896d0bbb173213c128fc` |
| 20 | `def` | [toNonUnitalSubring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/tononunitalsubring--5fa74d6546f3a8d4f186217e.md) | 208 | `declaration-track:5fa74d6546f3a8d4f186217e0715d1e633845da4999090c5eebb3e0011c9f093` |
| 21 | `theorem` | [mem_toSubsemiring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mem-tosubsemiring--9419f195b91946d7723dca7b.md) | 211 | `result-track:9419f195b91946d7723dca7b140eedae05e840228ce1ea42429ae16c6d076fe9` |
| 22 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mem-carrier--4af6b9b4a777319d67895b5e.md) | 213 | `result-track:4af6b9b4a777319d67895b5e2cf312fb6c684ef03f7987bd94d28e516cf84d4d` |
| 23 | `theorem` | [mem_mk](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mem-mk--15783b76ef825680ea27836e.md) | 217 | `result-track:15783b76ef825680ea27836e1c2a8347e4d7e9da91fd44a40383613a336935d5` |
| 24 | `theorem` | [coe_set_mk](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-set-mk--2220c5e0aa3bf1cc981efc41.md) | 219 | `result-track:2220c5e0aa3bf1cc981efc4142f9cfdeda6228c1d881e996cabbfaffcd20bc2d` |
| 25 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mk-le-mk--5a9c802f7a6cdc9df3f9ce47.md) | 222 | `result-track:5a9c802f7a6cdc9df3f9ce473e3f175ad5100ffb374a58047fa2e87fe98b81f7` |
| 26 | `lemma` | [one_mem_toNonUnitalSubring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/one-mem-tononunitalsubring--eff1b4d8aa5c34c66f3e066b.md) | 226 | `result-track:eff1b4d8aa5c34c66f3e066b29fa4d68bdc844def91deb5c912db15e6d824cf6` |
| 27 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/ext--ecfa042af1df6326caa42021.md) | 230 | `result-track:ecfa042af1df6326caa420211b29b8fdeb1db5a15be58ffc2c6f8c8e74188ce1` |
| 28 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/copy--a3cccb203d36cf9c35723ece.md) | 236 | `declaration-track:a3cccb203d36cf9c35723ece27e04923685e7a8945c830bec2526ea8b53c3ac5` |
| 29 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/copy-eq--d047a2b7321c207f6df21ca9.md) | 241 | `result-track:d047a2b7321c207f6df21ca9dff0fc7dbfe7fabcc3d31f9664213aa6987c7168` |
| 30 | `theorem` | [toSubsemiring_injective](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/tosubsemiring-injective--7cec58cce52ac7715db63b3a.md) | 244 | `result-track:7cec58cce52ac7715db63b3a7c5f9be746ce70bafd69a5f4a71bbe4d923f0b4a` |
| 31 | `theorem` | [toAddSubgroup_injective](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/toaddsubgroup-injective--cf8914febba94067e6e0b17e.md) | 247 | `result-track:cf8914febba94067e6e0b17e8bd48ebcee63eedc60c36ab8253d2b1bd43d433d` |
| 32 | `theorem` | [toSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/tosubmonoid-injective--33e519e89d92a971c6c1c9a9.md) | 250 | `result-track:33e519e89d92a971c6c1c9a9ea157f9748523b35885dbf66cc809323a237d27a` |
| 33 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mk--e1cef069d9bf97eb0f820778.md) | 256 | `declaration-track:e1cef069d9bf97eb0f8207785810b423a31fd9ae215000852f53cb1247244020` |
| 34 | `theorem` | [mem_mk'](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mem-mk--ad13aceed159950ef1e14325.md) | 261 | `result-track:ad13aceed159950ef1e143250f4da20e337cc80b81349468f666ea3f7bc2eb08` |
| 35 | `theorem` | [mk'_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mk-tosubmonoid--95c3794bd18f08a884313955.md) | 266 | `result-track:95c3794bd18f08a884313955000b5e7373654b61096c2e2c36e45d599e5b8e4e` |
| 36 | `theorem` | [mk'_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mk-toaddsubgroup--d3ad1870f177eb1f2c575183.md) | 271 | `result-track:d3ad1870f177eb1f2c57518358a9dd273bec6e192a1adb4f395a111f35edc7b7` |
| 37 | `def` | [Subsemiring.toSubring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subsemiring-tosubring--dfb3a1c85dfb873cd8354c2b.md) | 279 | `declaration-track:dfb3a1c85dfb873cd8354c2bbf74b99021d9f59c208a6406aeb1356808af0bdd` |
| 38 | `theorem` | [one_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/one-mem--5575bf075a3cd0eca1ae1801.md) | 290 | `result-track:5575bf075a3cd0eca1ae1801119a9cfb49748ae98b56f6c4f918b544ef30a879` |
| 39 | `theorem` | [zero_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/zero-mem--1cfa4ec7ef934041e2d3d950.md) | 294 | `result-track:1cfa4ec7ef934041e2d3d950e06368376d1547dae46cde3c43c7ef3da262423b` |
| 40 | `theorem` | [mul_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mul-mem--ec96cfa43ada62c4eeb32baf.md) | 298 | `result-track:ec96cfa43ada62c4eeb32baf254dacad15da63dac579e76967d0b340fc44275f` |
| 41 | `theorem` | [add_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/add-mem--a1f630d5b3e11f768225fb70.md) | 302 | `result-track:a1f630d5b3e11f768225fb7077728ec03efa8c335ead0ca9cc2dcb6a87958904` |
| 42 | `theorem` | [neg_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/neg-mem--3db54f855ed19238c82fd721.md) | 306 | `result-track:3db54f855ed19238c82fd7214d9ffc179a986f456f34c5e8d2f3c1f28695c01b` |
| 43 | `theorem` | [sub_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/sub-mem--c028b0b892ff996a4f41148c.md) | 310 | `result-track:c028b0b892ff996a4f41148cea48ba3bc39630b9b240ecee8a05cda4e7acfc62` |
| 44 | `instance` | [toRing](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/toring--9d68c9c5c5257ef1e551736b.md) | 314 | `declaration-track:9d68c9c5c5257ef1e551736b718ab4a04f1c23fdb56c3285b4621c867eb07f9d` |
| 45 | `theorem` | [zsmul_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/zsmul-mem--d5daf66fb27fbf0b6eb8cd01.md) | 316 | `result-track:d5daf66fb27fbf0b6eb8cd013650b126e12531e18946f444b9e9e9272339412a` |
| 46 | `theorem` | [pow_mem](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/pow-mem--95a3787e6babe85871563e8f.md) | 319 | `result-track:95a3787e6babe85871563e8f36b9206b0c01ea5c6c98ad9c97d3af27ca3693cf` |
| 47 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-add--53650f9608282b16267953de.md) | 323 | `result-track:53650f9608282b16267953deb5c9f37e9f3d96c891860b5ffae3261a3c01cd40` |
| 48 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-neg--b79b8a8f5b9a7beaa3649dbe.md) | 327 | `result-track:b79b8a8f5b9a7beaa3649dbeaeb275e9bd4e1840f6d73a9584eac02f2ab2397f` |
| 49 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-mul--6d955e9b4e9b4a5744f3b6bb.md) | 331 | `result-track:6d955e9b4e9b4a5744f3b6bb4d3b774fb262436fb97fab91369c127c82b3836f` |
| 50 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-zero--97588c6ae6d20f6272d5d4fe.md) | 335 | `result-track:97588c6ae6d20f6272d5d4fe7c18906d6759ed1798bd8ba6f3ecdd4790f8b685` |
| 51 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-one--ebc0bc85d9ea397f7cdf9f8a.md) | 339 | `result-track:ebc0bc85d9ea397f7cdf9f8a79802e3cfd0bc59d152e90797a4df57eeeaa82b7` |
| 52 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-pow--a55b05efc012e13204d5cf0a.md) | 343 | `result-track:a55b05efc012e13204d5cf0a226d826e440e11de8aeb46e87194d73ee2c576bf` |
| 53 | `theorem` | [coe_eq_zero_iff](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-eq-zero-iff--3d807d9482cf885eccf478fa.md) | 346 | `result-track:3d807d9482cf885eccf478fa19b8f47c034f74db5457aefdfc6bc89fb01e9bfc` |
| 54 | `instance` | [toCommRing](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/tocommring--0ce405cef4c464b4a2c9a1a7.md) | 350 | `declaration-track:0ce405cef4c464b4a2c9a1a7799fa96850aeebda91ca3cbe505d5b79078e0f8c` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--94b0146e1af3f3529333c80b.md) | 354 | `declaration-track:94b0146e1af3f3529333c80ba505921ff12d0a1f4f787dfcef8a3a8b8fd784f5` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--45e8675a53b4961a56823a2c.md) | 358 | `declaration-track:45e8675a53b4961a56823a2c57c3bdce5557a61664efafe4550c0b9f0ac0a304` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/instance--1402ee3b9484007f1953b359.md) | 362 | `declaration-track:1402ee3b9484007f1953b3590a77914a00582e2271c2b4fa84a444e386cc873d` |
| 58 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subtype--b47b16131c660609425f4f55.md) | 366 | `declaration-track:b47b16131c660609425f4f5599f70ce6e37aa9bc35822b0c61870a101dae1374` |
| 59 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subtype-apply--a68813084b8c4562175bfc7d.md) | 370 | `result-track:a68813084b8c4562175bfc7dc605727e13ea111ba43a1fc9689de1c39ce5a890` |
| 60 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subtype-injective--79d1407b556f90201bf7d692.md) | 373 | `result-track:79d1407b556f90201bf7d6923a7321166e40bc8b96c7e99d61676c582c3bd7b3` |
| 61 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-subtype--2b50631f1c6a331769eaaa9f.md) | 378 | `result-track:2b50631f1c6a331769eaaa9f625a8fe916cac99b0e71748c5ed82ab0553478e7` |
| 62 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-natcast--2dbe1d55ad7a0d793dc5cb0a.md) | 385 | `result-track:2dbe1d55ad7a0d793dc5cb0a157075e28ca9c9bda92c52f8e5ffbd7f9f514c4f` |
| 63 | `theorem` | [coe_intCast](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-intcast--c0a59a25b41230705d753b8d.md) | 388 | `result-track:c0a59a25b41230705d753b8dab9cd39a3859b1ec920464d056e64e0069dae81f` |
| 64 | `theorem` | [coe_toSubsemiring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-tosubsemiring--abef73557d30bf7e2f3d7134.md) | 393 | `result-track:abef73557d30bf7e2f3d713477387f5a96697480be3359220e6047a026bf9ccc` |
| 65 | `theorem` | [mem_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mem-tosubmonoid--87880933fefc0f0b9536b6e6.md) | 396 | `result-track:87880933fefc0f0b9536b6e620c5f8f97a4a9bf3c57724354d9b72afa46137e2` |
| 66 | `theorem` | [coe_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-tosubmonoid--fd817cb99a2607504af296e4.md) | 400 | `result-track:fd817cb99a2607504af296e4c11baa42cf50f9da03bbf2c4a524c01b07df7861` |
| 67 | `theorem` | [mem_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/mem-toaddsubgroup--028087de29f7c35376b95aa9.md) | 403 | `result-track:028087de29f7c35376b95aa9cd00d8cb6f759d362d34539e9c40efc813b03ef0` |
| 68 | `theorem` | [coe_toAddSubgroup](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/coe-toaddsubgroup--aadcb019fce8a77bb91407c1.md) | 407 | `result-track:aadcb019fce8a77bb91407c1509e52a89e1f95f639493aa6c5894302ab2fb3aa` |
| 69 | `def` | [NonUnitalSubring.toSubring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/nonunitalsubring-tosubring--af5bab1b2bdfabda3fb59aea.md) | 413 | `declaration-track:af5bab1b2bdfabda3fb59aea2aad0fe5cff3c08c6a2aee6b48deaada0de2661e` |
| 70 | `lemma` | [Subring.toNonUnitalSubring_toSubring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/subring-tononunitalsubring-tosubring--18baed67a79899a615d25c43.md) | 417 | `result-track:18baed67a79899a615d25c436c232920291d022127f3b504348b3d3af1ea2c2d` |
| 71 | `lemma` | [NonUnitalSubring.toSubring_toNonUnitalSubring](../../../../mathematics/Algebra/Defs/Variant1552dcdedfc3b479a92ea177913c15c8923d3e9c281f3c1712186cfc3eee66f0.lean/declarations/nonunitalsubring-tosubring-tononunitalsubring--edc8047bcfed3b53fbab06af.md) | 420 | `result-track:edc8047bcfed3b53fbab06af27c7ba942c26eb5b429621e5ec6c69adee388f3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
