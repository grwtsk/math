# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GrowsPolynomially.Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ToIntervalMod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GrowsPolynomially](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially--defcc9f7b07c9a2410877b29.md) | 37 | `declaration-track:defcc9f7b07c9a2410877b29abce878117d83b26ea630baad0d89158336c3e47` |
| 2 | `lemma` | [congr_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/congr-of-eventuallyeq--e2da07e14dec2248783c6d54.md) | 43 | `result-track:e2da07e14dec2248783c6d5416c5df48675906fb98ff06830640d49d75069557` |
| 3 | `lemma` | [iff_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/iff-eventuallyeq--a115962c9532ae098b9c4d47.md) | 55 | `result-track:a115962c9532ae098b9c4d47945304a68c70eb406a0d679d4e05b8f18c3e62f4` |
| 4 | `lemma` | [eventually_atTop_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/eventually-attop-le--637b6f6e0ea30eb9ff657eac.md) | 61 | `result-track:637b6f6e0ea30eb9ff657eac445ade4ec74461b9bfe463c820d64b46930225c5` |
| 5 | `lemma` | [eventually_atTop_le_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/eventually-attop-le-nat--0c5b3f0a7f33b4815857a0c6.md) | 68 | `result-track:0c5b3f0a7f33b4815857a0c65dfcd1806017b241c6cc5dcedb0512e7cdb92adb` |
| 6 | `lemma` | [eventually_atTop_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/eventually-attop-ge--49188d9650a65b29d2ab3708.md) | 73 | `result-track:49188d9650a65b29d2ab3708f7e6b273411f2471da13ef40c750b85bcb959235` |
| 7 | `lemma` | [eventually_atTop_ge_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/eventually-attop-ge-nat--6156573604cfb1d363c023dc.md) | 80 | `result-track:6156573604cfb1d363c023dc38dc312fd3cf2f1e9d3ae0b414844ed477303b62` |
| 8 | `lemma` | [eventually_zero_of_frequently_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/eventually-zero-of-frequently-zero--8753add8e7be47488117f9b5.md) | 85 | `result-track:8753add8e7be47488117f9b51596b332f377e385dc378e4e43956fed5280da17` |
| 9 | `lemma` | [eventually_atTop_nonneg_or_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/eventually-attop-nonneg-or-nonpos--8e66c6e36883adca83db4582.md) | 153 | `result-track:8e66c6e36883adca83db4582fbb2f4cb2e5b00c4f4905fe9a79d9284b11d1c8d` |
| 10 | `lemma` | [eventually_atTop_zero_or_pos_or_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/eventually-attop-zero-or-pos-or-neg--beabd54c554411dc99577176.md) | 235 | `result-track:beabd54c554411dc99577176f9317617ffc01f59a82a64caddb181a6ef936868` |
| 11 | `lemma` | [neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/neg--06ed02d27ced2ee56a7b23b7.md) | 254 | `result-track:06ed02d27ced2ee56a7b23b7118dc3eb67962b9faae2372d4a440bb6bad66951` |
| 12 | `lemma` | [neg_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/neg-iff--6b5fcb0fd331755913d2eb04.md) | 263 | `result-track:6b5fcb0fd331755913d2eb04d5970094271961117c52cad313187dc1efd1fb95` |
| 13 | `lemma` | [abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/abs--a9d327ff3116ae089a195b2a.md) | 266 | `result-track:a9d327ff3116ae089a195b2a40f1c02176b1fdd6f5e8be72e719c03d47dc8fd1` |
| 14 | `lemma` | [norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/norm--4b1fc2b76052bf84a2bfe988.md) | 282 | `result-track:4b1fc2b76052bf84a2bfe98815b348d99deca830a2d9dbe1c6085c3f7f2d89b3` |
| 15 | `lemma` | [growsPolynomially_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-const--bd2f1c5ed2675cfa29777677.md) | 290 | `result-track:bd2f1c5ed2675cfa29777677ed4044c1cd6e9f51e3e9d7cbf451227797bb3180` |
| 16 | `lemma` | [growsPolynomially_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-id--6afe78f0fb2c15ccc80a1567.md) | 295 | `result-track:6afe78f0fb2c15ccc80a15678ebe2be12f56155cd7b430d9449be1cd42c8bba1` |
| 17 | `lemma` | [GrowsPolynomially.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-mul--d4b3b578daf9e4e301736273.md) | 303 | `result-track:d4b3b578daf9e4e301736273d1b049dba5c95f16431d9fce3373dbaebc9d7652` |
| 18 | `lemma` | [GrowsPolynomially.const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-const-mul--2895e2e716000e23c055bc62.md) | 357 | `result-track:2895e2e716000e23c055bc62d3d40aacb1b1f080175eeaebe16403ee843ad54f` |
| 19 | `lemma` | [GrowsPolynomially.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-add--96a011576aad74a1477c2e20.md) | 361 | `result-track:96a011576aad74a1477c2e20b24e3ddbf7febb2928c9a692df4b908c6c3033b1` |
| 20 | `lemma` | [GrowsPolynomially.add_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-add-islittleo--285962887457c8b7444465c4.md) | 401 | `result-track:285962887457c8b7444465c463339f51dbefe76ac8e508d71b07e9e52daa2241` |
| 21 | `lemma` | [GrowsPolynomially.inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-inv--652d0ec3f4c8940eb19828bc.md) | 507 | `result-track:652d0ec3f4c8940eb19828bc2372a383d369fb7725fe68e6a848c36519f432e1` |
| 22 | `lemma` | [GrowsPolynomially.div](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-div--b064317862e7efa80369f443.md) | 556 | `result-track:b064317862e7efa80369f4437381bed0da9a0bcf5167796243c009a283207fec` |
| 23 | `lemma` | [GrowsPolynomially.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-rpow--00346a674f16b9d1c7164da4.md) | 562 | `result-track:00346a674f16b9d1c7164da4d2eeb67a597896d4d7aec414c0abc014a40afa66` |
| 24 | `lemma` | [GrowsPolynomially.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-pow--ba117701ded6dbc8fbcee2f4.md) | 615 | `result-track:ba117701ded6dbc8fbcee2f4c83bf679209f862cffed5a43fa9d7c7f0fcc4885` |
| 25 | `lemma` | [GrowsPolynomially.zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-zpow--93b4e9d2e3c844be83ed0150.md) | 620 | `result-track:93b4e9d2e3c844be83ed015002f55b99e08b2a4779f3e34a296ad60384fc5c7d` |
| 26 | `lemma` | [growsPolynomially_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-rpow--54da352a92b67770ca6098f5.md) | 625 | `result-track:54da352a92b67770ca6098f508009d665e897f0c2bf9acaf685fbedeceeade67` |
| 27 | `lemma` | [growsPolynomially_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-pow--b1db932375d8acae95bdcfe9.md) | 628 | `result-track:b1db932375d8acae95bdcfe957c330afeb87af24f3809894537e1f549ea3cdcd` |
| 28 | `lemma` | [growsPolynomially_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-zpow--8216302b4ed49a30ca2ddaba.md) | 631 | `result-track:8216302b4ed49a30ca2ddabafa00516108b5ee43b5722b4364b074edf77c306e` |
| 29 | `lemma` | [growsPolynomially_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-log--f72fe288a60351fa3a93eca8.md) | 634 | `result-track:f72fe288a60351fa3a93eca8c463e46a344904a110d95861a4a08126068b9bad` |
| 30 | `lemma` | [GrowsPolynomially.of_isTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-of-istheta--9ecd36fb3d7933a81b18f6f1.md) | 663 | `result-track:9ecd36fb3d7933a81b18f6f1c30fa7f6ec14a9d37c64c0c9b48baf96795e30fd` |
| 31 | `lemma` | [GrowsPolynomially.of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-of-isequivalent--ce7e7b5d22d231cd1bfc6dd1.md) | 711 | `result-track:ce7e7b5d22d231cd1bfc6dd1b29908b7817fda03888886148086ad3a3ac33666` |
| 32 | `lemma` | [GrowsPolynomially.of_isEquivalent_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/declarations/growspolynomially-of-isequivalent-const--49c885fc390c0114bcfcade2.md) | 717 | `result-track:49c885fc390c0114bcfcade2bec98b50d2817f9eb4b6e1bc8f99f392ce7d2738` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
