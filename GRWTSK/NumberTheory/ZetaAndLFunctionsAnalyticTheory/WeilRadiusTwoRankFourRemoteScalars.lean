/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Formal assurance is tracked in grwtsk/noeaaeue docs/verification.md with
exact-source receipts. Independent analytical review and novelty assessment
remain pending. This is a source-bound finite component, not a high-floor,
whole-window, cofinal, RH or Dirichlet-GRH theorem.
-/

import R2MomentBlock00
import R2MomentBlock01
import R2MomentBlock02
import R2MomentBlock03
import R2MomentBlock04
import R2MomentBlock05
import R2MomentBlock06
import R2MomentBlock07
import R2MomentBlock08
import R2MomentBlock09
import R2MomentBlock10
import R2MomentBlock11
import R2MomentBlock12
import R2MomentBlock13
import R2MomentBlock14
import R2MomentBlock15
import R2MomentBlock16
import R2MomentBlock17
import R2MomentBlock18
import R2MomentBlock19
import R2MomentBlock20
import R2MomentBlock21
import R2MomentBlock22
import R2MomentBlock23
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteDyadicProducts

/-!
# Checked scalar moments for the radius-two 64-bit remote recipe

This module aggregates the existing 24 checked four-block moment proofs,
covering every required prime mode from 2049 through 8192. It returns three
literal intervals to the exact signed leading quantities c11 plus linearTail,
c12, and c22 plus derivativeTail. The source is the archived 64-bit recipe
with 1024 retained boundary terms and its proved positive boundary tail; the
separate checked first-trace and remainder inputs are imported by the entries
adapter. The generated R2MomentBlock inputs retain their original source
proofs and dependency pins; this aggregation does not assert a fresh replay
of their complete import closure.

Block coverage is proved by quotient/remainder indices. The three exact
rational equalities then identify the stored intervals with the sums, and the
existing interval source-return theorems include the infinite linear and
derivative tail allowances. In particular the mixed c12 moment keeps its sign.
These are closed source bounds, not assumed table soundness and not products
for the old reconstruction. The numerical products are a separate module.
The scalar results do not prove the full remote congruence, packet containment,
the 1/5 high floor at N=64, or a whole-window/cofinal conclusion. No equality
with the different 45-bit/K2048 recipe is asserted. The proof shares the
imported prime observations and moment bounds; no independent proof is claimed.
-/

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.FiniteDyadicIntervalProducts
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.NumberTheory.WeilQuadraticForm
open RadiusTwoRemoteLeading RadiusTwoRemoteDyadicProducts OddRemoteAllowanceMatrix
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteScalars

open R2RemoteMoment
def storedC11 : Bounds := ((5628468918221285 : ℚ) / 9223372036854775808, (1407117229556089 : ℚ) / 2305843009213693952)
def storedC12 : Bounds := ((1029741711129 : ℚ) / 18446744073709551616, (1029741717275 : ℚ) / 18446744073709551616)
def storedC22 : Bounds := ((168780264553959401110097848687415231168562237036576761858703776218849912933816273558086809940810457259019408007846018411852065088367628883951494362295330562803516549286888950686388221185778351031877701339114373773172038815720036241580906969500639249069186327209729192821902391625629356606718712157166197142776007531315085015162636378754334934029131492941301651804712627972934750464651347384487363715068106303794045203974196152006571510889516395849366404161949332916190854156379049394979457678192640034208993666038667981041399309365734314958614983224351166128807204764769786106133208315419305389816135860246738126197663508940773332668393545232952273112449525908303469690881410405163811860862738295989196257823219906982018803610019452711461331130898367402906161925831507914767067684661608017448812439165631119345449642524204105698913 : ℚ) / 1157560127201517813160880103451012129822376714582699947198438556864478558604504410263364622722300862055458497728332494639700730631694734823137531156661490717040755575249229078412050204758173351577290264288728843003364431507112405142573026883469344969504450805870264965647188420726774038389978890788781548163339766077339252001274370415390256415475662933035355052006325346294514716926817668436143492183684746738730968941864199155750234623092341001158515306282242107045363607635804140452343209961047190255309830957564792748927036133054424722972906493220910167962018652602230954442011001903132117628680997834728832841573223273604335217015304921828806387227631220619584184527020778383504435703281298111335654994144959049474329817533760197574128137671297707135969824513128954897174388831919427929221648676757527700131550895842117242355242959372288, (792851293569861548102439205251291506086854520117205567330783467777736771324300905978795724475838977365553091832671676078025105043479244384838313598961932451203501120270846210349856719377147990443469976697832478015431066615321262050748193214552304289367644003885391965264571369523577100053289938783135410220386997471471949537081363726143077312829821603517444493086415938157896901778304163885734969613770709625495399484819704243136521113521177020265479198864341311754435269576654245452613718305057503651285586660031645529803459139070375139972838375096182869692521145750093587146508900000067444449273864617039285223899235517578479895380974302672851793887047800070903827032988801352834798942831178568342101033951656037208299077054842923907035 : ℚ) / 5437667432248083743258943495526522184393092570351662702470263190128159594763903520579318463643471588837158034580719135792193475085858250515122413571321389325785516624792370455435378788267263716974773607891838531633739813334295754675412017999816363409170149303488576388281652147367067870067889921868622209221943528559139417079231872320755296275272505266158508336255266922382188064676035582194279622652964046003990344880215101051114641279305330055508162391255017930308755995810181831433774130781970953548838807050503504727668676011475798637216484604814058311760084390514239319845009662279491264570508514694998642623110190685521888456211509467969853454155314764224256065352855047318401637465232923075929680363834583097489925214101273795913328399220736)

private def BlockCheck (b : Fin 24) (k : Fin 4) : Prop :=
  Check ⟨b.val*4+k.val, by omega⟩

private theorem blocks_checked (b : Fin 24) (k : Fin 4) : BlockCheck b k := by
  fin_cases b
  · exact Block00.checked k
  · exact Block01.checked k
  · exact Block02.checked k
  · exact Block03.checked k
  · exact Block04.checked k
  · exact Block05.checked k
  · exact Block06.checked k
  · exact Block07.checked k
  · exact Block08.checked k
  · exact Block09.checked k
  · exact Block10.checked k
  · exact Block11.checked k
  · exact Block12.checked k
  · exact Block13.checked k
  · exact Block14.checked k
  · exact Block15.checked k
  · exact Block16.checked k
  · exact Block17.checked k
  · exact Block18.checked k
  · exact Block19.checked k
  · exact Block20.checked k
  · exact Block21.checked k
  · exact Block22.checked k
  · exact Block23.checked k

theorem checkedAll (b : Fin 96) : Check b := by
  let q : Fin 24 := ⟨b.val/4, by omega⟩
  let k : Fin 4 := ⟨b.val%4, by omega⟩
  have h : (⟨q.val*4+k.val, by omega⟩ : Fin 96) = b := by
    apply Fin.ext
    dsimp only [q,k]
    omega
  have hb := blocks_checked q k
  change Check ⟨q.val*4+k.val, by omega⟩ at hb
  rw [h] at hb
  exact hb

private theorem blocks_eq (kind : Fin 3) : momentBlock 64 primeAt kind = storedBlock kind := by
  funext b
  exact checkedAll b kind


theorem stored11_eq : storedC11 = add (c11Bounds 64) linearTailBounds := by
  rw [c11Bounds_blocks 64 primeAt, blocks_eq 0]
  decide +kernel

theorem stored12_eq : storedC12 = c12BoundsFrom 64 (fun n => derivativeInterval (primeAt n)) := by
  rw [c12Bounds_blocks 64 primeAt, blocks_eq 1]
  decide +kernel

theorem stored22_eq :
    storedC22 = add (c22BoundsFrom 64 (fun n => derivativeInterval (primeAt n))) derivativeTailInterval := by
  rw [c22Bounds_blocks 64 primeAt, blocks_eq 2]
  decide +kernel

private theorem derivative_sound (n : ℕ) (hl : 2048 < n) (hu : n ≤ 8192) :
    Encloses (derivativeInterval (primeAt n)) (OddResidualRows.derivativeWeight 2 n) :=
  derivativeInterval_sound (primeAt_sound n (by omega) hu)


theorem stored11_sound : Encloses storedC11 (c11 + linearTail) := by
  rw [stored11_eq]
  exact add_sound (c11Bounds_sound 64) linearTailBounds_sound

theorem stored12_sound : Encloses storedC12 c12 := by
  rw [stored12_eq]
  exact c12BoundsFrom_sound 64 derivative_sound

theorem stored22_sound : Encloses storedC22 (c22 + derivativeTail) := by
  rw [stored22_eq]
  exact add_sound (c22BoundsFrom_sound 64 derivative_sound) derivativeTailInterval_sound

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteScalars
