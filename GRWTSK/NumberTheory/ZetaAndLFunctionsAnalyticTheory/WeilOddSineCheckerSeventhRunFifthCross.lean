/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Seventh retained run against the fifth

These are the original global rows 4110 through 4199 and columns 1610 through 1795.
Reuse the certified fifth-run and seventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [2315, 2589] and the sum window is [5721, 5995].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 4110 4199
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

private def crossRowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨4110 + 45 * b.val, by omega⟩ ⟨4110 + 45 * b.val + 44, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 4110 + 45 * b.val ≤ i.val ∧ i.val ≤ 4110 + 45 * b.val + 44) ↔
    4110 ≤ i.val ∧ i.val ≤ 4199
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 4110) / 45, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 2))) crossRowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [crossRowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 2590 then
    (digit 0x3d081560235e839db0646f41957b39b7a0aca0b95bd0468acef1e81b071fe0f40936b3217a025e12aebd0004fbda1e7f67c3582f3f63ab19879f884df6cbcfaead3885e7cc3ed792f3e06624dd79ed3fc3903cf51ae8431e79c5503a2f3c7bc395679e0906c1abcee961bf09e766c6240af3ac40d1bb79d278e12bbce75d7e009e72b9b0f34f38df886b179c2fb85c83cdf724b4c9e6eade0690f36ce8a63679b21b178bbcd6d5eded5e6a49ab524f3491732e0799fdaae42bccd89fd065e658de2dd2f3228ae2ef798c3dbb6e3cc3903c839e607b6e92ef2f94b1f3879774809b13cb8ea9cce1e5b134c314f2cd6001d87960fdbc293cad9b3a74de55568f7d0f29ed254c87949634dacbca1a45dcade4f46620faf26dab903879307d8ff83c95087a78de48e4031f6f239f5d8c8791651aac33c87ca2f061e4230c7414f203bbfd8c78fae51abd3c79ec44545e3b2e1826cf1cb0975f278de3db079bc6b71ad129e33dd74554f18fea5f6b78c0618f423c5c5d8523de2c406ed86f1526b7afb78a1572bd73c4cb310fc9e2458aeef2f1129a2a947881254b183c3c75bcf49e1c27efb3af0d0846e4b785fd300993c2ba91c8f5e13afffbdef08c38e163783d67ad24bc1a50e9b95e0af2c0c1cf045c6b7327819eafd273c087103fc5e01f227278effd3db7dc77f564e7093bf60d6faa1df8b0399f0efb2ae3ce777cfdda9723be32a54faddef2f10afaef66292da877a95dc97ebbcfcbff259de570d6422ef17bffb907781ee10dcbbbbf6db6d5ddb77c525aeec7849e4a7759978bdabba7af78255dd1462891cee75898fc07730638762bb92fa83acddc6de5ba2cee21e1c7f477065b8ee43b7ddccb611dbc42c8d18edcca0b8bb76db896a2d3b685b3a891db175e968ced75da495976aff71b32bb527ad9375da67a44f40ed1da2d1f67683aedbc93b3c40cb231d9b5270ac6ecc40f16fc7656bb1b4f3b25b24e7d1d90010ee14ec6934444c7629267c433b0ed4bab85d8488ce5c0ec0d27e86475fafbd1d43af7ad7f4f5d78ec69c1cebafffef5a75cc461d5b3ae04222821d6d2ea6f16eb51d29dc8759d108bcd3ac898400a1d6152565ceeaf2b68b96756d66731fbab0b587cd5d555a52620ea92c29eb1753d534f9e3a989fbc861d49497e9dcea320e05a7750ce2c136ba805cb2695d3d22c73e2e9d0b0322f74dc2088baba67f24dc49d30e920514e96ec0d39974ab1885163a4f6681989d249f8511ce90c57d1307479d6b07b3a36bf4e2edd1848f730ae8a98d44837448671d87ba1e02bfa95d0be87e1d2e8467973a47416d5f45f3a0536ec909cff81264b4e7e334cb4e73e52f6fc0b9ec61f45c9cf31600774e77fd7d90873b37fda1239d389fdfa1ce6aa20e84e71c7b45357381d38a6839bab5364cdcda409eb18e6b937cd13735036e186b9a1e9ceb11ccddc92f18e656263cbf731eb646dd39892dfb779cc18118114e5f35f692172ed5e2581397087f2621cb53149014e590fc29d972bc3ae91eb957fde91d5ca8f04076ae52f155325728b58faeeb93f9613ba1c9cc11827ae4cdc3afc3725ac4bea5b92756a3241c90a6e8070e46d1fface722a8a8f61b90f45c39b1c84a4c5802e40d42d99c71fab6bc9ab8f7699b285c78bdc2b2ae3ae44d59d71cb558710b8dfc84817dc6cf4edadae3503e5636719c731dbb38c867df6f1c614d4fad2e2f3479aa9716e1b9abc38b14e6b675c55c9ec552e29778b3f771405b0052b89a81e9e71c4a6dc0f0ce23ce97ed071133d35d43884084aff1c3f3bc3af4e1e3b19d8870e6ce04a6386de76f689c3436e2e42e18be8721570bb19153fb8582527055c29620447ee135a51815709029ec2fb842c72f649c1ec0043a0e0e0fe5ee870660be727382dd332489c1453b5052e08e0ac3cd703cca3a0eb8194ec4325c0a1fde244e03ce06c1970146fec1f38053f62eedc00273b8b0dfed951f76 (j - 2315) : ℤ) - 1000000000000
  else
    (digit 0x3a8f83a90a1d48f482fb6ea513490ef752d5ff45eba99117e2b9d4db8d347eea7741a6fe75405b7c453aa2899a265d5271fa1e8ea9cf30b78755327f90c3aabe997b75d571ec57ceeac23f336c7565c0a7ddbab52f16cf1d5bbe060dceae71ca9ea757820d1333abe57bd2b9d604e8f75ceb0b82126c758a43ca043ac76136f11d64cf389f8eb2f662b2d759c24f4f7bad049373f9d693edc064eb52bfcf8875adbfc38cbad90d78c91d6d9c5800eeb7585fa4675bf0fb743bae1abbe64dd71e68f0b2eb97afc7ec75d01062c33aea21d3a19d761c680e4ebb93478f875e0bd6af73af26d8d545d7a3ccea92ebda0b742575f112882fbafa8cca279d7e46b3762ebfa2c489476010b87373b027d73251d82390c512ec198eaffb7610a44a64bb0a3d7c3fdd8612d49b2ec382a90c4761fd8caad3b11cae4da5d89d30d7deec55f8001c762ea518a9bb1923b84a5d8d78be2caec72ef4406763d055d9d3b20460e59dd9102f4250ec8f08d54e764af5dc6f3b27300bc55d9470c36d2ecaa3d6184765872f2a63b2ddfe2b6dd97c146d10ecc485cce176657919573b3453d33d1d9af3a01deecdddb3418767204e6123b3a8a2bc11d9e06f85c6ecf636ee2d767e130bc43b408149765da0fa80086ed0d928e287689a05b943b463798c8dda3cd6f474ed23e7e4ca7694a9c5bb3b4bab95c79da67f061c8ed3931022d769f2c5a503b50dbcc891da90e8c9caed4d68375376a9254a0f3b55c6d98f5dab7b531d6ed608817a676b291e7193b5a6b6a25ddadc4b264aed728b7a6f76bb6fa5a8bb5ec83cbb1dafea0bd4eed836d7c3276c3bc1cc2bb62dc21375db1eac9982ed9329800176cb7506da3b66a5f94eddb3c65ec82eda1bb30b876d298426fbb6a24b8cf1db57c47944edaf1e822e76d923d2a33b6d5765e79db70c09666edbb4fb24e76df15dfc33b703d196f1db8753303aedc64b4a2576e46cb7ccbb72d4ff23ddb9b75cad0edd00e1ed276e926cee5bb751e55e6ddbad2283baedd895527576ed42bfcc3b77186ff2ddbbc5413beeddfde54f576f0bf4c3ebb78c2b30dddbc905d062ede5e6e4ca76f39b5d57bb7a1c98b79dbd333ad4aedeaad0fa176f5d603e0bb7b25ae50ddbdada3d6cedee2f32f876f76e789dbb7bdd953f9dbdff6b428edf06bfc9f76f8641c89bb7c44030d5dbe286e634edf1626b2b76f8b679103b7c58c180ddbe2894a60edf111ce5376f86540363b7c1baeb2ddbdffcfa26edef79c73676f7704cbd3b7b8cbd1d9dbdae1b22aedec9a488f76f5d7a2393b7aabf3a71dbd337d27cede87396d976f39b6d20bb79796da6ddbc9005ec0ede306485676f0bc02cdbb77f55ae65dbbc3cfe1ceddc53450a76ed39e177bb761fff9b9dbaceffb14edd45bc69b76e915b022bb73f9b4601db9b1c432cedcb21581f76e4503e83bb7182e6221db86c56660edc0a5d5db76deea84db3b6ebc160f9db6fef9686edb4eb6ce276d8e5a3c53b6ba5d97e1db569fa674eda7f49aae76d242e400bb6840d9cb9db3adb0904ed99c42c9676cb03b62a3b648dd43cddb1ca7cff4ed8a5d3f3d76c329b26f3b608d99d3ddafc0caa98ed79c33de376bab69835bb5c410f22ddad910e46aed67f9e1aa76b1ac4dba3b57a92c1b5dab3bc636eed550530c376a80cdfa5bb52c6fbd59da8c17a66ced40e97d85769dda8095bb4d9b9c561da622bc30eed2bab657a76931788a0bb48283e4c1da360263d0ed154fd04f7687c674cabb426e24cc9da07a5c5c8ecfddbeeb3767be9e675bb3c6ea507dd9d720b654ece555392c766f84a2c53b362b25fb9d9a47e9092eccbc16ece76629991fabb2fa5201f1d96fcb3ac2ecb12693e676552bbec9bb28de1d0b5d939132380ec958af09676473e559e3b21d7b7201d900633edeec78f50f577638d4a3e2bb1a939921dd8c5c90350ec5b6bbb717629f21735bb13137dd6dd889526686ec3cf5ff63 (j - 5721) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 275, crossSinc (2315 + j.val) = sincEntry (2315 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 275, crossSinc (5721 + j.val) = sincEntry (5721 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 2315 ≤ j) (hi : j ≤ 2589) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 2315, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 5721 ≤ j) (hi : j ≤ 5995) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 5721, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then
    seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

private def sliceTotal (b : Fin 2) : ℕ :=
  #[4938706228648864079464729242198242399440290893238,
    2764597762937680738894224329965117720375564771590][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 7703303991586544818358953572163360119815855664828 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the seventh retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem seventhWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (4110, 4199)) (retainedRunCells (1610, 1795)) =
        7703303991586544818358953572163360119815855664828 := by
  have hrows : retainedRunCells (4110, 4199) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1610, 1795) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
