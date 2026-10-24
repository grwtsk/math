# Verification target: GRWTSK.Topology.GeneralTopology.Opens.Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf43c31a5759a186aee318cbb709473b9d843936",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf43c31a5759a186aee318cbb709473b9d843936`.

Source path: `GRWTSK/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.CompleteLattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Copy` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Opens](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/opens--27ec5910c04f5272d775d05d.md) | 71 | `declaration-track:27ec5910c04f5272d775d05dc6baa6183cbde1deff57e6645d500f5fa9ab6d71` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--1297f1061c54c3988cbe3056.md) | 82 | `declaration-track:1297f1061c54c3988cbe3056aa1f00fd6b7428c8a149a2b0e9c9c13c748f89da` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--71dba15ff814bc4b21074dc5.md) | 86 | `declaration-track:71dba15ff814bc4b21074dc574f9ee719003cc61c8aa2a49b35434f30d7c18eb` |
| 4 | `theorem` | [«forall»](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/forall--f851880886ee2777a010a588.md) | 89 | `result-track:f851880886ee2777a010a588b6aca9203f309930dc4fc429cbbbc179ee15cda9` |
| 5 | `theorem` | [carrier_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/carrier-eq-coe--bdef6d4dbc7dfb1ace99ef3d.md) | 93 | `result-track:bdef6d4dbc7dfb1ace99ef3d26e0475c4fbd6af207c2da1cb69f1f83dbe8bed7` |
| 6 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-mk--dc9fd25d7d2d9b01117b0512.md) | 98 | `result-track:dc9fd25d7d2d9b01117b051279f70b61061c42faa88043bb0eece51721688f40` |
| 7 | `theorem` | [mem_mk](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/mem-mk--24b8f00f73acfa6495bbbe71.md) | 103 | `result-track:24b8f00f73acfa6495bbbe715a55edaf9b165d3e13c1fdf921e462817e3e0154` |
| 8 | `theorem` | [nonempty_coeSort](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/nonempty-coesort--d4fd72a8f1dfdb59a129bc59.md) | 107 | `result-track:d4fd72a8f1dfdb59a129bc59ea9fcb98566ae20364ac9ba8f9866cd966acc635` |
| 9 | `theorem` | [nonempty_coe](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/nonempty-coe--178470f653eb9a6360974d38.md) | 112 | `result-track:178470f653eb9a6360974d38dad1bf3a571336cdca7709947a2af428c0698d99` |
| 10 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/ext--642a8d4398fab641069c266c.md) | 116 | `result-track:642a8d4398fab641069c266c019337a0439ee67996b469394be2274fbb939756` |
| 11 | `theorem` | [coe_inj](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-inj--95b905b535a88341272763ad.md) | 121 | `result-track:95b905b535a88341272763ad360a51560dfa5c70fd275823e0f2d7ecb6ff77ce` |
| 12 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isopen--965ea2887cad2b1b185a2715.md) | 125 | `result-track:965ea2887cad2b1b185a2715a1a9e0fb08ca30d42479792f519b82e53559616d` |
| 13 | `theorem` | [mk_coe](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/mk-coe--f0a0ce4ff7ef3937db9b5d6c.md) | 129 | `result-track:f0a0ce4ff7ef3937db9b5d6ca42f6c9414e9728a999a8dddac4f1a4576980734` |
| 14 | `def` | [Simps.coe](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/simps-coe--52054f03a1e6cfe2bf6fef0a.md) | 133 | `declaration-track:52054f03a1e6cfe2bf6fef0af401cba9159890846a22c943cbc7c6e00090dd29` |
| 15 | `def` | [interior](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/interior--c305507dbbb27bc6cedb4785.md) | 139 | `declaration-track:c305507dbbb27bc6cedb47859768f9e7bceb04bf549021ef435c471684add98f` |
| 16 | `theorem` | [gc](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/gc--e5ac22c6f4ee2d31b139c0c4.md) | 143 | `result-track:e5ac22c6f4ee2d31b139c0c489a3c26fefccde547a4bdf6c9533a2af53128da8` |
| 17 | `def` | [gi](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/gi--311beb03887e04d7a694980f.md) | 148 | `declaration-track:311beb03887e04d7a694980f14e8db30b63988c4727b96ef4d1e3c0034731b14` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--f48837686d138ac203980a3a.md) | 155 | `declaration-track:f48837686d138ac203980a3aa772b44b4a71bb8e9a5fa55c8836a9966cfee73f` |
| 19 | `theorem` | [mk_inf_mk](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/mk-inf-mk--358b86c5bdbcf5e1047180ed.md) | 175 | `result-track:358b86c5bdbcf5e1047180ed5cba7f5e811e4c80d5f235ce27f1890a4d4223ac` |
| 20 | `theorem` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-inf--63cf83935f48833ba06460b7.md) | 181 | `result-track:63cf83935f48833ba06460b75a367d19765f07b5b400fe9902be089f8cacbff9` |
| 21 | `theorem` | [coe_sup](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-sup--f0ce4336175b63dd5e318687.md) | 186 | `result-track:f0ce4336175b63dd5e31868709392a4fb60a5b18ebff413c91b52a41f1ba40ad` |
| 22 | `theorem` | [coe_bot](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-bot--23378275298ca6d6bf49658f.md) | 191 | `result-track:23378275298ca6d6bf49658f9b98f26468258046a9ab2343e3f0c7e17aece6e4` |
| 23 | `theorem` | [coe_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-eq-empty--9f8c3fc9ca7f62fbc23c2724.md) | 197 | `result-track:9f8c3fc9ca7f62fbc23c272459682dbdab2e8341fdbf57e139e15ef4203a2cb8` |
| 24 | `theorem` | [coe_top](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-top--a2e8483e1a0de0e2341b944c.md) | 201 | `result-track:a2e8483e1a0de0e2341b944c7b4df68a0b9183a4dfab1d654b6fe461f36d9f5a` |
| 25 | `theorem` | [coe_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-eq-univ--de4cfa06e25070d900e2962c.md) | 207 | `result-track:de4cfa06e25070d900e2962c547e59964ffb49824f82b5840470c49cb6258cb0` |
| 26 | `theorem` | [coe_sSup](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-ssup--42d11934aabf4fac4f8003e7.md) | 211 | `result-track:42d11934aabf4fac4f8003e75a38c3b6439ffc868d13f86c5fdcf3882236ba7a` |
| 27 | `theorem` | [coe_finset_sup](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-finset-sup--c54cc03ceba97574a27f6204.md) | 216 | `result-track:c54cc03ceba97574a27f62047ac635f5a9fbd2dbc2441e8957dcd9521913b03d` |
| 28 | `theorem` | [coe_finset_inf](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-finset-inf--1e79815dd55925162960e18c.md) | 221 | `result-track:1e79815dd55925162960e18ca273a1cea435f3622552e11ac66ebced4fdfe8b7` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--f5ee7f5d8f20e31fc0d007cd.md) | 225 | `declaration-track:f5ee7f5d8f20e31fc0d007cd1f2b803711a7db1baac6f1e5f782726dd4d978a4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--b4306ac28ee7e0c74215bb5f.md) | 228 | `declaration-track:b4306ac28ee7e0c74215bb5f8e6cbe68821ed084451aa0fcac0681c3ff35baf5` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--d7c9c280473a26af3d397fb5.md) | 232 | `declaration-track:d7c9c280473a26af3d397fb5e590df19a6d322b4ee2acaeeaa13380e240a75f9` |
| 32 | `theorem` | [coe_iSup](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-isup--e84cb8024eecb2caf559b3f5.md) | 236 | `result-track:e84cb8024eecb2caf559b3f5832f45e69e4c0e7d53af126deed55bb6b9c8c002` |
| 33 | `theorem` | [iSup_def](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isup-def--775155f00fde67c85daf27a9.md) | 240 | `result-track:775155f00fde67c85daf27a997d697ef4ffb8c78726b438f5b4a76f5fa8f0df1` |
| 34 | `theorem` | [iSup_mk](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isup-mk--83d67efa485f7c2717261606.md) | 245 | `result-track:83d67efa485f7c27172616069abbc25bf2b50ebe74cbc809323f70b006012dc1` |
| 35 | `theorem` | [mem_iSup](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/mem-isup--fa0e6a9b66714ee84a304a91.md) | 251 | `result-track:fa0e6a9b66714ee84a304a91814cc41c3cc0075ac9542ed04bc900c9b344bd13` |
| 36 | `theorem` | [mem_sSup](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/mem-ssup--f857b29c5b628b32e2a97f8a.md) | 257 | `result-track:f857b29c5b628b32e2a97f8a6e0043f1160afa9d1788df08a935bd312ef73391` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--67aa05d00f2a9b816934f3df.md) | 261 | `declaration-track:67aa05d00f2a9b816934f3dfcc96e8d7a1990755df332c50fbbfd5613a6466bb` |
| 38 | `theorem` | [openEmbedding_of_le](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/openembedding-of-le--dbf0ffd87d248dee51876b98.md) | 267 | `result-track:dbf0ffd87d248dee51876b98fb416a40e5f5d8d846bcd56025aa0ed892d02771` |
| 39 | `theorem` | [not_nonempty_iff_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/not-nonempty-iff-eq-bot--ec59c8584172ad304bb274a2.md) | 275 | `result-track:ec59c8584172ad304bb274a25660d447f93bf2770933e52fe0699027cb82f3bf` |
| 40 | `theorem` | [ne_bot_iff_nonempty](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/ne-bot-iff-nonempty--beed9df886a2cc7f44475447.md) | 279 | `result-track:beed9df886a2cc7f44475447d0c5e8857b7981e9b9c5693e831cd7561f238fd1` |
| 41 | `theorem` | [eq_bot_or_top](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/eq-bot-or-top--941b62c8ea776cffa81c46ca.md) | 284 | `result-track:941b62c8ea776cffa81c46cab1d96104f2fc84c789e25eca4ba7408c999da094` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--465016fdb9848ab7b1b7280d.md) | 291 | `declaration-track:465016fdb9848ab7b1b7280d889b15fb3c333a7d5f3719b01f03193c60f9ac1d` |
| 43 | `def` | [IsBasis](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isbasis--e07e9467237c7f54b80ee17a.md) | 295 | `declaration-track:e07e9467237c7f54b80ee17a4c39961d02d9983d95cf08cc2769f0c91aae6a9c` |
| 44 | `theorem` | [isBasis_iff_nbhd](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isbasis-iff-nbhd--b2b28b31c5dbbc4e4c2540e6.md) | 299 | `result-track:b2b28b31c5dbbc4e4c2540e695eaa3e050a35a96b8b3f81ff4c662e1fb9506ca` |
| 45 | `theorem` | [isBasis_iff_cover](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isbasis-iff-cover--94cf42b72a30ca1a86dc710f.md) | 317 | `result-track:94cf42b72a30ca1a86dc710f615c510324584d9bdbdf8f157fc8e899262c3778` |
| 46 | `theorem` | [IsBasis.isCompact_open_iff_eq_finite_iUnion](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isbasis-iscompact-open-iff-eq-finite-iunion--19923540dbe8eac8bb558b6f.md) | 335 | `result-track:19923540dbe8eac8bb558b6ff47ddc0ad00ac450e48796ec31faa7bbf3a152d6` |
| 47 | `theorem` | [isCompactElement_iff](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/iscompactelement-iff--bc38df071438506bd2d8d625.md) | 346 | `result-track:bc38df071438506bd2d8d625018ad6946817e64a575b9626f1453b5abfe634e6` |
| 48 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/comap--b89db836bb56e53297f02fb0.md) | 364 | `declaration-track:b89db836bb56e53297f02fb0a215a3e1892e0ef8adae67fdf8429d3908ee810b` |
| 49 | `theorem` | [comap_id](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/comap-id--887981ab75ffc58f73f8d0de.md) | 372 | `result-track:887981ab75ffc58f73f8d0de2fc3f795221b4368702a4e0cca8db3b7d321d7c4` |
| 50 | `theorem` | [comap_mono](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/comap-mono--9af228ca19edb36f4a807bd9.md) | 376 | `result-track:9af228ca19edb36f4a807bd9ce1e41d65f89b32f1300ddae346eddc4e4f279ea` |
| 51 | `theorem` | [coe_comap](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/coe-comap--af0cb2ce4aa350019971def3.md) | 381 | `result-track:af0cb2ce4aa350019971def30b42e78044f2d1e1ea7c94bbe153c042c6aa8868` |
| 52 | `theorem` | [comap_comp](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/comap-comp--40e201e80ea3846a5afff873.md) | 385 | `result-track:40e201e80ea3846a5afff873e59138980ad08d0111b9fe955c3eee189f7d3b90` |
| 53 | `theorem` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/comap-comap--781d7cfbcd010823141bfb42.md) | 390 | `result-track:781d7cfbcd010823141bfb42b73bd3f8814ae9eb9fa2038f88407afc3c923a03` |
| 54 | `theorem` | [comap_injective](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/comap-injective--27080d2e0c2cbab6c89fe51b.md) | 395 | `result-track:27080d2e0c2cbab6c89fe51bf465f784e29d5a2ba35b215f9a96102bcb62114f` |
| 55 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.Opens.Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.Homeomorph.opensCongr](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/root-grwtsk-topology-generaltopology-opens-variant38e6e1bcf53305c674748f--fb97f002ba657fb75a28418b.md) | 406 | `declaration-track:fb97f002ba657fb75a28418b177622a446ccad2ed88580d11c0c4b96175b36ec` |
| 56 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Opens.Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.Homeomorph.opensCongr_symm](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/root-grwtsk-topology-generaltopology-opens-variant38e6e1bcf53305c674748f--e28c111819205ed415f7bd3a.md) | 416 | `result-track:e28c111819205ed415f7bd3aad9c3c419473d86f70a7c70700740d234a299408` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--50e3702ec72c6fa74ce579a4.md) | 420 | `declaration-track:50e3702ec72c6fa74ce579a468af797f6eba1e73234f24a0c703f1e20b9b1921` |
| 58 | `structure` | [OpenNhdsOf](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/opennhdsof--f563a806d60510acc3c07632.md) | 426 | `declaration-track:f563a806d60510acc3c0763223d6a7558e9ae075ffff986fac96300958720d3c` |
| 59 | `theorem` | [toOpens_injective](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/toopens-injective--f15cf8b2b2b331200028ddec.md) | 435 | `result-track:f15cf8b2b2b331200028ddec43da6d0c401dd5b71c7b242df41d3aa7a967815d` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--2d6a17128e086719fa5dc4de.md) | 439 | `declaration-track:2d6a17128e086719fa5dc4deddb0758a351f5e69d1e4831e59849b29529d08f2` |
| 61 | `instance` | [canLiftSet](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/canliftset--60e60f736c051a9fec3dfc34.md) | 443 | `declaration-track:60e60f736c051a9fec3dfc34e977bd4f06b245b75654fd1f7184a4986aa3b125` |
| 62 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/mem--d967d0e820c9a732eacf9931.md) | 447 | `result-track:d967d0e820c9a732eacf99312a95d627f5667ea83c1f9945f458a7a72b406e7e` |
| 63 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/isopen--14879998d43ab83f891b0a55.md) | 451 | `result-track:14879998d43ab83f891b0a55460e4265f49da3f0278fb30f196e6f9ac45bbf3e` |
| 64 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--f28097c2f28f7c4ade9589aa.md) | 455 | `declaration-track:f28097c2f28f7c4ade9589aab75ba273af9cf357515f8af3aa7e5914ebf647c8` |
| 65 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--ff7683330784b332b0ea6026.md) | 459 | `declaration-track:ff7683330784b332b0ea6026247c7f22b67af440dc0c282ebba3638ff13c510d` |
| 66 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--cf99287601451b476b797905.md) | 460 | `declaration-track:cf99287601451b476b7979057e4874310b8cc79349a10ff3deb02bfcdf214ded` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--2b3d018ca65d8b3653f200b0.md) | 461 | `declaration-track:2b3d018ca65d8b3653f200b05eeae255ed5b919307227e0364298251f0fb345f` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--37f283b3a7642eee014e19b9.md) | 464 | `declaration-track:37f283b3a7642eee014e19b9e1ff9d3c1fd99b3f6586d889fd164073e53936ff` |
| 69 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/instance--15b24bed3d14da7fa4362443.md) | 467 | `declaration-track:15b24bed3d14da7fa4362443c3bc6760dcf811d88cd508765c82287b16ea7713` |
| 70 | `theorem` | [basis_nhds](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/basis-nhds--76d72dcb43262df05febd377.md) | 470 | `result-track:76d72dcb43262df05febd3776de94d5a892ce7d0483d8ea3992ddd0d49720f9e` |
| 71 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/declarations/comap--247f66863e2d6b455f6261c7.md) | 476 | `declaration-track:247f66863e2d6b455f6261c775cf46f1fbee6bcabf1162483180af97548cb835` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
