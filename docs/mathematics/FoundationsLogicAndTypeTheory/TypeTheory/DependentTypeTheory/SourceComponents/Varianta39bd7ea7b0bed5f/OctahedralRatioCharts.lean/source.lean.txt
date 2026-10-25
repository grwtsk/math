/-
OctahedralRatioCharts — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7
Organized SHA-256: 97a4dad0defab0ab44eb7cbac2ebdcea9c4e8e8289f04c46de4994c246ebea2d
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole finite angular chart and RatioSphere packages, chosen Props/certificates plus genuine membership/coverage/coordinate equality proofs. No analytic atlas or realization claim. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Cube.PrismaticGeometry.OctahedralChain
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SourceComponents.Varianta39bd7ea7b0bed5f.OctahedralDirectionShadowData

/-!
# A concrete octahedral ratio-sphere extension

The exact finite cells, incidence data, fundamental two-chain, and closedness
proof live in `Boolean.Cube.PrismaticGeometry.OctahedralChain`. This module
extends that lower-level substrate with a null-centered direction frame, exact
north/south ratio charts, and runtime-facing export records.

The export records contain only stable identifiers, dimensions, integer
incidence coefficients, exact angle ratios, and chart membership. They are
intended as the runtime serialization boundary and supply no analytic or
prismatic-comparison authority.
-/

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-! ## Null-centered frame -/

/-- North chart: four equatorial directions plus the positive z pole. -/
def octahedralNorthDirections :
    List OctahedralVertex :=
  [.x .positive, .x .negative, .y .positive, .y .negative, .z .positive]

/-- South chart: the same overlap plus the negative z pole. -/
def octahedralSouthDirections :
    List OctahedralVertex :=
  [.x .positive, .x .negative, .y .positive, .y .negative, .z .negative]

def OctahedralChartSound
    (directions : List OctahedralVertex)
    (coordinate : OctahedralVertex → AngleRatio) : Prop :=
  directions.Nodup ∧
    ∀ direction,
      direction ∈ directions →
        coordinate direction = octahedralDirectionFrame.angleOf direction

def octahedralNorthCoordinate : OctahedralVertex → AngleRatio :=
  octahedralDirectionFrame.angleOf

def octahedralSouthCoordinate : OctahedralVertex → AngleRatio :=
  octahedralDirectionFrame.angleOf

theorem octahedralNorthDirectionsNodup :
    octahedralNorthDirections.Nodup := by
  decide

theorem octahedralSouthDirectionsNodup :
    octahedralSouthDirections.Nodup := by
  decide

def octahedralNorthChart : AngularChart octahedralSphereShadow where
  chartLabel := "chart:north"
  chartDirections := octahedralNorthDirections
  angleCoordinate := octahedralNorthCoordinate
  chartSound :=
    OctahedralChartSound
      octahedralNorthDirections octahedralNorthCoordinate
  chartSoundProof := by
    exact ⟨octahedralNorthDirectionsNodup, fun _ _ => rfl⟩

def octahedralSouthChart : AngularChart octahedralSphereShadow where
  chartLabel := "chart:south"
  chartDirections := octahedralSouthDirections
  angleCoordinate := octahedralSouthCoordinate
  chartSound :=
    OctahedralChartSound
      octahedralSouthDirections octahedralSouthCoordinate
  chartSoundProof := by
    exact ⟨octahedralSouthDirectionsNodup, fun _ _ => rfl⟩

def octahedralCharts : List (AngularChart octahedralSphereShadow) :=
  [octahedralNorthChart, octahedralSouthChart]

def OctahedralChartCoverage : Prop :=
  ∀ direction : OctahedralVertex,
    ∃ chart,
      chart ∈ octahedralCharts ∧
        direction ∈ chart.chartDirections

theorem octahedralChartCoverageProof : OctahedralChartCoverage := by
  intro direction
  cases direction with
  | x sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _, List.Mem.head _⟩
      | negative =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _ (List.Mem.head _)⟩
  | y sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _ (List.Mem.head _))⟩
      | negative =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _ (List.Mem.head _)))⟩
  | z sign =>
      cases sign with
      | positive =>
          exact ⟨octahedralNorthChart,
            List.Mem.head _,
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _
                  (List.Mem.tail _ (List.Mem.head _))))⟩
      | negative =>
          exact ⟨octahedralSouthChart,
            List.Mem.tail _ (List.Mem.head _),
            List.Mem.tail _
              (List.Mem.tail _
                (List.Mem.tail _
                  (List.Mem.tail _ (List.Mem.head _))))⟩

theorem octahedralChartMembershipCases
    (chart : AngularChart octahedralSphereShadow)
    (membership : chart ∈ octahedralCharts) :
    chart = octahedralNorthChart ∨
      chart = octahedralSouthChart := by
  change chart ∈ [octahedralNorthChart, octahedralSouthChart] at membership
  cases membership with
  | head => exact Or.inl rfl
  | tail _ tailMembership =>
      cases tailMembership with
      | head => exact Or.inr rfl
      | tail _ impossible => cases impossible

/-- On the four-direction overlap, both charts use the same exact ratio. -/
def OctahedralRatioCompatibility : Prop :=
  ∀ first, first ∈ octahedralCharts →
  ∀ second, second ∈ octahedralCharts →
  ∀ direction,
    direction ∈ first.chartDirections →
    direction ∈ second.chartDirections →
      first.angleCoordinate direction =
        second.angleCoordinate direction

theorem octahedralRatioCompatibilityProof :
    OctahedralRatioCompatibility := by
  intro first firstMem second secondMem direction _ _
  have firstCases :
      first = octahedralNorthChart ∨
        first = octahedralSouthChart := by
    exact octahedralChartMembershipCases first firstMem
  have secondCases :
      second = octahedralNorthChart ∨
        second = octahedralSouthChart := by
    exact octahedralChartMembershipCases second secondMem
  rcases firstCases with rfl | rfl <;>
    rcases secondCases with rfl | rfl <;> rfl

/-- Concrete exact ratio atlas for the octahedral sphere. -/
def octahedralRatioSphere : RatioSphere octahedralSphereShadow where
  charts := octahedralCharts
  coversAngularDirections := OctahedralChartCoverage
  coversProof := octahedralChartCoverageProof
  ratioCompatibility := OctahedralRatioCompatibility
  ratioCompatibilityProof := octahedralRatioCompatibilityProof

theorem octahedralRatioSphereSound :
    OctahedralChartCoverage ∧ OctahedralRatioCompatibility :=
  ratioSphere_sound octahedralRatioSphere

/-! ## Export-only records for the runtime boundary -/

end PrismaticGeometry
end Cube
end Boolean
