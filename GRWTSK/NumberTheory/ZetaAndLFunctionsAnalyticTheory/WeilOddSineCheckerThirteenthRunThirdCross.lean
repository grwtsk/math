/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Thirteenth retained run against the third

These are the original global rows 20236 through 20275 and columns 666 through 853.
Reuse the certified third-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [19383, 19609] and the sum window is [20903, 21129].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 19610 then
    (digit 0x3a76f1b78c5d3bc0af51ae9e040005c74f13b334c3a792a29139d3cdad6130e9e90082a174f59308d3ba7b51d53ddd3dec887dee9f17cd5fe74f9c88152ba7d68305ddd3ef58142ce9f9b2d43774fdda8bd13a7f6cb30c1d3ff57d396ea01a0686f7501c82016ba815eda495d40ec3b718ea09438fa97505903eeaba833e279f1d41d97d43eea109a594f750931f2593a850a21405d42bd06614ea17a2e7ac750cac4dedba86c25227dd43969ce28ea1e5b706a750ffe6ef1ba88664a369d446609572ea24c23d027513277ca5ba89f59e4f9d452b16d32ea2ad5ab31751626a877ba8b6fe8741d45e592fceea30942d5d7518fb2e37ba8cd4c7dc9d46954e198ea35fc4afd751ba4544cba8e23e1125d473a1b19aea3b0ca0fb751e216bdf3a8f5cde065d47d3cfa48ea3fc3e20c752071d10bba907f6e281d486244230ea4420d708752294eb083a918b4678dd48e553ca0ea48225f3a75248a2c4d3a928021a0dd495cdca3aea4bc770a775265112bc3a935dbfff9d49c8bf97eea4f0f18577527e927bdba9423e7bd9d4a28e0756ea51f87a9475295200633a94d264da1d4a7d25f7cea5482d321752a8b3d80ba9569093a5d4ac579cf4ea56ad756c752b948bc8ba95e7acb49d4b01c8a5eea5877ccc3752c6da3df3a964e2d1a9d4b3202250ea59e15c73752d164a6e3a969c6e439d4b5618f98ea5ae9bfef752d8e5036ba96d25a13dd4b6e02d74ea5b90aaeb752dd5921b3a96efe081dd4b79b87ccea5bd5e96f752debf92c3a96f4f79c9d4b7935b44ea5bb95fe9752dd17aaf3a96e19b8cdd4b6c79560ea5b3b0b36752d8618203a96b5ce981d4b5385482ea5a5b00a6752d09df353a967199209d4b2e5e7f6ea59196df7752c5ce9db3a961509a31d4afd0cfd0ea5776994f752b7f5e303a95a034b45d4abf9bce4ea5572e129752a716e7bba951334fc9d4a7619094ea530ebc467529335923ba946e2b315d4a2095c9eea504ab98c7527c5689eba93b13e0e5d49bf262deea4d277fe7752627f3603a92dc9a4bdd4951e1508ea49a5ce2475245b5bc63a91f072949d48d8e1444ea45c67abf7522601002ba90ecff799d4854430d6ea418a73b675203689feba8fd27f645d47c4269acea3cf2be49751ddf4f3fba8ea136881d4728aebdeea380076c3751b5af0c4ba8d596ed1dd468201230ea32b4d02d7518aa0ae6ba8bfb77d59d45d04647aea2d11140a7515cd452f3a8a87a6bb9d4513a970cea2716a2067512c552323a88fe562b9d444c58a06ea20c6ef9c750f92ef61ba875fe6365d437a848aaea1a2387c1750c36e4deba85acbc3f1d429e60892ea132e0a807508b205493a83e542e1dd41b8228f0ea0be82c937505052d8dba8209e9d99d40c8031baea0453b6fe75013144ad3a801b25e51d3fce3d2cae9fc72869774fd373b843a7e1970aa5d3ecb0e2f8e9f4468b9774f9180c92ba7c0548979d3dbeb5f22e9ebd1c91d74f4d4bbba3a79df30c61d3ca97693ee9e31654b074f06e56013a77a7b0d81d3b8b9474ae9da1655bb74ebe5f1503a755f54d8dd3a6556240e9d0d4050774e73cac2c3a7306ad185d393704506e9c751ac2d74e273ad6f3a709e4e099d3800e9b46e9bd91a504 (j - 19383) : ℤ) - 1000000000000
  else
    (digit 0x3a8e9736dcdd47581a03eea3b1f2eb8751dbbfad1ba8ef2c8d69d478316cdaea3c60ad83751e5183ad3a8f37f0b15d47a2dbd5eea3d485a17751eba1a0b3a8f669af69d47b76014aea3dd5f1d3751ef59f6aba8f7eb9ccdd47c09d518ea3e094893751f04008aba8f8044fd1d47be90250ea3de248c0751ee53571ba8f6b39f31d47b137f9eea3d60f356751e9941703a8f3f9bc0dd4798970deea3c855fe5751e2033213a8efd731d1d4774b270aea3b4fbc92751d7a2467ba8ea4ce61dd474592038ea39c04e06751ca73a693a8e35c1895d470b40776ea37d76f65751ba7a5853a8db0662a5d46c5cb4aaea35959239751a7ba14bba8d14db70dd467542c5aea32fb3e56751923746bba8c6346185d4619b9f70ea300911b775179f70a83a8b9bd0621d45b346afcea2cbfc0627515eff2bf3a8abeaa0bdd4542017d2ea292014347514156257ba89cc08439d44c605a36ea252aecb475121031e6ba88c4259bdd443f71172ea20e13edf750fe0de943a87a741fc9d43ae64760ea1c4414ea750d87f01d3a8675a2949d431302feeea17548e03750b05f8b23a852f91c79d426d7288eea1213de0b75085b94d4ba83d55f1d5d41bddb7aeea0c834d4b7505896b2fba82675f2e1d410468c16ea06a438247502902c70ba80e5eb8cdd404147c3cea00780ebb74ff70931aba7f5162b25d3f74a8594e9fa00549b74fc2b63593a7daa27e69d3e9ebcbdae9f33ea05b74f8c16ad1ba7bf0a3269d3dbfb9846e9ec349b3774f533806eba7a25410c5d3cd7d58c0e9e4e400a874f182842c3a784872b45d3be749f0ae9dd4e9df974edaf5ee03a765aada01d3aee51fdce9d57651d274e9bb02023a745c6b9a9d39ed2b1fae9cd5d0bc674e5a6676eba724e2a9a5d38e414d48e9c504cbd474e17291293a70306ca15d37d3509c2e9bc6fa1ee74dd20891f3a6e03b79d5d36bb21e8ce9b39fad7074d8b160e23a6bc895479d359bce0d4e9aa971ca274d42631673a697f93011d34759c2cee9a1582c2774cf801ac1ba672941b19d3348d5292e997e5267174cac043d83a64c635a1dd3215c38fee98e40633174c5e7da213a625706581d30dcb3892e9846c46c474c0f81152ba5fdc4e729d2f9df2c3ce97a6b419674bbf22319ba5d56ab801d2e59d0624e9703fcf8b74b6d74ecaba5ac6bdd99d2d109ce78e965ec776174b1a8d913ba582d287add2bc2aa226e95b73ca0d74ac680ba93a558a90d91d2a704b196e950d8621b74a71634f73a52df9eba5d2919d3f6ae9461ce30674a1b4a7cc3a502cfc0b5d27bf99f20e93b43f891749c44bb04ba4d7354b65d2661f33cae93050561c7496c7c9383a4ab356769d250136eb6e92544b5f974913f305f3a47edb0aedd239dbce0ee91a23d8bd748bac517fba4523143c5d2237ddb7ae90ef0849474861090533a4254334b5d20cff2ac6e903ad848874806d52ef3a3f81c12b1d1f6655876e8f85da7d8747ac4016a3a3cac72201d1dfb60862e8ed03c1407475160583ba39d4fb381d1c8f6e454e8e1a2a644746f64ca48ba36fc121c5d1b22d9a92e8d63d2e7d7469b1bbb9ba34226ce49d19b5fdc7ee8cad632e17463fe4670ba3148c1e91d184935d24e8bf708d11 (j - 20903) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 227, crossSinc (19383 + j.val) = sincEntry (19383 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 227, crossSinc (20903 + j.val) = sincEntry (20903 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 19383 ≤ j) (hi : j ≤ 19609) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 19383, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 20903 ≤ j) (hi : j ≤ 21129) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 20903, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := thirdRetainedRunPrice_eq ⟨i.val - 666, by omega⟩
    have he : (⟨666 + (i.val - 666), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 123668040103776500744565290191189614357875750238 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (666, 853)) =
        123668040103776500744565290191189614357875750238 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (666, 853) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
