# Complete source: GRWTSK.Analysis.ComplexAnalysis.AnalyticCertificate.Variant3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9701dd440433145e254fbfcb8bf98f8ce13a10aa` · SHA-256 `3cf57d6ddb10b54c1f3842981085d01a3837216129344cb499a04d25c191298e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Set.Basic

set_option autoImplicit false

namespace Think.Analysis

universe u v w z

/-
Universal analytic certificate schema.

This file is pure mathematical scaffolding: it states the positive certificate
form for analyticity. Analyticity is represented by the existence of local or
cover-level certificate data whose clauses all hold. No specific analytic
function, estimate, continuation theorem, or external theorem is asserted here.
-/

/--
Predicate package for a local analytic certificate.

`admissibleNeighborhood U` says that `U` is a valid local analytic domain.
`analyticRepresentation U phi` says that `phi` is an analytic candidate on `U`.
`convergesOn U phi` records convergence when the representation is given
formally, for example by a power series.
`identifies F U phi` says that the representation equals the object on `U`.
-/
structure LocalAnalyticCertificatePredicates
    (X : Type u) (Y : Type v) (Rep : Type w) where
  admissibleNeighborhood : Set X → Prop
  analyticRepresentation : Set X → Rep → Prop
  convergesOn : Set X → Rep → Prop
  identifies : (X → Y) → Set X → Rep → Prop

/-- A local analytic certificate is a conjunction of all required clauses. -/
def IsLocalAnalyticCertificate
    {X : Type u} {Y : Type v} {Rep : Type w}
    (P : LocalAnalyticCertificatePredicates X Y Rep)
    (F : X → Y) (x : X) (U : Set X) (phi : Rep) : Prop :=
  x ∈ U ∧
    P.admissibleNeighborhood U ∧
      P.analyticRepresentation U phi ∧
        P.convergesOn U phi ∧
          P.identifies F U phi

/-- Existence form of the local positive analytic certificate. -/
def HasLocalAnalyticCertificate
    {X : Type u} {Y : Type v} {Rep : Type w}
    (P : LocalAnalyticCertificatePredicates X Y Rep)
    (F : X → Y) (x : X) : Prop :=
  ∃ (U : Set X) (phi : Rep),
    IsLocalAnalyticCertificate P F x U phi

theorem local_certificate_requires_membership
    {X : Type u} {Y : Type v} {Rep : Type w}
    {P : LocalAnalyticCertificatePredicates X Y Rep}
    {F : X → Y} {x : X} {U : Set X} {phi : Rep}
    (h : IsLocalAnalyticCertificate P F x U phi) :
    x ∈ U :=
  h.1

theorem local_certificate_requires_locality
    {X : Type u} {Y : Type v} {Rep : Type w}
    {P : LocalAnalyticCertificatePredicates X Y Rep}
    {F : X → Y} {x : X} {U : Set X} {phi : Rep}
    (h : IsLocalAnalyticCertificate P F x U phi) :
    P.admissibleNeighborhood U :=
  h.2.1

theorem local_certificate_requires_representation
    {X : Type u} {Y : Type v} {Rep : Type w}
    {P : LocalAnalyticCertificatePredicates X Y Rep}
    {F : X → Y} {x : X} {U : Set X} {phi : Rep}
    (h : IsLocalAnalyticCertificate P F x U phi) :
    P.analyticRepresentation U phi :=
  h.2.2.1

theorem local_certificate_requires_convergence
    {X : Type u} {Y : Type v} {Rep : Type w}
    {P : LocalAnalyticCertificatePredicates X Y Rep}
    {F : X → Y} {x : X} {U : Set X} {phi : Rep}
    (h : IsLocalAnalyticCertificate P F x U phi) :
    P.convergesOn U phi :=
  h.2.2.2.1

theorem local_certificate_requires_identification
    {X : Type u} {Y : Type v} {Rep : Type w}
    {P : LocalAnalyticCertificatePredicates X Y Rep}
    {F : X → Y} {x : X} {U : Set X} {phi : Rep}
    (h : IsLocalAnalyticCertificate P F x U phi) :
    P.identifies F U phi :=
  h.2.2.2.2

/--
A theorem schema saying that local analyticity is exactly positive certificate
existence for the selected analytic context.
-/
structure UniversalLocalAnalyticTheoremSchema
    (X : Type u) (Y : Type v) (Rep : Type w) where
  analyticAt : (X → Y) → X → Prop
  predicates : LocalAnalyticCertificatePredicates X Y Rep
  iffCertificate :
    ∀ (F : X → Y) (x : X),
      analyticAt F x ↔ HasLocalAnalyticCertificate predicates F x

theorem universal_local_analytic_iff_certificate
    {X : Type u} {Y : Type v} {Rep : Type w}
    (T : UniversalLocalAnalyticTheoremSchema X Y Rep)
    (F : X → Y) (x : X) :
    T.analyticAt F x ↔
      HasLocalAnalyticCertificate T.predicates F x :=
  T.iffCertificate F x

theorem positive_local_certificate_implies_analytic
    {X : Type u} {Y : Type v} {Rep : Type w}
    (T : UniversalLocalAnalyticTheoremSchema X Y Rep)
    {F : X → Y} {x : X} :
    HasLocalAnalyticCertificate T.predicates F x → T.analyticAt F x :=
  (T.iffCertificate F x).mpr

theorem analytic_implies_positive_local_certificate
    {X : Type u} {Y : Type v} {Rep : Type w}
    (T : UniversalLocalAnalyticTheoremSchema X Y Rep)
    {F : X → Y} {x : X} :
    T.analyticAt F x → HasLocalAnalyticCertificate T.predicates F x :=
  (T.iffCertificate F x).mp

/-- Predicate package for cover-level analytic certificates. -/
structure GlobalAnalyticCertificatePredicates
    (X : Type u) (Y : Type v) (Rep : Type w) (I : Type z) where
  admissibleNeighborhood : Set X → Prop
  covers : (I → Set X) → Set X → Prop
  analyticRepresentation : Set X → Rep → Prop
  convergesOn : Set X → Rep → Prop
  identifies : (X → Y) → Set X → Rep → Prop
  compatibleOnOverlaps : (I → Set X) → (I → Rep) → Prop

/-- Cover-level analytic certificate data. -/
structure GlobalAnalyticCertificateData
    (X : Type u) (Rep : Type w) (I : Type z) where
  U : I → Set X
  phi : I → Rep

/--
A global analytic certificate is a covering family of local representations,
where every local certificate clause holds and the representations are
compatible on overlaps.
-/
def IsGlobalAnalyticCertificate
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (P : GlobalAnalyticCertificatePredicates X Y Rep I)
    (F : X → Y) (S : Set X)
    (C : GlobalAnalyticCertificateData X Rep I) : Prop :=
  P.covers C.U S ∧
    (∀ i : I,
      P.admissibleNeighborhood (C.U i) ∧
        P.analyticRepresentation (C.U i) (C.phi i) ∧
          P.convergesOn (C.U i) (C.phi i) ∧
            P.identifies F (C.U i) (C.phi i)) ∧
      P.compatibleOnOverlaps C.U C.phi

/-- Existence form of the cover-level positive analytic certificate. -/
def HasGlobalAnalyticCertificate
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (P : GlobalAnalyticCertificatePredicates X Y Rep I)
    (F : X → Y) (S : Set X) : Prop :=
  ∃ C : GlobalAnalyticCertificateData X Rep I,
    IsGlobalAnalyticCertificate P F S C

theorem global_certificate_requires_cover
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) :
    P.covers C.U S :=
  h.1

theorem global_certificate_requires_all_local_clauses
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) (i : I) :
    P.admissibleNeighborhood (C.U i) ∧
      P.analyticRepresentation (C.U i) (C.phi i) ∧
        P.convergesOn (C.U i) (C.phi i) ∧
          P.identifies F (C.U i) (C.phi i) :=
  h.2.1 i

theorem global_certificate_requires_locality
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) (i : I) :
    P.admissibleNeighborhood (C.U i) :=
  (global_certificate_requires_all_local_clauses h i).1

theorem global_certificate_requires_representation
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) (i : I) :
    P.analyticRepresentation (C.U i) (C.phi i) :=
  (global_certificate_requires_all_local_clauses h i).2.1

theorem global_certificate_requires_convergence
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) (i : I) :
    P.convergesOn (C.U i) (C.phi i) :=
  (global_certificate_requires_all_local_clauses h i).2.2.1

theorem global_certificate_requires_identification
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) (i : I) :
    P.identifies F (C.U i) (C.phi i) :=
  (global_certificate_requires_all_local_clauses h i).2.2.2

theorem global_certificate_requires_compatibility
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    {P : GlobalAnalyticCertificatePredicates X Y Rep I}
    {F : X → Y} {S : Set X} {C : GlobalAnalyticCertificateData X Rep I}
    (h : IsGlobalAnalyticCertificate P F S C) :
    P.compatibleOnOverlaps C.U C.phi :=
  h.2.2

/--
A theorem schema saying that analyticity on a set is exactly positive
cover-certificate existence for the selected analytic context.
-/
structure UniversalGlobalAnalyticTheoremSchema
    (X : Type u) (Y : Type v) (Rep : Type w) (I : Type z) where
  analyticOn : (X → Y) → Set X → Prop
  predicates : GlobalAnalyticCertificatePredicates X Y Rep I
  iffCertificate :
    ∀ (F : X → Y) (S : Set X),
      analyticOn F S ↔ HasGlobalAnalyticCertificate predicates F S

theorem universal_global_analytic_iff_certificate
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (T : UniversalGlobalAnalyticTheoremSchema X Y Rep I)
    (F : X → Y) (S : Set X) :
    T.analyticOn F S ↔
      HasGlobalAnalyticCertificate T.predicates F S :=
  T.iffCertificate F S

theorem positive_global_certificate_implies_analytic
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (T : UniversalGlobalAnalyticTheoremSchema X Y Rep I)
    {F : X → Y} {S : Set X} :
    HasGlobalAnalyticCertificate T.predicates F S → T.analyticOn F S :=
  (T.iffCertificate F S).mpr

theorem analytic_implies_positive_global_certificate
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (T : UniversalGlobalAnalyticTheoremSchema X Y Rep I)
    {F : X → Y} {S : Set X} :
    T.analyticOn F S → HasGlobalAnalyticCertificate T.predicates F S :=
  (T.iffCertificate F S).mp

end Think.Analysis
```
