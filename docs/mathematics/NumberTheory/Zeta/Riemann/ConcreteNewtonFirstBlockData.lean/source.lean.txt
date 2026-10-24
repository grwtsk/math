/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalTaylorSeedNormalization
import GRWTSK.Analysis.Complex.EuclideanDyadicRun
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Fixed first-block seed proposals for the original concrete Newton packet

Each row is three untrusted integers, not a source enclosure or acceptance
flag. The original argument, radius and displacement are recomputed from the
same base, exponent and schedule. Independent theorems check every row.
This file alone certifies no row. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonFirstBlockData

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace RationalTaylorSeedNormalization
open ConcreteNewtonPacket RationalZetaCenterEvaluation

def base (i : Fin 64) : ℕ := i.1 + 1

def initial (i : Fin 64) : GridState :=
  match i.1 with
  | 0 => ⟨18446744073709551616, 0, 2⟩
  | 1 => ⟨18408298253608376264, -704853099503417683, 8⟩
  | 2 => ⟨18373350954544269177, -1115869325961005862, 8⟩
  | 3 => ⟨18343000008558004312, -1406768156894581478, 14⟩
  | 4 => ⟨18316291555602436371, -1631940975735460486, 14⟩
  | 5 => ⟨18292420547935209719, -1815592421030575527, 14⟩
  | 6 => ⟨18270803512450754467, -1970622569268397088, 14⟩
  | 7 => ⟨18251017566164118957, -2104725259963458577, 20⟩
  | 8 => ⟨18232749346025746264, -2222859347250586275, 20⟩
  | 9 => ⟨18215760887555486237, -2328408250061460811, 20⟩
  | 10 => ⟨18199867352918023267, -2423783577185475637, 20⟩
  | 11 => ⟨18184922279022515609, -2510764822718119607, 20⟩
  | 12 => ⟨18170807574624506120, -2590702526859867294, 20⟩
  | 13 => ⟨18157426569479850827, -2664645874098088960, 20⟩
  | 14 => ⟨18144699071163965522, -2733426126316100499, 21⟩
  | 15 => ⟨18132557774432369489, -2797713050156423135, 26⟩
  | 16 => ⟨18120945602672734085, -2858054191572692644, 26⟩
  | 17 => ⟨18109813705301544909, -2914902896368540489, 27⟩
  | 18 => ⟨18099119925693499905, -2968638736878536040, 27⟩
  | 19 => ⟨18088827612572218774, -3019582687444908960, 27⟩
  | 20 => ⟨18078904686111371507, -3068008589384492361, 27⟩
  | 21 => ⟨18069322895674087368, -3114151943331605906, 27⟩
  | 22 => ⟨18060057223648144318, -3158216743226402374, 27⟩
  | 23 => ⟨18051085402008061745, -3200380853009205428, 27⟩
  | 24 => ⟨18042387516824238341, -3240800283634450341, 27⟩
  | 25 => ⟨18033945682088480624, -3279612629661298977, 27⟩
  | 26 => ⟨18025743768687656792, -3316939856068896539, 27⟩
  | 27 => ⟨18017767177636318744, -3352890577329426616, 27⟩
  | 28 => ⟨18010002649116899145, -3387561935826732130, 27⟩
  | 29 => ⟨18002438100708070167, -3421041161255096111, 27⟩
  | 30 => ⟨17995062489572513620, -3453406873866404483, 28⟩
  | 31 => ⟨17987865694440977916, -3484730180440916690, 33⟩
  | 32 => ⟨17980838414053265703, -3515075601313445143, 33⟩
  | 33 => ⟨17973972079358867145, -3544501858764818262, 33⟩
  | 34 => ⟨17967258777284289937, -3573062550929380450, 33⟩
  | 35 => ⟨17960691184273176753, -3600806730600067915, 33⟩
  | 36 => ⟨17954262508123199046, -3627779404590123420, 33⟩
  | 37 => ⟨17947966436898615477, -3654021966383234918, 33⟩
  | 38 => ⟨17941797093903021173, -3679572572485677465, 33⟩
  | 39 => ⟨17935748997863673326, -3704466471045956835, 33⟩
  | 40 => ⟨17929817027614916217, -3728736289824897311, 33⟩
  | 41 => ⟨17923996390679880695, -3752412289402719750, 33⟩
  | 42 => ⟨17918282595241657185, -3775522586538748857, 33⟩
  | 43 => ⟨17912671425071345814, -3798093351807263385, 34⟩
  | 44 => ⟨17907158917043775065, -3820148984983459617, 34⟩
  | 45 => ⟨17901741340924633039, -3841712271118301980, 34⟩
  | 46 => ⟨17896415181157171717, -3862804519798028104, 34⟩
  | 47 => ⟨17891177120414046184, -3883445689715772065, 34⟩
  | 48 => ⟨17886024024711463291, -3903654500375290976, 34⟩
  | 49 => ⟨17880952929909629292, -3923448532489055331, 34⟩
  | 50 => ⟨17875961029446309639, -3942844318416115715, 34⟩
  | 51 => ⟨17871045663169804500, -3961857423802036373, 34⟩
  | 52 => ⟨17866204307154339874, -3980502521428001870, 34⟩
  | 53 => ⟨17861434564395220558, -3998793458144251717, 34⟩
  | 54 => ⟨17856734156293454190, -4016743315650438688, 34⟩
  | 55 => ⟨17852100914850239433, -4034364465789191522, 34⟩
  | 56 => ⟨17847532775500968980, -4051668620936501455, 34⟩
  | 57 => ⟨17843027770526440784, -4068666880001405225, 34⟩
  | 58 => ⟨17838584022985975742, -4085369770486031409, 34⟩
  | 59 => ⟨17834199741123255680, -4101787287003937310, 34⟩
  | 60 => ⟨17829873213201047305, -4117928926608558990, 34⟩
  | 61 => ⟨17825602802725671740, -4133803721243497014, 35⟩
  | 62 => ⟨17821386944026205280, -4149420267591399247, 37⟩
  | _ => ⟨17817224138157031384, -4164786754567650766, 40⟩

/-- All source quantities use the original full rational logarithm supplier. -/
def sourceArgument (i : Fin 64) : QComplex :=
  RationalPowerEvaluation.argument (base i : ℚ) (sourceExponent center) (schedule (base i))
def sourceRadius (i : Fin 64) : ℚ :=
  RationalPowerEvaluation.radius (base i : ℚ) (sourceExponent center) (schedule (base i))
def sourceDisplacement (i : Fin 64) : ℚ :=
  RationalPowerEvaluation.displacement (base i : ℚ) (sourceExponent center) (schedule (base i))

def InputValid (i : Fin 64) : Prop :=
  RationalPowerEvaluation.Admissible (base i : ℚ) (sourceExponent center) (schedule (base i)) ∧
    0 ≤ sourceRadius i ∧ 0 ≤ sourceDisplacement i

def SeedWindows (i : Fin 64) : Prop :=
  RationalTaylorSeedNormalization.Windows 64 (sourceArgument i)
    (sourceRadius i) (sourceDisplacement i) 21 (initial i)

/-- Eight groups of eight distinct zero-based prefix positions. -/
def slot (g j : Fin 8) : Fin 64 := ⟨8 * g.1 + j.1, by omega⟩

/-- Coverage is about actual positions, not a count of successful labels. -/
theorem group_cover (i : Fin 64) : ∃ g j : Fin 8, slot g j = i := by
  have hi := i.isLt
  refine ⟨⟨i.1 / 8, by omega⟩, ⟨i.1 % 8, by omega⟩, ?_⟩
  apply Fin.ext
  simp only [slot]
  omega

theorem group_unique (g j g' j' : Fin 8) (h : slot g j = slot g' j') :
    g = g' ∧ j = j' := by
  have he := congrArg Fin.val h
  simp only [slot] at he
  constructor <;> apply Fin.ext <;> omega

end GRWTSK.RiemannHypothesis.ConcreteNewtonFirstBlockData
