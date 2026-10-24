# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Splits.Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e64863c5c39ca3d5c37784ea25b8903eddde656",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e64863c5c39ca3d5c37784ea25b8903eddde656`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Prime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Lifts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits--1bdcd08fcd08abb3a656315e.md) | 54 | `declaration-track:1bdcd08fcd08abb3a656315e3837a3b244952a5c5bd33b91bca02cde20025418` |
| 2 | `theorem` | [splits_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-zero--159d6a75c8a507fe56381878.md) | 59 | `result-track:159d6a75c8a507fe56381878e993101b917f9607370d0347dbf8c050ead945c4` |
| 3 | `theorem` | [splits_of_map_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-map-eq-c--21d0d69447cd45e6c66ddc06.md) | 63 | `result-track:21d0d69447cd45e6c66ddc0695ae88906021f47db2711961a46fd0ef3471f0bb` |
| 4 | `theorem` | [splits_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-c--852510afd02f8d1cfa331ef4.md) | 78 | `result-track:852510afd02f8d1cfa331ef41f07133bee1356297dd6b0382fbd44f7ee1f690e` |
| 5 | `theorem` | [splits_of_map_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-map-degree-eq-one--9f3db3259e3955be67352d28.md) | 83 | `result-track:9f3db3259e3955be67352d284f7ae21cd30bcec2fb00f9a2a92e6d2bec66fb45` |
| 6 | `theorem` | [splits_of_degree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-degree-le-one--3e64c8c0c95457e7e34c255f.md) | 91 | `result-track:3e64c8c0c95457e7e34c255f5cf533ad4a8ca5d83e4abc7f4c1d1bfe4903bcbc` |
| 7 | `theorem` | [splits_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-degree-eq-one--2f4f6f0be4a220a4bb7eb0a7.md) | 99 | `result-track:2f4f6f0be4a220a4bb7eb0a7e577607f33ee43a81f0eacb7b13c15199e04c892` |
| 8 | `theorem` | [splits_of_natDegree_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-natdegree-le-one--5fa0424497b837e59254d9eb.md) | 103 | `result-track:5fa0424497b837e59254d9ebc06b188dc518c29aea6f1de4e7e5b4b6a831eee6` |
| 9 | `theorem` | [splits_of_natDegree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-natdegree-eq-one--6e2f4ce6f2a914cd2f454343.md) | 107 | `result-track:6e2f4ce6f2a914cd2f454343ed8da1abf843f1fa500e6bb67d6b9e785650b84c` |
| 10 | `theorem` | [splits_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-mul--778ebc89e798b4c10c4c1560.md) | 111 | `result-track:778ebc89e798b4c10c4c15607cc992450b9d13c7fc0fccacf374857e8b665ed7` |
| 11 | `theorem` | [splits_of_splits_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-splits-mul--8535ed40c4090a8d183b3a6e.md) | 121 | `result-track:8535ed40c4090a8d183b3a6e17093404978af29b6436149a7b8e5d074ad40cec` |
| 12 | `theorem` | [splits_map_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-map-iff--a593e16d86095b07c13cd80d.md) | 129 | `result-track:a593e16d86095b07c13cd80d1bdfd32d03e7ebfb40b430c94887bfcfff810eec` |
| 13 | `theorem` | [splits_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-one--7c69cf989d779b088e23f7c3.md) | 133 | `result-track:7c69cf989d779b088e23f7c362a0fd47de65fb496f2c90ddb2161d5acd861db4` |
| 14 | `theorem` | [splits_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-isunit--cafe6b030faf7e742bdcc902.md) | 137 | `result-track:cafe6b030faf7e742bdcc902636c7723ab06ef9bfcd701f5e21738aaad1c87af` |
| 15 | `theorem` | [splits_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-x-sub-c--b9ee32fcfa7cbcbf3a632712.md) | 141 | `result-track:b9ee32fcfa7cbcbf3a63271215a52dfb3965a0e656c5bd9b3be05461ee632e02` |
| 16 | `theorem` | [splits_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-x--eff4f482714a785e3f19a128.md) | 146 | `result-track:eff4f482714a785e3f19a12889b31874b629d643e6037bb0dfce45786878551b` |
| 17 | `theorem` | [splits_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-prod--2f1a8d55c032be77c034a719.md) | 151 | `result-track:2f1a8d55c032be77c034a7199f81d84d4e90d53353bc63155ea7e0079548a626` |
| 18 | `theorem` | [splits_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-pow--ad559530456c8197c4080ba1.md) | 158 | `result-track:ad559530456c8197c4080ba1ffcb01e4b21e078ff578ac1b5a8ba4a115591d6e` |
| 19 | `theorem` | [splits_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-x-pow--46f8045cdc827cc9bd6d7b5f.md) | 163 | `result-track:46f8045cdc827cc9bd6d7b5fde41c4c153e9799b2ed5c23da8431cc354de9eea` |
| 20 | `theorem` | [splits_id_iff_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-id-iff-splits--73dac8cc65d7bbf0088a5f39.md) | 168 | `result-track:73dac8cc65d7bbf0088a5f39b37e8fd2e5dba1d8d940307fd9ad58d775139d81` |
| 21 | `theorem` | [exists_root_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/exists-root-of-splits--58f8aad0c5238699f8d320a7.md) | 172 | `result-track:58f8aad0c5238699f8d320a7a4b899f024d3bfa2bda410db6289ec0dca4b0bb0` |
| 22 | `theorem` | [roots_ne_zero_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/roots-ne-zero-of-splits--e3d12131ff6ec3390f9a1674.md) | 184 | `result-track:e3d12131ff6ec3390f9a167436b50f753b6637cc503f72a67921a4743b8a5d40` |
| 23 | `def` | [rootOfSplits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/rootofsplits--9b5cda368e53565e10d76e89.md) | 195 | `declaration-track:9b5cda368e53565e10d76e89d2b1a3adbff497b62d712eb54e293eb2ab9d345c` |
| 24 | `theorem` | [map_rootOfSplits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/map-rootofsplits--81c8ae074aac97cc24982d0e.md) | 199 | `result-track:81c8ae074aac97cc24982d0eaa5608c20ae3dbbcfba1ad0d18a68a749c877642` |
| 25 | `theorem` | [natDegree_eq_card_roots'](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/natdegree-eq-card-roots--34156bacd77ab488535fba78.md) | 204 | `result-track:34156bacd77ab488535fba78b30ba77cd7d91e47e025e855540727866e536581` |
| 26 | `theorem` | [degree_eq_card_roots'](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/degree-eq-card-roots--15803d05774913ae95fffcd7.md) | 222 | `result-track:15803d05774913ae95fffcd74d96596614ad4d1cad39ee8b1a3e0f1b384f03cc` |
| 27 | `theorem` | [splits_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-iff--496028380a60b985754c626e.md) | 234 | `result-track:496028380a60b985754c626ebb11afb2a731490e0d0e99baeebae0255211da9c` |
| 28 | `theorem` | [Splits.def](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-def--b3fde87a8f9aaa2a1b62c1a5.md) | 240 | `result-track:b3fde87a8f9aaa2a1b62c1a54ecfdd077d9fbbfc63a29357dc5cc9bd599048f4` |
| 29 | `theorem` | [splits_of_splits_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-splits-mul--90aef90382ea9481d8f2267f.md) | 245 | `result-track:90aef90382ea9481d8f2267fe8133bd25ed271a59a0c6029d8b984250f2e4d6b` |
| 30 | `theorem` | [splits_of_splits_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-splits-of-dvd--fe982f58f609a2e17a55bf44.md) | 250 | `result-track:fe982f58f609a2e17a55bf447b1ab9cabcdbfd7c6dc21fef19505b28840f8df9` |
| 31 | `theorem` | [splits_of_splits_gcd_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-splits-gcd-left--46e84237cd0c8e33f59eeb95.md) | 256 | `result-track:46e84237cd0c8e33f59eeb954162065b0bf23d25a8357518f499e5efd421dd94` |
| 32 | `theorem` | [splits_of_splits_gcd_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-splits-gcd-right--9b227250e3b6799e8399abcb.md) | 261 | `result-track:9b227250e3b6799e8399abcbcdbc12f78e63e8262584bdc628d9822f7f4fecac` |
| 33 | `theorem` | [splits_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-mul-iff--e3e9bde0c31e470acc761ee4.md) | 266 | `result-track:e3e9bde0c31e470acc761ee4cd22931808d3d08bd7ff6fb8937fe3082f2df7e1` |
| 34 | `theorem` | [splits_prod_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-prod-iff--a903b871af42ce1474b01958.md) | 271 | `result-track:a903b871af42ce1474b01958a97e2f52cd6b1e53699f59bb1c1f79fe88613558` |
| 35 | `theorem` | [degree_eq_one_of_irreducible_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/degree-eq-one-of-irreducible-of-splits--dfe7ee42293a9f9c2b5b9809.md) | 281 | `result-track:dfe7ee42293a9f9c2b5b98091aeff820b8ffebf3907adb201df679b9cceae432` |
| 36 | `theorem` | [exists_root_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/exists-root-of-splits--ed1cb8a5894805e9a13d0286.md) | 290 | `result-track:ed1cb8a5894805e9a13d02864a82bb1e0da09528878112c51329ec8056c20615` |
| 37 | `theorem` | [roots_ne_zero_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/roots-ne-zero-of-splits--e95e2cac8dc015601b05e74a.md) | 295 | `result-track:e95e2cac8dc015601b05e74a9a23b69154125ead1e4ee9814c035e21ea826ccd` |
| 38 | `def` | [rootOfSplits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/rootofsplits--d051c1e23f4d9d321303cae9.md) | 302 | `declaration-track:d051c1e23f4d9d321303cae96da501da8c6c7e2fbf427fee65e23099ece0c13a` |
| 39 | `theorem` | [rootOfSplits'_eq_rootOfSplits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/rootofsplits-eq-rootofsplits--43e97b9459c0d40ae19158ab.md) | 307 | `result-track:43e97b9459c0d40ae19158ab6d8d2f156b11b764150dd37ade94183d158dac04` |
| 40 | `theorem` | [map_rootOfSplits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/map-rootofsplits--9e43cb6976950f1480d9ec94.md) | 312 | `result-track:9e43cb6976950f1480d9ec9438edacc9ca4c97edabb06de6d5e9c2162180d66b` |
| 41 | `theorem` | [natDegree_eq_card_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/natdegree-eq-card-roots--8607f04ad17068fb8ec291f6.md) | 317 | `result-track:8607f04ad17068fb8ec291f65a247b95d55955efe6b551fe93596a3247a056d3` |
| 42 | `theorem` | [degree_eq_card_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/degree-eq-card-roots--af4ebef890b1f13c2175ef2c.md) | 322 | `result-track:af4ebef890b1f13c2175ef2cd29c9032885ca6982296ffe647b2c6f84fd33a1f` |
| 43 | `theorem` | [roots_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/roots-map--d43d9872c008d9ffa29e64a7.md) | 327 | `result-track:d43d9872c008d9ffa29e64a732ee97e7db6ada25ef34baf1410a74ee5ef7cc49` |
| 44 | `theorem` | [image_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/image-rootset--b56461e88e13ac02416d9cc1.md) | 333 | `result-track:b56461e88e13ac02416d9cc19ea8ceeb5bf489daebc1df0b7960d14d77effcb2` |
| 45 | `theorem` | [adjoin_rootSet_eq_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/adjoin-rootset-eq-range--e3db3e31224677156246f487.md) | 341 | `result-track:e3db3e31224677156246f487a1104017c1a8acd86b9abbe015d38c8a4a8fb892` |
| 46 | `theorem` | [eq_prod_roots_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/eq-prod-roots-of-splits--2eea9c51f8ab3a35ce9910eb.md) | 348 | `result-track:2eea9c51f8ab3a35ce9910eba3a97f03caf556dc1cebe364db52d616e9b5d68c` |
| 47 | `theorem` | [eq_prod_roots_of_splits_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/eq-prod-roots-of-splits-id--40344b7064aebb27c0ea01ae.md) | 355 | `result-track:40344b7064aebb27c0ea01ae64f8c5c19fb3eff0f724258e6d691cbb679b6a6e` |
| 48 | `theorem` | [eq_prod_roots_of_monic_of_splits_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/eq-prod-roots-of-monic-of-splits-id--17213175f9913bbe066facc8.md) | 360 | `result-track:17213175f9913bbe066facc856f67bd3bd5bec95c099e04dc919fa9ab39797af` |
| 49 | `theorem` | [eq_X_sub_C_of_splits_of_single_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/eq-x-sub-c-of-splits-of-single-root--25f70f69fff60d87de858142.md) | 366 | `result-track:25f70f69fff60d87de858142153e9dc60b01bf3ce4abb89a548c762ca5f51a88` |
| 50 | `theorem` | [mem_lift_of_splits_of_roots_mem_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/mem-lift-of-splits-of-roots-mem-range--27c41b635c2c8f2872053b16.md) | 374 | `result-track:27c41b635c2c8f2872053b1644f9942bc8fe6ad726d5f40fef988f38a0c571f6` |
| 51 | `theorem` | [splits_of_exists_multiset](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-exists-multiset--b0dfede88a5f4cc9efbd5895.md) | 391 | `result-track:b0dfede88a5f4cc9efbd58957a463423d5733f8e64937fa23635ec9454f8596a` |
| 52 | `theorem` | [splits_of_splits_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-of-splits-id--b5db66e506b71d32200b748d.md) | 407 | `result-track:b5db66e506b71d32200b748dcc1d150a64bb0e7e641e5050d1884cc3909252a0` |
| 53 | `theorem` | [splits_iff_exists_multiset](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-iff-exists-multiset--8961d05eddc145bd4535cee8.md) | 420 | `result-track:8961d05eddc145bd4535cee8a114d1c3d29d9fba4a991458c9c94e7526d30a73` |
| 54 | `theorem` | [splits_comp_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-comp-of-splits--13ed2a1dca6153dd8f363982.md) | 427 | `result-track:13ed2a1dca6153dd8f36398272a004aec20e397070fd15a90b8eccd0e5301ea1` |
| 55 | `theorem` | [splits_iff_card_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/splits-iff-card-roots--4fff8463d25302381b5bb36c.md) | 436 | `result-track:4fff8463d25302381b5bb36c615296c7a68c6e9b56825a6796dc95c5500454da` |
| 56 | `theorem` | [aeval_root_derivative_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/aeval-root-derivative-of-splits--90de39ab46728708fb517ee2.md) | 448 | `result-track:90de39ab46728708fb517ee27f23d254f55d6c346db6101f75c300cc6881b985` |
| 57 | `theorem` | [prod_roots_eq_coeff_zero_of_monic_of_split](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/prod-roots-eq-coeff-zero-of-monic-of-split--0e7b21397fe16d4ff66850be.md) | 460 | `result-track:0e7b21397fe16d4ff66850be5ef06e4b55add0b2f219c5b20103b1788453c524` |
| 58 | `theorem` | [sum_roots_eq_nextCoeff_of_monic_of_split](../../../../../mathematics/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/declarations/sum-roots-eq-nextcoeff-of-monic-of-split--52750520482a3e8a119882da.md) | 474 | `result-track:52750520482a3e8a119882da743d14960da93a3ee60dcdc16e7dc2f37a43d767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
