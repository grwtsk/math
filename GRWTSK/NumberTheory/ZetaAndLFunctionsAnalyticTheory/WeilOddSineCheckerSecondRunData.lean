/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSupportData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerBlocks

/-!
# Geometry and checked prices of the second retained run

Both the lower cross block and the diagonal block use rows 284 through 479.
Split those rows into fourteen disjoint intervals of fourteen cells. The
cached prices are checked against the literal signed deficit of the original
checker at every index of this run.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

def secondRetainedRunCells : Finset (Fin 32768) := Finset.Icc 284 479

def secondRetainedRunSlice (b : Fin 14) : Finset (Fin 32768) :=
  Finset.Icc ⟨284 + 14 * b.val, by omega⟩ ⟨284 + 14 * b.val + 13, by omega⟩

private theorem secondRetainedRunSlices_cover : Finset.univ.biUnion secondRetainedRunSlice = secondRetainedRunCells := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, secondRetainedRunCells, secondRetainedRunSlice, Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 14, 284 + 14 * b.val ≤ i.val ∧ i.val ≤ 284 + 14 * b.val + 13) ↔
    284 ≤ i.val ∧ i.val ≤ 479
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 14 := ⟨(i.val - 284) / 14, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem secondRetainedRunSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 14))) secondRetainedRunSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [secondRetainedRunSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega


/-- Split a block with the second run as its row set into its fourteen row slices. -/
theorem triangleBlock_secondRetainedRun_eq_sum_slices
    (prices : Fin 32768 → ℕ) (sincs : ℕ → ℤ) (columns : Finset (Fin 32768)) :
    triangleBlock prices sincs secondRetainedRunCells columns =
      ∑ b : Fin 14, triangleBlock prices sincs (secondRetainedRunSlice b) columns := by
  rw [← secondRetainedRunSlices_cover]
  simp only [triangleBlock]
  rw [Finset.sum_biUnion secondRetainedRunSlices_disjoint]

/-- The clipped prices on the second retained run, indexed by global grid cell. -/
def secondRetainedRunPrice (i : Fin 32768) : ℕ :=
  if 284 ≤ i.val ∧ i.val ≤ 479 then
    #[10657486412, 25077840205, 39509873625, 53949842752, 68393998950,
    82838589888, 97279860370, 111714053337, 126137410764, 140546174611,
    154936587747, 169304894891, 183647343534, 197960184893, 212239674850,
    226482074845, 240683652878, 254840684371, 268949453186, 283006252468,
    297007385658, 310949167355, 324827924287, 338639996226, 352381736919,
    366049514988, 379639714879, 393148737764, 406573002441, 419908946261,
    433153026044, 446301718955, 459351523442, 472298960060, 485140572454,
    497872928155, 510492619548, 522996264669, 535380508138, 547642021948,
    559777506431, 571783690988, 583657335054, 595395228869, 606994194298,
    618451085718, 629762790793, 640926231297, 651938363950, 662796181151,
    673496711828, 684037022189, 694414216508, 704625437891, 714667869009,
    724538732889, 734235293608, 743754857054, 753094771626, 762252428957,
    771225264618, 780010758769, 788606436910, 797009870493, 805218677617,
    813230523613, 821043121779, 828654233953, 836061671108, 843263293991,
    850257013713, 857040792326, 863612643381, 869970632490, 876112877895,
    882037550971, 887742876731, 893227134415, 898488657877, 903525836168,
    908337113901, 912920991823, 917276027155, 921400834092, 925294084165,
    928954506714, 932380889207, 935572077620, 938526976870, 941244551078,
    943723823934, 945963879033, 947963860154, 949722971561, 951240478276,
    952515706336, 953548043044, 954336937203, 954881899313, 955182501810,
    955238379202, 955049228285, 954614808274, 953934940939, 953009510774,
    951838465047, 950421813915, 948759630553, 946852051145, 944699274962,
    942301564407, 939659245041, 936772705524, 933642397687, 930268836441,
    926652599751, 922794328591, 918694726840, 914354561204, 909774661127,
    904955918626, 899899288196, 894605786645, 889076492885, 883312547814,
    877315154059, 871085575791, 864625138479, 857935228661, 851017293653,
    843872841293, 836503439652, 828910716705, 821096360024, 813062116428,
    804809791644, 796341249933, 787658413693, 778763263078, 769657835583,
    760344225600, 750824583988, 741101117629, 731176088917, 721051815324,
    710730668859, 700215075571, 689507515010, 678610519710, 667526674581,
    656258616418, 644809033232, 633180663724, 621376296630, 609398770103,
    597250971117, 584935834739, 572456343563, 559815526954, 547016460394,
    534062264802, 520956105768, 507701192890, 494300778990, 480758159402,
    467076671176, 453259692338, 439310641095, 425232975048, 411030190378,
    396705821036, 382263437927, 367706648050, 353039093701, 338264451528,
    323386431785, 308408777353, 293335262914, 278169694020, 262915906240,
    247577764185, 232159160649, 216664015643, 201096275463, 185459911754,
    169758920561, 153997321361, 138179156075, 122308488155, 106389401536,
    90425999692, 74422404623, 58382755857, 42311209440, 26211936950,
    10089124443][i.val - 284]!
  else 0

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem rowPrices_eq :
    ∀ offset : Fin 196,
      secondRetainedRunPrice ⟨284 + offset.val, by omega⟩ =
        price literalRawDeficit ⟨284 + offset.val, by omega⟩ := by
  decide +kernel

theorem secondRetainedRunPrice_eq {i : Fin 32768} (hi : i ∈ secondRetainedRunCells) :
    secondRetainedRunPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 284 ≤ i.val at hl
  change i.val ≤ 479 at hu
  have h := rowPrices_eq ⟨i.val - 284, by omega⟩
  have he : (⟨284 + (i.val - 284), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rwa [he] at h

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
