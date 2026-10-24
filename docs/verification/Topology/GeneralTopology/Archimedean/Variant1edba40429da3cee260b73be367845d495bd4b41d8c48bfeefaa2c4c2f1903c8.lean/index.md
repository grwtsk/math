# Verification target: GRWTSK.Topology.GeneralTopology.Archimedean.Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bce43f28cc1b383a8996b53539d51b5168afc779",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bce43f28cc1b383a8996b53539d51b5168afc779`.

Source path: `GRWTSK/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/nat-comap-cast-attop--9a34c02f58f3241e35ff779a.md) | 35 | `result-track:9a34c02f58f3241e35ff779a6757bb583b8edca116b1825b6fdde5be43f814a7` |
| 2 | `theorem` | [tendsto_nat_cast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-nat-cast-attop-iff--208dbfc986e1951c37514220.md) | 40 | `result-track:208dbfc986e1951c3751422040a02c8af24f0696ef110bd86d1e4a701342eff8` |
| 3 | `theorem` | [tendsto_nat_cast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-nat-cast-attop-attop--6ceb38f5716c78794cf7c385.md) | 45 | `result-track:6ceb38f5716c78794cf7c385224713f6fb6a3e09bf41afae46e49af3649d65e5` |
| 4 | `theorem` | [Filter.Eventually.nat_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/filter-eventually-nat-cast-attop--58530cc176cc540102e7ce0c.md) | 50 | `result-track:58530cc176cc540102e7ce0ceabbcba4086e7846cb121f6996ace8f17af7557b` |
| 5 | `theorem` | [Int.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/int-comap-cast-attop--c1cc63b414c628661f60a526.md) | 54 | `result-track:c1cc63b414c628661f60a5261a638dc6c26ff1fcc00382b52425c0cfd3195fca` |
| 6 | `theorem` | [Int.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/int-comap-cast-atbot--ab4a2d024497972880cabfd4.md) | 61 | `result-track:ab4a2d024497972880cabfd4d4edcf454d09dd56ed9d7c533397b725de7c0f15` |
| 7 | `theorem` | [tendsto_int_cast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-int-cast-attop-iff--8d75b29d19327db88b0912de.md) | 68 | `result-track:8d75b29d19327db88b0912deab762e7c006e38ecacc45e912cf19f257e3efd62` |
| 8 | `theorem` | [tendsto_int_cast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-int-cast-atbot-iff--2005acd266a6455834d4cd97.md) | 73 | `result-track:2005acd266a6455834d4cd9773edd7b3c27468aeca9e7183982e05c646753f77` |
| 9 | `theorem` | [tendsto_int_cast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-int-cast-attop-attop--aa8ec593d13f290d104683b1.md) | 78 | `result-track:aa8ec593d13f290d104683b14bb242ee846039d7efed9158f386fe48fb9daf1a` |
| 10 | `theorem` | [Filter.Eventually.int_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/filter-eventually-int-cast-attop--6ae5f3ee86cb6eb1e3d8b7ce.md) | 83 | `result-track:6ae5f3ee86cb6eb1e3d8b7ce1b85533d2b3ecb6ab4215888ee2b16c8a4ed836f` |
| 11 | `theorem` | [Filter.Eventually.int_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/filter-eventually-int-cast-atbot--1fac7118a59577298b38457b.md) | 87 | `result-track:1fac7118a59577298b38457b80a3f10449e591390a88f77eb60aff95db71d6a5` |
| 12 | `theorem` | [Rat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/rat-comap-cast-attop--c8011c227f4d11d1d74ccb06.md) | 92 | `result-track:c8011c227f4d11d1d74ccb06f89b395695f71d6be721b11618c627b3b92b63f9` |
| 13 | `theorem` | [Rat.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/rat-comap-cast-atbot--a55c3d1badb63a77cf0922c9.md) | 98 | `result-track:a55c3d1badb63a77cf0922c9b0d3ad395ecbfb14e0bde0958962903019e1ca39` |
| 14 | `theorem` | [tendsto_rat_cast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-rat-cast-attop-iff--953076c4c7b663d4d920edb5.md) | 105 | `result-track:953076c4c7b663d4d920edb51d0f6bde88223da53499faaea081204fbf5f5aed` |
| 15 | `theorem` | [tendsto_rat_cast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-rat-cast-atbot-iff--8981d432d9e3ff9e2e4b17ab.md) | 110 | `result-track:8981d432d9e3ff9e2e4b17ab92f9aa436b8f74e2a7efe0112712dfc66a39fefa` |
| 16 | `theorem` | [Filter.Eventually.rat_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/filter-eventually-rat-cast-attop--64242a78b555fe4452ca8f93.md) | 115 | `result-track:64242a78b555fe4452ca8f93c52e73af553dd323caf92717bb165a8979ed3d6b` |
| 17 | `theorem` | [Filter.Eventually.rat_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/filter-eventually-rat-cast-atbot--01c070f26d6b6535cc622b2e.md) | 119 | `result-track:01c070f26d6b6535cc622b2ef4d00a026ac6a19b82437cea488c80e1716c5ece` |
| 18 | `theorem` | [atTop_hasAntitoneBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/attop-hasantitonebasis-of-archimedean--64f143ac0a8f8639ad77c251.md) | 124 | `result-track:64f143ac0a8f8639ad77c2514c062fabbe972d170112b398b105afd28eb4a024` |
| 19 | `theorem` | [atTop_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/attop-hascountablebasis-of-archimedean--b92edf1637f160995997f947.md) | 134 | `result-track:b92edf1637f160995997f947c1793237e66d2ea12bf8f9495bfd7d41ab23de65` |
| 20 | `theorem` | [atBot_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/atbot-hascountablebasis-of-archimedean--ecc4fa699c0323e41004b946.md) | 140 | `result-track:ecc4fa699c0323e41004b94699c12b98b59ef6d369e3688f7170e96f6713d818` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/instance--662c3ac72700e0370d8ee2cc.md) | 149 | `declaration-track:662c3ac72700e0370d8ee2cc78fe77fa40044298646b5be3b5559dd4fe96acab` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/instance--33789bd171ca9704101d58b5.md) | 154 | `declaration-track:33789bd171ca9704101d58b571cbc94eca2c6bfcffd325b405a72fad8f2a431b` |
| 23 | `theorem` | [Tendsto.const_mul_atTop'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-const-mul-attop--e742d6c08529d6985b1fee6a.md) | 171 | `result-track:e742d6c08529d6985b1fee6a92184c63ace8446ec7e6b1cf6277a83412863c5f` |
| 24 | `theorem` | [Tendsto.atTop_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-attop-mul-const--ac4d10677a07fd282496fa98.md) | 190 | `result-track:ac4d10677a07fd282496fa985379778cd848e3d9339c2e38da5f1b4c4226b982` |
| 25 | `theorem` | [Tendsto.atTop_mul_neg_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-attop-mul-neg-const--735c8b9ea3373557b4b98e72.md) | 213 | `result-track:735c8b9ea3373557b4b98e72f67e267ee52d483c839c9c62a0f7f9b6974f2ca6` |
| 26 | `theorem` | [Tendsto.atBot_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-atbot-mul-const--37ee095a6a815de316cf058e.md) | 220 | `result-track:37ee095a6a815de316cf058e0d80217820e509888b006c74a2eea9bb168e927d` |
| 27 | `theorem` | [Tendsto.atBot_mul_neg_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-atbot-mul-neg-const--d1ff6360094b129a380d78e3.md) | 228 | `result-track:d1ff6360094b129a380d78e36d7bf1993aaddbbb34ccf2e0ca6c7ca097407a0f` |
| 28 | `theorem` | [Tendsto.atTop_nsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-attop-nsmul-const--b997f2d8ef5831da18a31e4d.md) | 239 | `result-track:b997f2d8ef5831da18a31e4d457b5b828e3e8863b601152311688116c3e1322e` |
| 29 | `theorem` | [Tendsto.atTop_nsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-attop-nsmul-neg-const--cc38c166b9b7c8f52ec6794c.md) | 252 | `result-track:cc38c166b9b7c8f52ec6794cf02ae3fab0e5957965a9f5c291d781191d64b493` |
| 30 | `theorem` | [Tendsto.atTop_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-attop-zsmul-const--e788d1e1b006fe580051277c.md) | 256 | `result-track:e788d1e1b006fe580051277cbee08fdc1df759642e9d8bf2304690057f202512` |
| 31 | `theorem` | [Tendsto.atTop_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-attop-zsmul-neg-const--615fb20a18c0bd769aa28b01.md) | 264 | `result-track:615fb20a18c0bd769aa28b01e7d626a30cc4361fad39eb225442a7c283760c0d` |
| 32 | `theorem` | [Tendsto.atBot_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-atbot-zsmul-const--1a27787f7afa12d265ebecec.md) | 268 | `result-track:1a27787f7afa12d265ebecec422230669e4d6eeccb96f865fdc1e4cdbf6ec1b4` |
| 33 | `theorem` | [Tendsto.atBot_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/declarations/tendsto-atbot-zsmul-neg-const--0ac47c215f2f31dcfd1b96ba.md) | 274 | `result-track:0ac47c215f2f31dcfd1b96ba546b362ebbf641266441d89e3f285d74624759a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
