# Verification target: GRWTSK.Algebra.Filtration.Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ae4648b974955c12ffea693cd3e46f602c47bf8",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/index.md) · [Full source](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ae4648b974955c12ffea693cd3e46f602c47bf8`.

Source path: `GRWTSK/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.LocalRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ReesAlgebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Module` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ideal.Filtration](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/ideal-filtration--a8c1dc45643eefbb9fd4b041.md) | 62 | `declaration-track:a8c1dc45643eefbb9fd4b041ddcf498201cb20ab6c48717b5e6cd5ba445f5725` |
| 2 | `theorem` | [pow_smul_le](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/pow-smul-le--77bce61870c150bc75ad0760.md) | 72 | `result-track:77bce61870c150bc75ad0760fc52a234d4c464718c2ffabc7048dfea922c46f5` |
| 3 | `theorem` | [pow_smul_le_pow_smul](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/pow-smul-le-pow-smul--9e35f19a1dce4d4988a8441b.md) | 79 | `result-track:9e35f19a1dce4d4988a8441bd4e980d65b4a494d3e457bb7e4e63b347b7327e4` |
| 4 | `theorem` | [antitone](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/antitone--774fa45bb50b3668eb579287.md) | 84 | `result-track:774fa45bb50b3668eb5792875fc599b01f5d9eaeccd1bb5f0b39e6daf7b53271` |
| 5 | `def` | [_root_.GRWTSK.Algebra.IdealFiltration.Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.Ideal.trivialFiltration](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/root-grwtsk-algebra-idealfiltration-variant4882004953ecf7df8345d1388bd2f--dc2253d0556ab20aace4ddad.md) | 90 | `declaration-track:dc2253d0556ab20aace4ddad41a54e2e8a9b0956946ec44a39a66f2a9d4beb50` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--f50f34a4d77bcc657db621ef.md) | 97 | `declaration-track:f50f34a4d77bcc657db621ef91d87fbea604c684d79f6e898914237a474cf544` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--bde100b883738e4148c9949b.md) | 103 | `declaration-track:bde100b883738e4148c9949b2e706e393fab07a27ca5aff44be833211a93f28c` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--fe2086c1cd5c7cbd68fd2824.md) | 117 | `declaration-track:fe2086c1cd5c7cbd68fd28242ef0f2be7380ddb70776e5e72cc1bc3358df0ed0` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--4dfe16b505c5b9b524a4186e.md) | 123 | `declaration-track:4dfe16b505c5b9b524a4186ecc5ff974abeb659ecf8b39b104fac9e0f1be60b4` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--8a3bf6483726f803ece094e5.md) | 137 | `declaration-track:8a3bf6483726f803ece094e53d62ae82823eb4ce68b49d4a73f6c23381f2b406` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--9ab759dc44e1d83c01c3f7c2.md) | 140 | `declaration-track:9ab759dc44e1d83c01c3f7c262f3548e48df0f89c439b35b1dfd8a43e6a25762` |
| 12 | `theorem` | [sup_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/sup-n--6556059dc435aad50f83da0e.md) | 144 | `result-track:6556059dc435aad50f83da0e9abd586fdccca7f0a986d0451842097b2871f493` |
| 13 | `theorem` | [sSup_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/ssup-n--454dc09646fa6874e92468ea.md) | 150 | `result-track:454dc09646fa6874e92468eacd68a7462eb8bb2eac1e5662f5155f432e468b7a` |
| 14 | `theorem` | [inf_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/inf-n--72c5328aface8fa0fc1d68ff.md) | 156 | `result-track:72c5328aface8fa0fc1d68ff2071c12f4615e408c327c3a2498391f1331967d0` |
| 15 | `theorem` | [sInf_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/sinf-n--2512d93b9655ab7b60cded3d.md) | 162 | `result-track:2512d93b9655ab7b60cded3d79e7dc272e825d4530a7e51b6c191dfda635f174` |
| 16 | `theorem` | [top_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/top-n--7e5cdefaccb8a770e7d20be2.md) | 168 | `result-track:7e5cdefaccb8a770e7d20be23643b5a300c63c8a4aca6c0e8f8a7b0be2ae71e8` |
| 17 | `theorem` | [bot_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/bot-n--89ad63034a837a2af79ff258.md) | 174 | `result-track:89ad63034a837a2af79ff258ece04b6ce9a8431c7dfb37f62015cccc9b596ae2` |
| 18 | `theorem` | [iSup_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/isup-n--3410a2022132430e6af76b34.md) | 180 | `result-track:3410a2022132430e6af76b34b3cae7eb17e58569f0588d7bc2017141249193be` |
| 19 | `theorem` | [iInf_N](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/iinf-n--e39ab1e110d00138b076d5b4.md) | 186 | `result-track:e39ab1e110d00138b076d5b405d4246c8a4a101aba69f1a6af462a953088e6bc` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--5bae5983685bf2859bf26c24.md) | 191 | `declaration-track:5bae5983685bf2859bf26c24c9660985d1a24936b685a6637c384e8d9dc73441` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/instance--7da6b92f1b89f99ea82cf885.md) | 195 | `declaration-track:7da6b92f1b89f99ea82cf8858758d3148e44cee815d998ed1a5c819b3329ae7d` |
| 22 | `def` | [Stable](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable--5c4270cc53b17e8726466de1.md) | 199 | `declaration-track:5c4270cc53b17e8726466de1ee32d97f361f6a6df11829c2a8998af53a3dbe57` |
| 23 | `def` | [_root_.GRWTSK.Algebra.IdealFiltration.Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.Ideal.stableFiltration](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/root-grwtsk-algebra-idealfiltration-variant4882004953ecf7df8345d1388bd2f--cdae6aff0654252e7dd5d449.md) | 205 | `declaration-track:cdae6aff0654252e7dd5d449722d110fff4b41dc9f73fc98d9fe00b1745119bf` |
| 24 | `theorem` | [_root_.GRWTSK.Algebra.IdealFiltration.Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.Ideal.stableFiltration_stable](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/root-grwtsk-algebra-idealfiltration-variant4882004953ecf7df8345d1388bd2f--d7212ca4bc9af56eab613403.md) | 211 | `result-track:d7212ca4bc9af56eab613403d819acabb6886ede7b48c8adc77dfb1d0e6e6ebe` |
| 25 | `theorem` | [Stable.exists_pow_smul_eq](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-exists-pow-smul-eq--b02d5b9345eb2afed7bcf89e.md) | 221 | `result-track:b02d5b9345eb2afed7bcf89ef50fc44a68f299c9ea9739f6138ce2863934af71` |
| 26 | `theorem` | [Stable.exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-exists-pow-smul-eq-of-ge--a39fd68fdde86a6524e0d67d.md) | 231 | `result-track:a39fd68fdde86a6524e0d67d4a442332fd64f30c266c80ffe1225104b7c63c4b` |
| 27 | `theorem` | [stable_iff_exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-iff-exists-pow-smul-eq-of-ge--57ad865f60f101b61ca48a81.md) | 239 | `result-track:57ad865f60f101b61ca48a813bdd901a8ae3b215e45077d954cc92a40b8da67f` |
| 28 | `theorem` | [Stable.exists_forall_le](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-exists-forall-le--c3b972055b5623b5cfa312fe.md) | 246 | `result-track:c3b972055b5623b5cfa312fe4680d3897abe827c433f00384e08bfbef25b3efd` |
| 29 | `theorem` | [Stable.bounded_difference](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-bounded-difference--5b25b5ae9ceaa1a252d69c75.md) | 258 | `result-track:5b25b5ae9ceaa1a252d69c7530ede689ec518f9b5f21d3802fa835a6a711f210` |
| 30 | `def` | [submodule](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/submodule--4b29de406b5cb02555832e3d.md) | 272 | `declaration-track:4b29de406b5cb02555832e3d28e924c98a56424a6a61289afebe7fc418d16c15` |
| 31 | `theorem` | [mem_submodule](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/mem-submodule--cfaa44cf61a022d002026607.md) | 286 | `result-track:cfaa44cf61a022d0020266076fc55cbbca5e22b88601df7e56b790aa6bd24747` |
| 32 | `theorem` | [inf_submodule](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/inf-submodule--a4f52a950a824861841d304b.md) | 290 | `result-track:a4f52a950a824861841d304b60c9d1f32d2941464e7b4a3285f3cff64db9de02` |
| 33 | `def` | [submoduleInfHom](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/submoduleinfhom--dec27e95ea2f5b887f86add9.md) | 298 | `declaration-track:dec27e95ea2f5b887f86add90582fea623b7ef410b4d346a3ba57017c0848ed9` |
| 34 | `theorem` | [submodule_closure_single](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/submodule-closure-single--5f5a7ddceec9ea7395d30af4.md) | 306 | `result-track:5f5a7ddceec9ea7395d30af47265afa8406fb8d4676d0bba024aada69b263a48` |
| 35 | `theorem` | [submodule_span_single](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/submodule-span-single--0398d55d9fe0d11440c744a3.md) | 322 | `result-track:0398d55d9fe0d11440c744a3c14d97419cdb531c7974c1af513bdef30dfe7d2e` |
| 36 | `theorem` | [submodule_eq_span_le_iff_stable_ge](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/submodule-eq-span-le-iff-stable-ge--df33f95326fe412f4d04fb5c.md) | 328 | `result-track:df33f95326fe412f4d04fb5cac5d50efdcc124be2e2e9b8c5ffd667b45bd2875` |
| 37 | `theorem` | [submodule_fg_iff_stable](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/submodule-fg-iff-stable--79fcfb901a03b4c495f91676.md) | 376 | `result-track:79fcfb901a03b4c495f9167602f45f68fde802efe4c57a9acbc28d084266ad12` |
| 38 | `theorem` | [Stable.of_le](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-of-le--d60e7e1c34290a4b27cd739e.md) | 413 | `result-track:d60e7e1c34290a4b27cd739e2fe316b9d6f49ac438c1ce61b24beec1cf4e6295` |
| 39 | `theorem` | [Stable.inter_right](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-inter-right--d278d20eddd3718bce11fce7.md) | 423 | `result-track:d278d20eddd3718bce11fce76f06b76120cbd1fc964c3c9bdb020677b923896e` |
| 40 | `theorem` | [Stable.inter_left](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/stable-inter-left--ef365aaf36fabaf7e519a6bd.md) | 428 | `result-track:ef365aaf36fabaf7e519a6bdd5f2b47f7db552fdd93775eeb7727b486d9d124a` |
| 41 | `theorem` | [Ideal.exists_pow_inf_eq_pow_smul](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/ideal-exists-pow-inf-eq-pow-smul--3cdb3b713ff3683c2f6efe25.md) | 438 | `result-track:3cdb3b713ff3683c2f6efe259d3807313bedeb6f53f1b95f9b6c7beba9168197` |
| 42 | `theorem` | [Ideal.mem_iInf_smul_pow_eq_bot_iff](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/ideal-mem-iinf-smul-pow-eq-bot-iff--3e57769cd2f9351730809b33.md) | 443 | `result-track:3e57769cd2f9351730809b33d595e306b10a290b1c75416442f7b5ea24e98c06` |
| 43 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_localRing](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-localring--046c99fd79171c03fc8a3fbe.md) | 467 | `result-track:046c99fd79171c03fc8a3fbeca6925bfe1640279a93c95c84c19a8123552fd27` |
| 44 | `theorem` | [Ideal.iInf_pow_eq_bot_of_localRing](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/ideal-iinf-pow-eq-bot-of-localring--63f9ad7376caa0283a668754.md) | 478 | `result-track:63f9ad7376caa0283a668754d6bc462128613131701483747bb3c362ccc5c2cd` |
| 45 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isDomain](../../../../mathematics/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/declarations/ideal-iinf-pow-eq-bot-of-isdomain--94c8edf71f564b45b409eb94.md) | 486 | `result-track:94c8edf71f564b45b409eb941e740e61fecbbc6d809c98609f96248e83302369` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
