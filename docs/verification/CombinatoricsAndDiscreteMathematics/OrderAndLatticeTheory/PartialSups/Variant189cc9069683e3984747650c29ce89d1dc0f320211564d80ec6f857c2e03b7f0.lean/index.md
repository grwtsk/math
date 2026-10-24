# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSups.Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8b118442fd08752e860e915aa1e5cab3183ed55",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8b118442fd08752e860e915aa1e5cab3183ed55`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups--e5d99f37f4a867841eef15be.md) | 50 | `declaration-track:e5d99f37f4a867841eef15befc1e3e8ee5c1545bdd718f814d751fd10a63ab05` |
| 2 | `lemma` | [partialSups_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-apply--ba39680d66181d42513e6290.md) | 54 | `result-track:ba39680d66181d42513e6290027f3bd05a350150414eb38d0073e2db76e08bba` |
| 3 | `lemma` | [partialSups_iff_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-iff-forall--2dc074428446d75547b49570.md) | 58 | `result-track:2dc074428446d75547b49570c8945ec13fe1288222f382f528953528b279ea34` |
| 4 | `lemma` | [partialSups_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-le-iff--15d939e026ade11c4f59d90a.md) | 70 | `result-track:15d939e026ade11c4f59d90a8a19ddf1f06ab5a43e3b4a020a4722ba76c025c7` |
| 5 | `theorem` | [le_partialSups_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/le-partialsups-of-le--4f35281bf6fa630329374ee9.md) | 74 | `result-track:4f35281bf6fa630329374ee964b4e01a45ad32f8060ebae066d968bcf356bc19` |
| 6 | `theorem` | [le_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/le-partialsups--b70d769d409cdce0dc01f384.md) | 78 | `result-track:b70d769d409cdce0dc01f384f35289b5a744fc0c420d454e7eea2a6fe55743c2` |
| 7 | `theorem` | [partialSups_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-le--20b0eca270128dbe7241f648.md) | 82 | `result-track:20b0eca270128dbe7241f648708d6dee376572e9881b5a0f746e13e83554882f` |
| 8 | `lemma` | [upperBounds_range_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/upperbounds-range-partialsups--4116de7a442ad5ceb6f691b5.md) | 87 | `result-track:4116de7a442ad5ceb6f691b5cc00bccab333c09d8fa6b9453522728c13aeaa57` |
| 9 | `theorem` | [bddAbove_range_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/bddabove-range-partialsups--fd2f88d1344f3b5af9dbf7aa.md) | 94 | `result-track:fd2f88d1344f3b5af9dbf7aad2ecb7402a5ec811400340ab75301e8eb245028b` |
| 10 | `theorem` | [Monotone.partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/monotone-partialsups-eq--473da23d554a61b00c0b0d9e.md) | 98 | `result-track:473da23d554a61b00c0b0d9e534eb84da297da3ac527e031ab5af76febc945a6` |
| 11 | `theorem` | [partialSups_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-mono--8c62ea6f807239784535b323.md) | 102 | `result-track:8c62ea6f807239784535b3230400dde2c946adb2c4a8b01e03587922672df2fe` |
| 12 | `lemma` | [partialSups_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-monotone--2863b163925d08bea0f2b2ed.md) | 106 | `result-track:2863b163925d08bea0f2b2ed4d0c0fb01e22f38b7d4ba45737589f328b329db6` |
| 13 | `def` | [partialSups.gi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-gi--1102207aab40fd0a699c29c9.md) | 112 | `declaration-track:1102207aab40fd0a699c29c946986738bd56695a030df8d3ab84d38f0b433c07` |
| 14 | `lemma` | [Pi.partialSups_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/pi-partialsups-apply--f4d64a58c340bcf026f90890.md) | 123 | `result-track:f4d64a58c340bcf026f908906057efd1c1064aefee12ec5f8d57982bed26486b` |
| 15 | `theorem` | [partialSups_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-succ--e547d5ed91c9926900232bf2.md) | 131 | `result-track:e547d5ed91c9926900232bf2e2a5a544a19246eb7f0e4cd9c8c336c27d03724a` |
| 16 | `theorem` | [partialSups_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-bot--90cf3be90c9adf8ae7a48b85.md) | 143 | `result-track:90cf3be90c9adf8ae7a48b855235f25443a7702971b4e5870aa19d37fd7f53f8` |
| 17 | `theorem` | [partialSups_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-zero--778d95196972308cd9f2db9c.md) | 155 | `result-track:778d95196972308cd9f2db9cdacc8fd7e49cc36977f5aa495ca44ae5f604a910` |
| 18 | `theorem` | [partialSups_eq_sup'_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-eq-sup-range--e8102fd9abd493369849f3c8.md) | 158 | `result-track:e8102fd9abd493369849f3c8af9cee43cdac78d6dc21afeab641d79b8c23c167` |
| 19 | `theorem` | [partialSups_eq_sup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-eq-sup-range--42115fd987728fac18f99bbf.md) | 162 | `result-track:42115fd987728fac18f99bbf4d92886c1833ebd85604e3e3b8372598ce1ed1b9` |
| 20 | `lemma` | [disjoint_partialSups_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/disjoint-partialsups-left--531b60655a22fab25a86fe9a.md) | 180 | `result-track:531b60655a22fab25a86fe9a1261493a5d272b0148d03cff0807c94af08e2f20` |
| 21 | `lemma` | [disjoint_partialSups_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/disjoint-partialsups-right--e220140456ab42807c3cc705.md) | 185 | `result-track:e220140456ab42807c3cc7050d53643bc0a48959bd3d9ba09e5fc4bd8e367268` |
| 22 | `theorem` | [partialSups_disjoint_of_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-disjoint-of-disjoint--aa7ba9bcacfb98509ec26c5c.md) | 192 | `result-track:aa7ba9bcacfb98509ec26c5c9da34a956e1e0620532c6b80561b66630d4b51b0` |
| 23 | `theorem` | [partialSups_eq_ciSup_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-eq-cisup-iic--4d6933ed7445f469c2ac8f56.md) | 208 | `result-track:4d6933ed7445f469c2ac8f568bfd6e92c11dac1313b4772f691b209d3a244d75` |
| 24 | `theorem` | [ciSup_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/cisup-partialsups-eq--c7d1555716720637ee8871d3.md) | 217 | `result-track:c7d1555716720637ee8871d36c9f6189611bb4b6fa5805aad6490409f5532a05` |
| 25 | `theorem` | [ciSup_partialSups_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/cisup-partialsups-eq--a9bfa4bbb8eef9e188ecdb3f.md) | 229 | `result-track:a9bfa4bbb8eef9e188ecdb3fa52d8f305cc901b23395f7e519a8fb40a4aa5381` |
| 26 | `theorem` | [iSup_partialSups_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/isup-partialsups-eq--f37ab66e79acdf86a4a4a4c2.md) | 245 | `result-track:f37ab66e79acdf86a4a4a4c28a30ef76a533ba36ab313aed42fc3d2a6a8d25f8` |
| 27 | `theorem` | [partialSups_eq_biSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-eq-bisup--23beb1a520df07bd745fa1e4.md) | 249 | `result-track:23beb1a520df07bd745fa1e4158abd39ef7dd6dff77a1ad830f11edff478a71f` |
| 28 | `theorem` | [iSup_le_iSup_of_partialSups_le_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/isup-le-isup-of-partialsups-le-partialsups--753e950436f884926c2b5356.md) | 253 | `result-track:753e950436f884926c2b5356c9e6442043911842308b04658e2b0661e79cc765` |
| 29 | `theorem` | [iSup_eq_iSup_of_partialSups_eq_partialSups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/isup-eq-isup-of-partialsups-eq-partialsups--aaf02f8f9eef71cec82f5114.md) | 258 | `result-track:aaf02f8f9eef71cec82f51142421e25875f35fd29b319eb1dab329eae20edbbe` |
| 30 | `lemma` | [partialSups_eq_sUnion_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-eq-sunion-image--e9d30567475e42e05e103d61.md) | 269 | `result-track:e9d30567475e42e05e103d61c55e127b484f51e40b9425e967ea9776ee3f0665` |
| 31 | `lemma` | [partialSups_eq_biUnion_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variant189cc9069683e3984747650c29ce89d1dc0f320211564d80ec6f857c2e03b7f0.lean/declarations/partialsups-eq-biunion-range--c119055eb31b0773ce981654.md) | 273 | `result-track:c119055eb31b0773ce9816540e09ac4939550f3a8a479bd2fed103b7ffa6cdfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
