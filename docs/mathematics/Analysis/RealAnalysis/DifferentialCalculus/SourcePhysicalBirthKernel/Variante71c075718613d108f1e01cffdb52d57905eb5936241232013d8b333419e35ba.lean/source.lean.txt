-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPhysicalWeight.Variant5d6bb72ea23e518f92395576de60461afe4002a68c6b8348650698849efd661a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d6bb72ea23e518f92395576de60461afe4002a68c6b8348650698849efd661a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualPhysicalWeight.Variant5d6bb72ea23e518f92395576de60461afe4002a68c6b8348650698849efd661a","mathematical_subject":"Analysis.Calculus","original_sha256":"5d6bb72ea23e518f92395576de60461afe4002a68c6b8348650698849efd661a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/native-physical-birth-kernel/attempt03/SourcePhysicalBirthKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePhysicalEndpointConvolution
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-! Native actual physical weighted-correlation kernel on the birth interval.
Direction: grwtsk contributors. Source construction/formalization: Codex graph_review.
Full27 endpoint coefficients and135 positive Bernstein coefficients are retained.
The complete signed atomic interior is not estimated here. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPhysicalWeight.Variant5d6bb72ea23e518f92395576de60461afe4002a68c6b8348650698849efd661a

set_option autoImplicit false
set_option maxHeartbeats 8000000
set_option maxRecDepth 8192
noncomputable section
namespace RH16PhysicalBirthKernel
open Set MeasureTheory
open scoped BigOperators
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePhysicalEndpointConvolution SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

def actualPhysicalWeight (A y : ℝ) : ℝ :=
  A ^ 9 * Real.exp (-y / 2) * sourceCorrelation explicitSecondDerivative A (2 * A - y)

def actualPhysicalKernel (A y : ℝ) : ℝ := deriv (deriv (actualPhysicalWeight A)) y

def physicalCurvaturePolynomial (r y : ℝ) : ℝ :=
  (24576) +
    (-6144) * y +
    ((-1536 / 5)) * y ^ 2 +
    ((512 / 5)) * y ^ 3 +
    ((-64 / 35)) * y ^ 4 +
    ((-8 / 35)) * y ^ 5 +
    ((2 / 315)) * y ^ 6 +
    (-122880) * r * y +
    (24576) * r * y ^ 2 +
    (1024) * r * y ^ 3 +
    ((-2048 / 7)) * r * y ^ 4 +
    ((32 / 7)) * r * y ^ 5 +
    ((32 / 63)) * r * y ^ 6 +
    ((-4 / 315)) * r * y ^ 7 +
    (233472) * r ^ 2 * y ^ 2 +
    (-38912) * r ^ 2 * y ^ 3 +
    ((-9728 / 7)) * r ^ 2 * y ^ 4 +
    ((2432 / 7)) * r ^ 2 * y ^ 5 +
    ((-304 / 63)) * r ^ 2 * y ^ 6 +
    ((-152 / 315)) * r ^ 2 * y ^ 7 +
    ((38 / 3465)) * r ^ 2 * y ^ 8 +
    (-227328) * r ^ 3 * y ^ 3 +
    ((227328 / 7)) * r ^ 3 * y ^ 4 +
    ((7104 / 7)) * r ^ 3 * y ^ 5 +
    ((-4736 / 21)) * r ^ 3 * y ^ 6 +
    ((296 / 105)) * r ^ 3 * y ^ 7 +
    ((296 / 1155)) * r ^ 3 * y ^ 8 +
    ((-37 / 6930)) * r ^ 3 * y ^ 9 +
    ((887808 / 7)) * r ^ 4 * y ^ 4 +
    ((-110976 / 7)) * r ^ 4 * y ^ 5 +
    ((-9248 / 21)) * r ^ 4 * y ^ 6 +
    ((9248 / 105)) * r ^ 4 * y ^ 7 +
    ((-1156 / 1155)) * r ^ 4 * y ^ 8 +
    ((-289 / 3465)) * r ^ 4 * y ^ 9 +
    ((289 / 180180)) * r ^ 4 * y ^ 10 +
    (-42240) * r ^ 5 * y ^ 5 +
    ((14080 / 3)) * r ^ 5 * y ^ 6 +
    ((352 / 3)) * r ^ 5 * y ^ 7 +
    ((-64 / 3)) * r ^ 5 * y ^ 8 +
    ((2 / 9)) * r ^ 5 * y ^ 9 +
    ((2 / 117)) * r ^ 5 * y ^ 10 +
    ((-1 / 3276)) * r ^ 5 * y ^ 11 +
    (8320) * r ^ 6 * y ^ 6 +
    (-832) * r ^ 6 * y ^ 7 +
    ((-208 / 11)) * r ^ 6 * y ^ 8 +
    ((104 / 33)) * r ^ 6 * y ^ 9 +
    ((-1 / 33)) * r ^ 6 * y ^ 10 +
    ((-1 / 462)) * r ^ 6 * y ^ 11 +
    ((1 / 27720)) * r ^ 6 * y ^ 12 +
    (-896) * r ^ 7 * y ^ 7 +
    ((896 / 11)) * r ^ 7 * y ^ 8 +
    ((56 / 33)) * r ^ 7 * y ^ 9 +
    ((-112 / 429)) * r ^ 7 * y ^ 10 +
    ((1 / 429)) * r ^ 7 * y ^ 11 +
    ((1 / 6435)) * r ^ 7 * y ^ 12 +
    ((-1 / 411840)) * r ^ 7 * y ^ 13 +
    ((448 / 11)) * r ^ 8 * y ^ 8 +
    ((-112 / 33)) * r ^ 8 * y ^ 9 +
    ((-28 / 429)) * r ^ 8 * y ^ 10 +
    ((4 / 429)) * r ^ 8 * y ^ 11 +
    ((-1 / 12870)) * r ^ 8 * y ^ 12 +
    ((-1 / 205920)) * r ^ 8 * y ^ 13 +
    ((1 / 14002560)) * r ^ 8 * y ^ 14

private def endpointD1 (r y : ℝ) : ℝ :=
  (6144) * y ^ 4 +
    ((-512 / 5)) * y ^ 6 +
    ((8 / 35)) * y ^ 8 +
    (-24576) * r * y ^ 5 +
    ((2048 / 7)) * r * y ^ 7 +
    ((-32 / 63)) * r * y ^ 9 +
    (38912) * r ^ 2 * y ^ 6 +
    ((-2432 / 7)) * r ^ 2 * y ^ 8 +
    ((152 / 315)) * r ^ 2 * y ^ 10 +
    ((-227328 / 7)) * r ^ 3 * y ^ 7 +
    ((4736 / 21)) * r ^ 3 * y ^ 9 +
    ((-296 / 1155)) * r ^ 3 * y ^ 11 +
    ((110976 / 7)) * r ^ 4 * y ^ 8 +
    ((-9248 / 105)) * r ^ 4 * y ^ 10 +
    ((289 / 3465)) * r ^ 4 * y ^ 12 +
    ((-14080 / 3)) * r ^ 5 * y ^ 9 +
    ((64 / 3)) * r ^ 5 * y ^ 11 +
    ((-2 / 117)) * r ^ 5 * y ^ 13 +
    (832) * r ^ 6 * y ^ 10 +
    ((-104 / 33)) * r ^ 6 * y ^ 12 +
    ((1 / 462)) * r ^ 6 * y ^ 14 +
    ((-896 / 11)) * r ^ 7 * y ^ 11 +
    ((112 / 429)) * r ^ 7 * y ^ 13 +
    ((-1 / 6435)) * r ^ 7 * y ^ 15 +
    ((112 / 33)) * r ^ 8 * y ^ 12 +
    ((-4 / 429)) * r ^ 8 * y ^ 14 +
    ((1 / 205920)) * r ^ 8 * y ^ 16

private def endpointD2 (r y : ℝ) : ℝ :=
  (24576) * y ^ 3 +
    ((-3072 / 5)) * y ^ 5 +
    ((64 / 35)) * y ^ 7 +
    (-122880) * r * y ^ 4 +
    (2048) * r * y ^ 6 +
    ((-32 / 7)) * r * y ^ 8 +
    (233472) * r ^ 2 * y ^ 5 +
    ((-19456 / 7)) * r ^ 2 * y ^ 7 +
    ((304 / 63)) * r ^ 2 * y ^ 9 +
    (-227328) * r ^ 3 * y ^ 6 +
    ((14208 / 7)) * r ^ 3 * y ^ 8 +
    ((-296 / 105)) * r ^ 3 * y ^ 10 +
    ((887808 / 7)) * r ^ 4 * y ^ 7 +
    ((-18496 / 21)) * r ^ 4 * y ^ 9 +
    ((1156 / 1155)) * r ^ 4 * y ^ 11 +
    (-42240) * r ^ 5 * y ^ 8 +
    ((704 / 3)) * r ^ 5 * y ^ 10 +
    ((-2 / 9)) * r ^ 5 * y ^ 12 +
    (8320) * r ^ 6 * y ^ 9 +
    ((-416 / 11)) * r ^ 6 * y ^ 11 +
    ((1 / 33)) * r ^ 6 * y ^ 13 +
    (-896) * r ^ 7 * y ^ 10 +
    ((112 / 33)) * r ^ 7 * y ^ 12 +
    ((-1 / 429)) * r ^ 7 * y ^ 14 +
    ((448 / 11)) * r ^ 8 * y ^ 11 +
    ((-56 / 429)) * r ^ 8 * y ^ 13 +
    ((1 / 12870)) * r ^ 8 * y ^ 15

private theorem endpoint_deriv (r : ℝ) : deriv (endpointPolynomial r) = endpointD1 r := by
  funext y
  unfold endpointPolynomial endpointD1
  simp (disch := fun_prop) only [deriv_fun_add, deriv_fun_mul, deriv_fun_pow,
    deriv_id'', deriv_const]
  ring

private theorem endpointD1_deriv (r : ℝ) : deriv (endpointD1 r) = endpointD2 r := by
  funext y
  unfold endpointD1 endpointD2
  simp (disch := fun_prop) only [deriv_fun_add, deriv_fun_mul, deriv_fun_pow,
    deriv_id'', deriv_const]
  ring

private theorem weighted_polynomial_identity (r y : ℝ) :
    endpointD2 r y - endpointD1 r y + endpointPolynomial r y / 4 =
      y ^ 3 * physicalCurvaturePolynomial r y := by
  unfold endpointD2 endpointD1 endpointPolynomial physicalCurvaturePolynomial
  ring

private def physicalProfile (A y : ℝ) : ℝ :=
  Real.exp (-y / 2) * endpointPolynomial (1 / A) y / sourceNormalization A

private theorem physicalProfile_contDiff (A : ℝ) : ContDiff ℝ 2 (physicalProfile A) := by
  unfold physicalProfile endpointPolynomial
  fun_prop

private theorem actualPhysicalWeight_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (actualPhysicalWeight A) := by
  unfold actualPhysicalWeight
  exact (contDiff_const.mul ((contDiff_id.neg.div_const 2).exp)).mul
    ((sourceCorrelation_contDiff_two hA).comp (contDiff_const.sub contDiff_id))

theorem actualPhysicalWeight_eq_profile {A y : ℝ} (hA : 0 < A)
    (hy0 : 0 ≤ y) (hy2 : y ≤ 2 * A) :
    actualPhysicalWeight A y = physicalProfile A y := by
  unfold actualPhysicalWeight physicalProfile
  rw [sourceCorrelation_endpoint_eq_polynomial hA hy0 hy2]
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  field_simp [hA.ne', hZ.ne']

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

private theorem actualPhysicalWeight_second_eq_profile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (actualPhysicalWeight A))) (deriv (deriv (physicalProfile A)))
      (Icc 0 (2 * A)) := by
  have hf := actualPhysicalWeight_contDiff hA
  have hg := physicalProfile_contDiff A
  apply deriv_eq_on_closed (by linarith)
  · have hf1 : ContDiff ℝ 1 (deriv (actualPhysicalWeight A)) := hf.deriv'
    exact hf1.differentiable (by norm_num)
  · have hg1 : ContDiff ℝ 1 (deriv (physicalProfile A)) := hg.deriv'
    exact hg1.differentiable (by norm_num)
  · apply deriv_eq_on_closed (by linarith)
    · exact hf.differentiable (by norm_num)
    · exact hg.differentiable (by norm_num)
    · intro y hy
      exact actualPhysicalWeight_eq_profile hA hy.1 hy.2

private theorem physicalProfile_deriv (A : ℝ) :
    deriv (physicalProfile A) = fun y => Real.exp (-y / 2) *
      (endpointD1 (1 / A) y - endpointPolynomial (1 / A) y / 2) / sourceNormalization A := by
  funext y
  have hf : Differentiable ℝ (endpointPolynomial (1 / A)) := by unfold endpointPolynomial; fun_prop
  have hp : HasDerivAt (endpointPolynomial (1 / A)) (endpointD1 (1 / A) y) y := by
    simpa only [endpoint_deriv] using (hf y).hasDerivAt
  have he0 := ((hasDerivAt_id y).neg.div_const 2).exp
  have he : HasDerivAt (fun x : ℝ => Real.exp (-x / 2)) (-Real.exp (-y / 2) / 2) y := by
    convert he0 using 1 <;> simp only [Pi.neg_apply, id_eq] <;> ring
  have h := (he.mul hp).div_const (sourceNormalization A)
  unfold physicalProfile
  exact (h.congr_deriv (by ring)).deriv

private theorem physicalProfile_second (A y : ℝ) :
    deriv (deriv (physicalProfile A)) y =
      Real.exp (-y / 2) * y ^ 3 * physicalCurvaturePolynomial (1 / A) y /
        sourceNormalization A := by
  have hf : Differentiable ℝ (endpointPolynomial (1 / A)) := by unfold endpointPolynomial; fun_prop
  have hg : Differentiable ℝ (endpointD1 (1 / A)) := by unfold endpointD1; fun_prop
  have hp : HasDerivAt (endpointPolynomial (1 / A)) (endpointD1 (1 / A) y) y := by
    simpa only [endpoint_deriv] using (hf y).hasDerivAt
  have hq : HasDerivAt (endpointD1 (1 / A)) (endpointD2 (1 / A) y) y := by
    simpa only [endpointD1_deriv] using (hg y).hasDerivAt
  have he0 := ((hasDerivAt_id y).neg.div_const 2).exp
  have he : HasDerivAt (fun x : ℝ => Real.exp (-x / 2)) (-Real.exp (-y / 2) / 2) y := by
    convert he0 using 1 <;> simp only [Pi.neg_apply, id_eq] <;> ring
  have h := (he.mul (hq.sub (hp.div_const 2))).div_const (sourceNormalization A)
  rw [physicalProfile_deriv]
  calc
    _ = Real.exp (-y / 2) * (endpointD2 (1 / A) y - endpointD1 (1 / A) y +
        endpointPolynomial (1 / A) y / 4) / sourceNormalization A :=
      (h.congr_deriv (by dsimp only [Pi.mul_apply, Pi.sub_apply]; ring)).deriv
    _ = _ := by rw [weighted_polynomial_identity]; ring

theorem actualPhysicalKernel_eq_polynomial {A y : ℝ} (hA : 0 < A)
    (hy0 : 0 ≤ y) (hy2 : y ≤ 2 * A) :
    actualPhysicalKernel A y = Real.exp (-y / 2) * y ^ 3 *
      physicalCurvaturePolynomial (1 / A) y / sourceNormalization A := by
  unfold actualPhysicalKernel
  rw [actualPhysicalWeight_second_eq_profile hA ⟨hy0, hy2⟩]
  exact physicalProfile_second A y

private def tensorCoeff (i j : ℕ) : ℝ :=
  match i, j with
  | 0, 0 => 24576
  | 0, 1 => 24576
  | 0, 2 => 24576
  | 0, 3 => 24576
  | 0, 4 => 24576
  | 0, 5 => 24576
  | 0, 6 => 24576
  | 0, 7 => 24576
  | 0, 8 => 24576
  | 1, 0 => (168960 / 7)
  | 1, 1 => (15367680 / 637)
  | 1, 2 => (15360000 / 637)
  | 1, 3 => (15352320 / 637)
  | 1, 4 => (15344640 / 637)
  | 1, 5 => (15336960 / 637)
  | 1, 6 => (15329280 / 637)
  | 1, 7 => (2188800 / 91)
  | 1, 8 => (15313920 / 637)
  | 2, 0 => (10781184 / 455)
  | 2, 1 => (980104704 / 41405)
  | 2, 2 => (623700791808 / 26374985)
  | 2, 3 => (623075179008 / 26374985)
  | 2, 4 => (622449858048 / 26374985)
  | 2, 5 => (621824828928 / 26374985)
  | 2, 6 => (621200091648 / 26374985)
  | 2, 7 => (88653663744 / 3767855)
  | 2, 8 => (88564498944 / 3767855)
  | 3, 0 => (2115712 / 91)
  | 3, 1 => (192239520 / 8281)
  | 3, 2 => (122271843648 / 5274997)
  | 3, 3 => (11109942994144 / 480024727)
  | 3, 4 => (11093163915264 / 480024727)
  | 3, 5 => (11076400528224 / 480024727)
  | 3, 6 => (11059652825920 / 480024727)
  | 3, 7 => (1577560114464 / 68574961)
  | 3, 8 => (1575172063872 / 68574961)
  | 4, 0 => (798848448 / 35035)
  | 4, 1 => (72548599488 / 3188185)
  | 4, 2 => (46120198835136 / 2030873845)
  | 4, 3 => (4188463438286016 / 184809519895)
  | 4, 4 => (76076012532403776 / 3363533262089)
  | 4, 5 => (34510094082363456 / 1528878755495)
  | 4, 6 => (378843088634671296 / 16817666310445)
  | 4, 7 => (54010888981027008 / 2402523758635)
  | 4, 8 => (53901490946163648 / 2402523758635)
  | 5, 0 => (783058876 / 35035)
  | 5, 1 => (5467546902 / 245245)
  | 5, 2 => (45162153220152 / 2030873845)
  | 5, 3 => (315334358825074 / 14216116915)
  | 5, 4 => (372095080170426108 / 16817666310445)
  | 5, 5 => (689281151812525938 / 31232808862255)
  | 5, 6 => (4812723134360185456 / 218629662035785)
  | 5, 7 => (685785889404921498 / 31232808862255)
  | 5, 8 => (684043186534330908 / 31232808862255)
  | 6, 0 => (20714131514 / 945945)
  | 6, 1 => (144557237278 / 6621615)
  | 6, 2 => (170489927580694 / 7833370545)
  | 6, 3 => (108270806223174038 / 4989857037165)
  | 6, 4 => (1403223997480932274 / 64868141483145)
  | 6, 5 => (127303323569005342414 / 5903000874966195)
  | 6, 6 => (888399270393985419878 / 41321006124763365)
  | 6, 7 => (126525955848704858674 / 5903000874966195)
  | 6, 8 => (11467149544837791914 / 536636443178745)
  | 7, 0 => (2897684606 / 135135)
  | 7, 1 => (93421779163 / 4372368)
  | 7, 2 => (1334188169531501 / 62666964360)
  | 7, 3 => (48390967960712257 / 2281077502704)
  | 7, 4 => (9141324826419317237 / 432454276554300)
  | 7, 5 => (284188988720627910223 / 13492573428494160)
  | 7, 6 => (991100359585277654641 / 47224006999729560)
  | 7, 7 => (3178968368432271099277 / 152016327294367536)
  | 7, 8 => (77132383425214836547 / 3701696281518690)
  | 8, 0 => (405139352 / 19305)
  | 8, 1 => (514035439087 / 24594570)
  | 8, 2 => (25109670234358421 / 1206339063930)
  | 8, 3 => (1137807463100913961 / 54888427408815)
  | 8, 4 => (9374161601464846919 / 454076990382015)
  | 8, 5 => (2670004510603495531601 / 129866019249256290)
  | 8, 6 => (18613246649024772838853 / 909062134744794030)
  | 8, 7 => (223764643782540086325226 / 10973678626562156505)
  | 8, 8 => (20278792340546982218863582 / 998604755017156241955)
  | 9, 0 => (924690176 / 45045)
  | 9, 1 => (335031547021 / 16396380)
  | 9, 2 => (817847331284674 / 40211302131)
  | 9, 3 => (1693246740633274501 / 83639508432480)
  | 9, 4 => (122000039783239453889 / 6054359871760200)
  | 9, 5 => (6946039544075371467271 / 346309384664683440)
  | 9, 6 => (230459984725093942835 / 11543646155489448)
  | 9, 7 => (775336158079312979177153 / 39017524005554334240)
  | 9, 8 => (798040328855402019306323 / 40347666869380050180)
  | 10, 0 => (129143132 / 6435)
  | 10, 1 => (1113468769 / 55770)
  | 10, 2 => (7986898215230527 / 402113021310)
  | 10, 3 => (5784424077434275751 / 292738279513680)
  | 10, 4 => (1890997425109207758391 / 96197051295745400)
  | 10, 5 => (3144309542324543244151 / 160786500022888740)
  | 10, 6 => (4865811876076714661247 / 250112333368938040)
  | 10, 7 => (1636117393566948104429737 / 84537968678701057520)
  | 10, 8 => (2019737002004004857451223 / 104903933860388130468)
  | 11, 0 => (562082356 / 28665)
  | 11, 1 => (406864742813 / 20868120)
  | 11, 2 => (28924939524827 / 1492070580)
  | 11, 3 => (1025920968880249259 / 53225141729760)
  | 11, 4 => (188551626662036969528 / 9838334791610325)
  | 11, 5 => (39703443304186946000467 / 2083580430048673920)
  | 11, 6 => (9211105938253303906867 / 486168767011357248)
  | 11, 7 => (165455117790015999594689 / 8783165577007902080)
  | 11, 8 => (275074887159304190846874829 / 14686550740454338265520)
  | 12, 0 => (548871896 / 28665)
  | 12, 1 => (99271040891 / 5217030)
  | 12, 2 => (691245210347779 / 36555729210)
  | 12, 3 => (6411262983565337 / 341186805960)
  | 12, 4 => (244953474702366525527 / 13117779722147100)
  | 12, 5 => (7088332787552416045957 / 381989745508923552)
  | 12, 6 => (739604811542800572710771 / 40108923278436972960)
  | 12, 7 => (443600397018310998215485 / 24208600121628030108)
  | 12, 8 => (401138206029289338028851181 / 22029826110681507398280)
  | 13, 0 => (41203844 / 2205)
  | 13, 1 => (4965428443 / 267540)
  | 13, 2 => (25917063569849 / 1405989585)
  | 13, 3 => (8328506869617159 / 454915741280)
  | 13, 4 => (12231823149629767637 / 672706652417800)
  | 13, 5 => (81636905575654575941 / 4520588704247616)
  | 13, 6 => (27668271583745156434141 / 1542650895324498960)
  | 13, 7 => (4717672054260039696302711 / 264846223552853662720)
  | 13, 8 => (43605905177655017125969961 / 2464875648747581247360)
  | 14, 0 => (5740922 / 315)
  | 14, 1 => (1037164363 / 57330)
  | 14, 2 => (554916006209 / 30900870)
  | 14, 3 => (1737672635572201 / 97481944560)
  | 14, 4 => (1700415320738150207 / 96100950345400)
  | 14, 5 => (368627296061788166107 / 20988447555435360)
  | 14, 6 => (7683921408227217052379 / 440757398664142560)
  | 14, 7 => (2946211732226770684829567 / 170258286569691640320)
  | 14, 8 => (1131000812889208863173615767 / 65847392330828241893760)
  | _, _ => 0

private def rowPolynomial (j : ℕ) (y : ℝ) : ℝ :=
  match j with
  | 0 => (24576) +
      (-6144 * y) +
      ((-1536 / 5) * y ^ 2) +
      ((512 / 5) * y ^ 3) +
      ((-64 / 35) * y ^ 4) +
      ((-8 / 35) * y ^ 5) +
      ((2 / 315) * y ^ 6)
  | 1 => (24576) +
      ((-574464 / 91) * y) +
      ((-124416 / 455) * y ^ 2) +
      ((47232 / 455) * y ^ 3) +
      ((-7104 / 3185) * y ^ 4) +
      ((-708 / 3185) * y ^ 5) +
      ((202 / 28665) * y ^ 6) +
      ((-1 / 57330) * y ^ 7)
  | 2 => (24576) +
      ((-589824 / 91) * y) +
      ((-69176832 / 289835) * y ^ 2) +
      ((30445824 / 289835) * y ^ 3) +
      ((-5352768 / 2028845) * y ^ 4) +
      ((-435216 / 2028845) * y ^ 5) +
      ((141034 / 18259605) * y ^ 6) +
      ((-15 / 405769) * y ^ 7) +
      ((19 / 401711310) * y ^ 8)
  | 3 => (24576) +
      ((-605184 / 91) * y) +
      ((-58808832 / 289835) * y ^ 2) +
      ((2798674304 / 26374985) * y ^ 3) +
      ((-563370688 / 184624895) * y ^ 4) +
      ((-37887596 / 184624895) * y ^ 5) +
      ((13915394 / 1661624055) * y ^ 6) +
      ((-21603 / 369249790) * y ^ 7) +
      ((601 / 4061747690) * y ^ 8) +
      ((-37 / 292445833680) * y ^ 9)
  | 4 => (24576) +
      ((-620544 / 91) * y) +
      ((-48148992 / 289835) * y ^ 2) +
      ((2822068224 / 26374985) * y ^ 3) +
      ((-58281587904 / 16800865445) * y ^ 4) +
      ((-3265591944 / 16800865445) * y ^ 5) +
      ((1359922342 / 151207789005) * y ^ 6) +
      ((-61974418 / 756038945025) * y ^ 7) +
      ((77587 / 252012981675) * y ^ 8) +
      ((-1583 / 3024155780100) * y ^ 9) +
      ((289 / 864908553108600) * y ^ 10)
  | 5 => (24576) +
      ((-635904 / 91) * y) +
      ((-37197312 / 289835) * y ^ 2) +
      ((2840609664 / 26374985) * y ^ 3) +
      ((-65357020608 / 16800865445) * y ^ 4) +
      ((-39743532228 / 218411250785) * y ^ 5) +
      ((2689018846 / 280814465295) * y ^ 6) +
      ((-140567611 / 1310467504710) * y ^ 7) +
      ((11516303 / 21622713827715) * y ^ 8) +
      ((-233773 / 172981710621720) * y ^ 9) +
      ((1289 / 749587412694120) * y ^ 10) +
      ((-1 / 1144824412114656) * y ^ 11)
  | 6 => (24576) +
      ((-651264 / 91) * y) +
      ((-25953792 / 289835) * y ^ 2) +
      ((2854156544 / 26374985) * y ^ 3) +
      ((-72478769728 / 16800865445) * y ^ 4) +
      ((-36690527648 / 218411250785) * y ^ 5) +
      ((139183587974 / 13759908799455) * y ^ 6) +
      ((-41053595 / 305775751099) * y ^ 7) +
      ((27830819 / 33635332620890) * y ^ 8) +
      ((-1687349 / 605435987176020) * y ^ 9) +
      ((27829 / 5247111888858840) * y ^ 10) +
      ((-79 / 14691913288804752) * y ^ 11) +
      ((1 / 440757398664142560) * y ^ 12)
  | 7 => (24576) +
      ((-95232 / 13) * y) +
      ((-2059776 / 41405) * y ^ 2) +
      ((408938112 / 3767855) * y ^ 3) +
      ((-11376018624 / 2400123635) * y ^ 4) +
      ((-679417812 / 4457372465) * y ^ 5) +
      ((1603741534 / 151207789005) * y ^ 6) +
      ((-108176228989 / 664407024887970) * y ^ 7) +
      ((2916606367 / 2436159091255890) * y ^ 8) +
      ((-293599573 / 58467818190141360) * y ^ 9) +
      ((4829611 / 380040818235918840) * y ^ 10) +
      ((-1955 / 101344218196245024) * y ^ 11) +
      ((173 / 10641142910605727520) * y ^ 12) +
      ((-1 / 170258286569691640320) * y ^ 13)
  | 8 => (24576) +
      ((-681984 / 91) * y) +
      ((-370176 / 41405) * y ^ 2) +
      ((409385472 / 3767855) * y ^ 3) +
      ((-12400279104 / 2400123635) * y ^ 4) +
      ((-4220712264 / 31201607255) * y ^ 5) +
      ((21707810182 / 1965701257065) * y ^ 6) +
      ((-21346410172 / 110734504147995) * y ^ 7) +
      ((547477517282 / 332535715956428985) * y ^ 8) +
      ((-1098717625 / 133014286382571594) * y ^ 9) +
      ((150269767 / 5763952409911435740) * y ^ 10) +
      ((-1275317 / 24208600121628030108) * y ^ 11) +
      ((16103 / 242086001216280301080) * y ^ 12) +
      ((-31 / 645562669910080802880) * y ^ 13) +
      ((1 / 65847392330828241893760) * y ^ 14)
  | _ => 0

private def yWeight (i : ℕ) (y : ℝ) : ℝ :=
  (Nat.choose 14 i : ℝ) * y ^ i * (1 - y) ^ (14 - i)
private def tWeight (j : ℕ) (t : ℝ) : ℝ :=
  (Nat.choose 8 j : ℝ) * t ^ j * (1 - t) ^ (8 - j)

private theorem yWeight_nonneg (i : ℕ) {y : ℝ} (hy : y ∈ Icc 0 1) : 0 ≤ yWeight i y := by
  unfold yWeight
  have h1 : 0 ≤ 1 - y := by linarith [hy.2]
  have h0 := hy.1
  positivity
private theorem tWeight_nonneg (j : ℕ) {t : ℝ} (ht : t ∈ Icc 0 1) : 0 ≤ tWeight j t := by
  unfold tWeight
  have h1 : 0 ≤ 1 - t := by linarith [ht.2]
  have h0 := ht.1
  positivity

private theorem tensorCoeff_bounds (i j : ℕ) (hi : i < 15) (hj : j < 9) :
    1 ≤ tensorCoeff i j ∧ tensorCoeff i j ≤ 24576 := by
  interval_cases i <;> interval_cases j <;> norm_num [tensorCoeff]

private theorem yWeight_sum (y : ℝ) : (∑ i ∈ Finset.range 15, yWeight i y) = 1 := by
  norm_num [yWeight, Finset.sum_range_succ]
  ring
private theorem tWeight_sum (t : ℝ) : (∑ j ∈ Finset.range 9, tWeight j t) = 1 := by
  norm_num [tWeight, Finset.sum_range_succ]
  ring

private theorem row_eq_bernstein (j : ℕ) (hj : j < 9) (y : ℝ) :
    rowPolynomial j y = ∑ i ∈ Finset.range 15, tensorCoeff i j * yWeight i y := by
  interval_cases j <;> norm_num [rowPolynomial, tensorCoeff, yWeight, Finset.sum_range_succ] <;> ring

private theorem physicalCurvature_eq_rows (y t : ℝ) :
    physicalCurvaturePolynomial (t / 91) y =
      ∑ j ∈ Finset.range 9, rowPolynomial j y * tWeight j t := by
  norm_num [physicalCurvaturePolynomial, rowPolynomial, tWeight, Finset.sum_range_succ]
  ring

private theorem row_bounds (j : ℕ) (hj : j < 9) {y : ℝ} (hy : y ∈ Icc 0 1) :
    1 ≤ rowPolynomial j y ∧ rowPolynomial j y ≤ 24576 := by
  rw [row_eq_bernstein j hj]
  constructor
  · rw [← yWeight_sum y]
    apply Finset.sum_le_sum
    intro i hi
    simpa only [one_mul] using mul_le_mul_of_nonneg_right
      (tensorCoeff_bounds i j (Finset.mem_range.mp hi) hj).1 (yWeight_nonneg i hy)
  · calc
      _ ≤ ∑ i ∈ Finset.range 15, 24576 * yWeight i y := by
        apply Finset.sum_le_sum
        intro i hi
        exact mul_le_mul_of_nonneg_right
          (tensorCoeff_bounds i j (Finset.mem_range.mp hi) hj).2 (yWeight_nonneg i hy)
      _ = 24576 := by rw [← Finset.mul_sum, yWeight_sum]; ring

private theorem tensor_bounds {y t : ℝ} (hy : y ∈ Icc 0 1) (ht : t ∈ Icc 0 1) :
    1 ≤ physicalCurvaturePolynomial (t / 91) y ∧
      physicalCurvaturePolynomial (t / 91) y ≤ 24576 := by
  rw [physicalCurvature_eq_rows]
  constructor
  · rw [← tWeight_sum t]
    apply Finset.sum_le_sum
    intro j hj
    simpa only [one_mul] using mul_le_mul_of_nonneg_right
      (row_bounds j (Finset.mem_range.mp hj) hy).1 (tWeight_nonneg j ht)
  · calc
      _ ≤ ∑ j ∈ Finset.range 9, 24576 * tWeight j t := by
        apply Finset.sum_le_sum
        intro j hj
        exact mul_le_mul_of_nonneg_right
          (row_bounds j (Finset.mem_range.mp hj) hy).2 (tWeight_nonneg j ht)
      _ = 24576 := by rw [← Finset.mul_sum, tWeight_sum]; ring

theorem actual_curvature_polynomial_bounds {A y : ℝ} (hA : 91 ≤ A)
    (hy0 : 0 ≤ y) (hy1 : y ≤ 1) :
    1 ≤ physicalCurvaturePolynomial (1 / A) y ∧
      physicalCurvaturePolynomial (1 / A) y ≤ 24576 := by
  have hAp : 0 < A := by linarith
  have ht : 91 / A ∈ Icc (0 : ℝ) 1 := by
    constructor
    · positivity
    · exact (div_le_one hAp).mpr hA
  have he : (91 / A) / 91 = (1 : ℝ) / A := by field_simp
  simpa only [he] using tensor_bounds ⟨hy0, hy1⟩ ht

theorem actualPhysicalKernel_positive_le {A y : ℝ} (hA : 91 ≤ A)
    (hy0 : 0 < y) (hy1 : y ≤ 1) :
    0 < actualPhysicalKernel A y ∧ actualPhysicalKernel A y ≤ 656370 * y ^ 3 := by
  have hAp : 0 < A := by linarith
  have hZp : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hZ : (4096 / 109395 : ℝ) ≤ sourceNormalization A := by
    have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
    have h4 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
    unfold sourceNormalization
    norm_num at *
    linarith
  have hR := actual_curvature_polynomial_bounds hA hy0.le hy1
  rw [actualPhysicalKernel_eq_polynomial hAp hy0.le (by linarith)]
  constructor
  · have hp : 0 < physicalCurvaturePolynomial (1 / A) y := by linarith [hR.1]
    positivity
  · have he : Real.exp (-y / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
    have hm : Real.exp (-y / 2) * y ^ 3 * physicalCurvaturePolynomial (1 / A) y ≤
        24576 * y ^ 3 := by
      have hh := mul_le_mul he hR.2 (by linarith [hR.1]) (by norm_num : (0 : ℝ) ≤ 1)
      have hx := mul_le_mul_of_nonneg_right hh (by positivity : 0 ≤ y ^ 3)
      nlinarith
    calc
      _ ≤ 24576 * y ^ 3 / sourceNormalization A :=
        div_le_div_of_nonneg_right hm hZp.le
      _ ≤ 24576 * y ^ 3 / (4096 / 109395 : ℝ) :=
        div_le_div_of_nonneg_left (by positivity) (by norm_num) hZ
      _ = 656370 * y ^ 3 := by ring


/-- Literal scaled/reflected original Peano primitive; no polynomial defines the source. -/
def actualPhysicalPrimitive (A y : ℝ) : ℝ :=
  A ^ 9 * Real.exp (-A) * SourcePositivePeanoPrimitive.sourcePeanoPrimitive A (2 * A - y)

theorem actualPhysicalPrimitive_second_eq_weight {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (actualPhysicalPrimitive A)) y = actualPhysicalWeight A y := by
  have hd : deriv (actualPhysicalPrimitive A) = fun y =>
      -(A ^ 9 * Real.exp (-A)) *
        deriv (SourcePositivePeanoPrimitive.sourcePeanoPrimitive A) (2 * A - y) := by
    funext y
    unfold actualPhysicalPrimitive
    rw [deriv_const_mul_field, deriv_comp_const_sub]
    ring
  rw [hd, deriv_const_mul_field, deriv_comp_const_sub,
    SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv hA]
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualPhysicalWeight
  calc
    _ = A ^ 9 * (Real.exp (-A) * Real.exp ((2 * A - y) / 2)) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [he]

theorem actualPhysicalPrimitive_fourth_eq_kernel {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (deriv (deriv (actualPhysicalPrimitive A)))) y = actualPhysicalKernel A y := by
  have hd : deriv (deriv (actualPhysicalPrimitive A)) = actualPhysicalWeight A :=
    funext (actualPhysicalPrimitive_second_eq_weight hA)
  rw [hd]
  rfl

/-- Fourth derivative of the original source primitive on the actual positive birth cell. -/
theorem actualPhysicalPrimitive_fourth_positive_le {A y : ℝ} (hA : 91 ≤ A)
    (hy0 : 0 < y) (hy1 : y ≤ 1) :
    0 < deriv (deriv (deriv (deriv (actualPhysicalPrimitive A)))) y ∧
      deriv (deriv (deriv (deriv (actualPhysicalPrimitive A)))) y ≤ 656370 * y ^ 3 := by
  rw [actualPhysicalPrimitive_fourth_eq_kernel (by linarith : 0 < A)]
  exact actualPhysicalKernel_positive_le hA hy0 hy1


end RH16PhysicalBirthKernel
