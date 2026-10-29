import Surface.Prismatic.Comparisons

namespace Surface.Prismatic

universe u

/-!
What is formalized:
A first Prop-valued theorem-object seed for prismatic comparison infrastructure.

What is certificate-gated:
The Hodge-Tate comparison content is supplied by an explicit
`HodgeTateComparisonCertificate`.

What is not claimed:
This is not a proof of Bhatt--Scholze prismatic comparison theorems. It is a
typed theorem-facing object that downstream modules may require instead of
dashboard readiness booleans.

Primary mathematical source:
Bhatt--Scholze, Prisms and Prismatic Cohomology, comparison-theorem interface.
-/

/--
First major-proof seed for prismatic theorem infrastructure.

The object packages a bounded prism, a formal scheme, its prismatic cohomology
interface, and a Hodge-Tate comparison certificate.  Possessing such a seed is a
Prop-valued theorem-facing input; it does not make the current repository
comparison-ready by itself.
-/
structure HodgeTateTheoremSeed where
  p : Nat
  P : BoundedPrism.{u} p
  X : PadicFormalScheme
  C : PrismaticCohomology P X
  cohomologyAdmissible : C.admissibleForMajorProofInput
  hodgeTate : HodgeTateComparisonCertificate C
  hodgeTateCertified : hodgeTate.certifiedForMajorProof
  sourceBoundary : List String

/-- A Prop gate for downstream theorem-facing prismatic inputs. -/
def HasHodgeTateTheoremSeed : Prop :=
  Nonempty (HodgeTateTheoremSeed.{u})

/-- Current repository state: no Hodge-Tate theorem seed has been supplied. -/
def currentHodgeTateTheoremSeed? : Option (HodgeTateTheoremSeed.{u}) :=
  none

theorem currentHodgeTateTheoremSeed_absent :
    currentHodgeTateTheoremSeed?.isNone = true := by
  rfl

end Surface.Prismatic
