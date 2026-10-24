# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sha.Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1d77bddeb8ddb6ba3d5425b539bd321a5cabc70` · SHA-256 `cc5fc8c872209c72d06d67f167aeea9fb993a059ddfd4740e01547dca4dd2cc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TateShafarevichData.Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TateShafarevichData.Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd","mathematical_subject":"Computation.DataStructures","original_sha256":"94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Sha.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Statement


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TateShafarevichData.Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Sha

What is formalized:
Tate-Shafarevich finite Selmer bridge and order interfaces.

What is certificate-gated:
All declarations in this component remain theorem-facing interfaces or conditional
unpackers. They do not construct BSD, analytic continuation, Mordell-Weil finite
generation, Sha finiteness, automorphy, or local arithmetic geometry.

What is not claimed:
No theorem in this file proves the Birch and Swinnerton-Dyer conjecture.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/--
Typed Weil-Chatelet/Tate-Shafarevich data for theorem-facing BSD input.

The group carrier, torsor carrier, local places, and local-solubility predicate
are explicit data.  The Prop fields record the theorem obligations that would
identify this data with actual Weil-Chatelet cohomology and its locally trivial
subgroup.
-/
structure TateShafarevichData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  groupCarrier : Type u
  zero : groupCarrier
  add : groupCarrier → groupCarrier → groupCarrier
  neg : groupCarrier → groupCarrier
  Torsor : Type u
  torsorClass :
    Torsor → groupCarrier
  LocalPlace : Type u
  localSoluble :
    LocalPlace → Torsor → Prop
  locallyTrivialSubgroup :
    GaloisCohomology.FiniteSubgroup
      ({ zero := zero, add := add, neg := neg } :
        GaloisCohomology.FiniteAdditiveStructure groupCarrier)
  finiteCohomologyProblem :
    GaloisCohomology.FiniteSelmerProblem.{u, u, u}
  classToFiniteH1 :
    groupCarrier →
      GaloisCohomology.FiniteH1
        finiteCohomologyProblem.G
        finiteCohomologyProblem.A
        finiteCohomologyProblem.ρG
  locallyTrivial_iff_finiteRestrictionZero :
    ∀ x : groupCarrier,
      locallyTrivialSubgroup.carrier x ↔
        ∀ place : finiteCohomologyProblem.V,
          GaloisCohomology.resFiniteH1
            (finiteCohomologyProblem.ιv place)
            (classToFiniteH1 x) =
              GaloisCohomology.FiniteH1.zero
                (finiteCohomologyProblem.Gv place)
                finiteCohomologyProblem.A
                (finiteCohomologyProblem.ρv place)
  weilChateletTorsorsRepresented : Prop
  weilChateletTorsorsRepresentedCertified :
    weilChateletTorsorsRepresented
  localSolubilityControlsLocallyTriviality : Prop
  localSolubilityControlsLocallyTrivialityCertified :
    localSolubilityControlsLocallyTriviality
  compatibleWithBaseNumberField : Prop
  compatibleWithBaseNumberFieldCertified :
    compatibleWithBaseNumberField
  compatibleWithSmoothCurve : Prop
  compatibleWithSmoothCurveCertified :
    compatibleWithSmoothCurve
  boundary : List String

namespace TateShafarevichData

/-- The additive structure carried by the chosen Weil-Chatelet/Sha carrier. -/
def additiveStructure
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M) :
    GaloisCohomology.FiniteAdditiveStructure D.groupCarrier where
  zero := D.zero
  add := D.add
  neg := D.neg

/-- Locally trivial classes are membership in the constructed subgroup. -/
def locallyTrivial
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M)
    (x : D.groupCarrier) : Prop :=
  D.locallyTrivialSubgroup.carrier x

/--
Finite restriction kernel for the chosen Sha carrier.

This is the constructed finite-cohomology test used by the Sha interface: a
class lies in the kernel exactly when its finite `H1` realization restricts to
zero at every finite local problem in `finiteCohomologyProblem`.
-/
def finiteRestrictionKernel
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M)
    (x : D.groupCarrier) : Prop :=
  ∀ place : D.finiteCohomologyProblem.V,
    GaloisCohomology.resFiniteH1
      (D.finiteCohomologyProblem.ιv place)
      (D.classToFiniteH1 x) =
        GaloisCohomology.FiniteH1.zero
          (D.finiteCohomologyProblem.Gv place)
          D.finiteCohomologyProblem.A
          (D.finiteCohomologyProblem.ρv place)

theorem locallyTrivial_iff_finiteRestrictionKernel
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M)
    (x : D.groupCarrier) :
    D.locallyTrivial x ↔ D.finiteRestrictionKernel x :=
  D.locallyTrivial_iff_finiteRestrictionZero x

theorem locallyTrivial_zero
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M) :
    D.locallyTrivial D.zero :=
  D.locallyTrivialSubgroup.zero_mem

theorem finiteRestrictionKernel_zero
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M) :
    D.finiteRestrictionKernel D.zero :=
  (D.locallyTrivial_iff_finiteRestrictionKernel D.zero).1
    D.locallyTrivial_zero

theorem locallyTrivial_add
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M)
    {x y : D.groupCarrier}
    (hx : D.locallyTrivial x)
    (hy : D.locallyTrivial y) :
    D.locallyTrivial (D.add x y) :=
  D.locallyTrivialSubgroup.add_mem hx hy

theorem finiteRestrictionKernel_add
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M)
    {x y : D.groupCarrier}
    (hx : D.finiteRestrictionKernel x)
    (hy : D.finiteRestrictionKernel y) :
    D.finiteRestrictionKernel (D.add x y) := by
  apply (D.locallyTrivial_iff_finiteRestrictionKernel (D.add x y)).1
  exact
    D.locallyTrivial_add
      ((D.locallyTrivial_iff_finiteRestrictionKernel x).2 hx)
      ((D.locallyTrivial_iff_finiteRestrictionKernel y).2 hy)

theorem locallyTrivial_neg
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M)
    {x : D.groupCarrier}
    (hx : D.locallyTrivial x) :
    D.locallyTrivial (D.neg x) :=
  D.locallyTrivialSubgroup.neg_mem hx

theorem finiteRestrictionKernel_neg
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : TateShafarevichData M)
    {x : D.groupCarrier}
    (hx : D.finiteRestrictionKernel x) :
    D.finiteRestrictionKernel (D.neg x) := by
  apply (D.locallyTrivial_iff_finiteRestrictionKernel (D.neg x)).1
  exact
    D.locallyTrivial_neg
      ((D.locallyTrivial_iff_finiteRestrictionKernel x).2 hx)

end TateShafarevichData

/--
Tate-Shafarevich group interface for theorem-facing BSD data.

This remains certificate-gated: it does not prove Weil-Chatelet cohomology or
Sha finiteness.  It now carries typed torsor and local-solubility data rather
than bare "specified" placeholders.
-/
structure TateShafarevichGroupInterface
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  shaData :
    TateShafarevichData M
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Tate-Shafarevich group-interface quality required by theorem-facing BSD input. -/
def TateShafarevichGroupInterface.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : TateShafarevichGroupInterface M) :
    Prop :=
  T.shaData.weilChateletTorsorsRepresented ∧
  T.shaData.locallyTrivial T.shaData.zero ∧
  (∀ x y : T.shaData.groupCarrier,
    T.shaData.locallyTrivial x →
    T.shaData.locallyTrivial y →
      T.shaData.locallyTrivial (T.shaData.add x y)) ∧
  (∀ x : T.shaData.groupCarrier,
    T.shaData.locallyTrivial x →
      T.shaData.locallyTrivial (T.shaData.neg x)) ∧
  (∀ x : T.shaData.groupCarrier,
    T.shaData.locallyTrivial x ↔
      ∀ place : T.shaData.finiteCohomologyProblem.V,
        GaloisCohomology.resFiniteH1
          (T.shaData.finiteCohomologyProblem.ιv place)
          (T.shaData.classToFiniteH1 x) =
            GaloisCohomology.FiniteH1.zero
              (T.shaData.finiteCohomologyProblem.Gv place)
              T.shaData.finiteCohomologyProblem.A
              (T.shaData.finiteCohomologyProblem.ρv place)) ∧
  T.shaData.localSolubilityControlsLocallyTriviality ∧
  T.shaData.compatibleWithBaseNumberField ∧
  T.shaData.compatibleWithSmoothCurve ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem TateShafarevichGroupInterface.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : TateShafarevichGroupInterface M)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.shaData.weilChateletTorsorsRepresentedCertified
  · constructor
    · exact T.shaData.locallyTrivial_zero
    · constructor
      · intro x y hx hy
        exact T.shaData.locallyTrivial_add hx hy
      · constructor
        · intro x hx
          exact T.shaData.locallyTrivial_neg hx
        · constructor
          · exact T.shaData.locallyTrivial_iff_finiteRestrictionZero
          · constructor
            · exact T.shaData.localSolubilityControlsLocallyTrivialityCertified
            · constructor
              · exact T.shaData.compatibleWithBaseNumberFieldCertified
              · constructor
                · exact T.shaData.compatibleWithSmoothCurveCertified
                · exact hsource

theorem TateShafarevichGroupInterface.locallyTrivial_iff_finiteRestrictionZero
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : TateShafarevichGroupInterface M)
    (x : T.shaData.groupCarrier) :
    T.shaData.locallyTrivial x ↔
      ∀ place : T.shaData.finiteCohomologyProblem.V,
        GaloisCohomology.resFiniteH1
          (T.shaData.finiteCohomologyProblem.ιv place)
          (T.shaData.classToFiniteH1 x) =
            GaloisCohomology.FiniteH1.zero
              (T.shaData.finiteCohomologyProblem.Gv place)
              T.shaData.finiteCohomologyProblem.A
              (T.shaData.finiteCohomologyProblem.ρv place) :=
  T.shaData.locallyTrivial_iff_finiteRestrictionZero x

theorem TateShafarevichGroupInterface.locallyTrivial_iff_finiteRestrictionKernel
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : TateShafarevichGroupInterface M)
    (x : T.shaData.groupCarrier) :
    T.shaData.locallyTrivial x ↔
      T.shaData.finiteRestrictionKernel x :=
  T.shaData.locallyTrivial_iff_finiteRestrictionKernel x

/--
Finite Selmer/Sha exactness bridge.

This is the first theorem-facing bridge from the constructed finite Selmer
substrate to the Tate-Shafarevich interface.  It does not prove the arithmetic
Selmer exact sequence and does not construct Weil-Chatelet cohomology.  It
records a typed map from constructed finite Selmer classes to the chosen Sha
carrier, together with the exact compatibility predicates that downstream BSD
assembly must consume instead of bare placeholder gates.
-/
structure FiniteSelmerShaExactnessBridge
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n)
    (T : TateShafarevichGroupInterface M) where
  selmerClassToSha :
    (c :
      GaloisCohomology.FiniteH1
        K.finiteSelmerProblem.G
        K.finiteSelmerProblem.A
        K.finiteSelmerProblem.ρG) →
      K.finiteSelmerProblem.selmerSubgroup.carrier c →
        T.shaData.groupCarrier
  finiteRestrictionKernelMatchesSelmerObstruction :
    ∀ c hc,
      T.shaData.locallyTrivial (selmerClassToSha c hc) ↔
        K.constructedSelmerExactness.locallyTrivial c hc
  kernel_iff_globalKummerImage :
    ∀ c hc,
      T.shaData.locallyTrivial (selmerClassToSha c hc) ↔
        ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
          K.finiteKummerSelmer.globalKummer.toH1 x = c
  compatibleWithFiniteRestrictionKernel :
    ∀ c hc,
      T.shaData.finiteRestrictionKernel (selmerClassToSha c hc) ↔
        K.constructedSelmerExactness.locallyTrivial c hc
  boundary : List String

namespace FiniteSelmerShaExactnessBridge

theorem kernel_iff_globalKummerImage_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {K : KummerSelmerExactSequenceCertificate M n}
    {T : TateShafarevichGroupInterface M}
    (B : FiniteSelmerShaExactnessBridge K T)
    (c :
      GaloisCohomology.FiniteH1
        K.finiteSelmerProblem.G
        K.finiteSelmerProblem.A
        K.finiteSelmerProblem.ρG)
    (hc : K.finiteSelmerProblem.selmerSubgroup.carrier c) :
    T.shaData.locallyTrivial (B.selmerClassToSha c hc) ↔
      ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
        K.finiteKummerSelmer.globalKummer.toH1 x = c :=
  B.kernel_iff_globalKummerImage c hc

theorem finiteRestrictionKernel_iff_globalKummerImage
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {K : KummerSelmerExactSequenceCertificate M n}
    {T : TateShafarevichGroupInterface M}
    (B : FiniteSelmerShaExactnessBridge K T)
    (c :
      GaloisCohomology.FiniteH1
        K.finiteSelmerProblem.G
        K.finiteSelmerProblem.A
        K.finiteSelmerProblem.ρG)
    (hc : K.finiteSelmerProblem.selmerSubgroup.carrier c) :
    T.shaData.finiteRestrictionKernel (B.selmerClassToSha c hc) ↔
      ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
        K.finiteKummerSelmer.globalKummer.toH1 x = c := by
  exact
    (B.compatibleWithFiniteRestrictionKernel c hc).trans
      ((B.finiteRestrictionKernelMatchesSelmerObstruction c hc).symm.trans
        (B.kernel_iff_globalKummerImage c hc))

end FiniteSelmerShaExactnessBridge

/--
The BSD-facing Selmer/Sha bridge certificate.

This packages the constructed finite Selmer exactness bridge together with the
quality gates for the Kummer/Selmer and Tate-Shafarevich interfaces.  It is
still a conditional input, not a proof of BSD or Sha finiteness.
-/
structure TateShafarevichSelmerBridgeCertificate
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n)
    (T : TateShafarevichGroupInterface M) where
  kummerSelmerCertified :
    K.certifiedForBSD
  shaInterfaceCertified :
    T.certifiedForBSD
  bridge :
    FiniteSelmerShaExactnessBridge K T
  boundary : List String

def TateShafarevichSelmerBridgeCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {K : KummerSelmerExactSequenceCertificate M n}
    {T : TateShafarevichGroupInterface M}
    (B : TateShafarevichSelmerBridgeCertificate K T) :
    Prop :=
  K.certifiedForBSD ∧
  T.certifiedForBSD ∧
  ∀ c hc,
    T.shaData.locallyTrivial (B.bridge.selmerClassToSha c hc) ↔
      ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
        K.finiteKummerSelmer.globalKummer.toH1 x = c

theorem TateShafarevichSelmerBridgeCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {K : KummerSelmerExactSequenceCertificate M n}
    {T : TateShafarevichGroupInterface M}
    (B : TateShafarevichSelmerBridgeCertificate K T) :
    B.certifiedForBSD := by
  exact
    ⟨B.kummerSelmerCertified,
      B.shaInterfaceCertified,
      B.bridge.kernel_iff_globalKummerImage⟩

/--
The BSD-facing Selmer/Sha bridge also exposes the finite restriction-kernel
form of exactness.  This is the form future BSD assembly code should use when
it wants constructed finite cohomological data rather than the locally-trivial
predicate name.
-/
theorem TateShafarevichSelmerBridgeCertificate.finiteRestrictionKernel_iff_globalKummerImage
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {K : KummerSelmerExactSequenceCertificate M n}
    {T : TateShafarevichGroupInterface M}
    (B : TateShafarevichSelmerBridgeCertificate K T)
    (c :
      GaloisCohomology.FiniteH1
        K.finiteSelmerProblem.G
        K.finiteSelmerProblem.A
        K.finiteSelmerProblem.ρG)
    (hc : K.finiteSelmerProblem.selmerSubgroup.carrier c) :
    T.shaData.finiteRestrictionKernel (B.bridge.selmerClassToSha c hc) ↔
      ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
        K.finiteKummerSelmer.globalKummer.toH1 x = c :=
  B.bridge.finiteRestrictionKernel_iff_globalKummerImage c hc

/--
Finiteness and order certificate for the Tate-Shafarevich term in BSD.

This is still an interface certificate. It does not prove finiteness of
Tate-Shafarevich groups.
-/
structure TateShafarevichOrderData
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : TateShafarevichGroupInterface M) where
  order : Nat
  enumeratedElements : List T.shaData.groupCarrier
  enumeratesAllElements : Prop
  enumeratesAllElementsCertified :
    enumeratesAllElements
  order_eq_length :
    order = enumeratedElements.length
  boundary : List String

structure TateShafarevichFinitenessCertificate
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : TateShafarevichGroupInterface M) where
  groupCertified :
    T.certifiedForBSD
  finiteGroup : Prop
  finiteGroupCertified :
    finiteGroup
  orderData :
    TateShafarevichOrderData T
  orderPositive : Prop
  orderPositiveCertified :
    orderPositive
  orderCompatibleWithGroupInterface : Prop
  orderCompatibleWithGroupInterfaceCertified :
    orderCompatibleWithGroupInterface
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Tate-Shafarevich finiteness/order quality required by BSD theorem input. -/
def TateShafarevichFinitenessCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {T : TateShafarevichGroupInterface M}
    (F : TateShafarevichFinitenessCertificate T) :
    Prop :=
  T.certifiedForBSD ∧
  F.finiteGroup ∧
  F.orderData.enumeratesAllElements ∧
  F.orderPositive ∧
  F.orderCompatibleWithGroupInterface ∧
  F.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem TateShafarevichFinitenessCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {T : TateShafarevichGroupInterface M}
    (F : TateShafarevichFinitenessCertificate T)
    (hsource :
      F.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    F.certifiedForBSD := by
  constructor
  · exact F.groupCertified
  · constructor
    · exact F.finiteGroupCertified
    · constructor
      · exact F.orderData.enumeratesAllElementsCertified
      · constructor
        · exact F.orderPositiveCertified
        · constructor
          · exact F.orderCompatibleWithGroupInterfaceCertified
          · exact hsource

/--
Tate-Shafarevich component certificate for the BSD second part.

This certificate ties the Tate-Shafarevich group/order metadata to the
`sha` component of the BSD leading-coefficient identity.
-/
structure TateShafarevichComponentCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    {L : HasseWeilLFunction C.K.field C.E}
    (S : SecondPartStatement L M.MW) where
  groupInterface :
    TateShafarevichGroupInterface M
  groupInterfaceCertified :
    groupInterface.certifiedForBSD
  finiteness :
    TateShafarevichFinitenessCertificate groupInterface
  finitenessCertified :
    finiteness.certifiedForBSD
  finiteSelmerShaBridge :
    ∃ n : Nat,
      ∃ K : KummerSelmerExactSequenceCertificate M n,
        ∃ B : TateShafarevichSelmerBridgeCertificate K groupInterface,
          B.certifiedForBSD
  shaStatusSupplied :
    S.identityData.sha =
      BSDComponentStatus.suppliedByCertificate
  shaOrderMatchesSecondPart : Prop
  shaOrderMatchesSecondPartCertified :
    shaOrderMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Tate-Shafarevich component quality required by theorem-facing BSD input. -/
def TateShafarevichComponentCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TateShafarevichComponentCertificate M S) :
  Prop :=
  T.groupInterface.certifiedForBSD ∧
  T.finiteness.certifiedForBSD ∧
  (∃ n : Nat,
    ∃ K : KummerSelmerExactSequenceCertificate M n,
      ∃ B : TateShafarevichSelmerBridgeCertificate K T.groupInterface,
        B.certifiedForBSD) ∧
  S.identityData.sha =
    BSDComponentStatus.suppliedByCertificate ∧
  T.shaOrderMatchesSecondPart ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem TateShafarevichComponentCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TateShafarevichComponentCertificate M S)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.groupInterfaceCertified
  · constructor
    · exact T.finitenessCertified
    · constructor
      · exact T.finiteSelmerShaBridge
      · constructor
        · exact T.shaStatusSupplied
        · constructor
          · exact T.shaOrderMatchesSecondPartCertified
          · exact hsource

/--
The BSD-facing Tate-Shafarevich component exposes a theorem-grade finite
Selmer/Sha bridge, rather than only standalone group/order metadata.
-/
theorem TateShafarevichComponentCertificate.finiteSelmerShaBridge_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TateShafarevichComponentCertificate M S) :
    ∃ n : Nat,
      ∃ K : KummerSelmerExactSequenceCertificate M n,
        ∃ B : TateShafarevichSelmerBridgeCertificate K T.groupInterface,
          B.certifiedForBSD :=
  T.finiteSelmerShaBridge

/--
Any certified BSD Tate-Shafarevich component carries a constructed finite
Selmer exactness bridge through the already-built finite `H1`, restriction, and
Selmer substrate.
-/
theorem TateShafarevichComponentCertificate.certifiedForBSD_has_finiteSelmerShaBridge
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TateShafarevichComponentCertificate M S)
    (hT : T.certifiedForBSD) :
    ∃ n : Nat,
      ∃ K : KummerSelmerExactSequenceCertificate M n,
        ∃ B : TateShafarevichSelmerBridgeCertificate K T.groupInterface,
          B.certifiedForBSD := by
  exact hT.2.2.1

theorem TateShafarevichComponentCertificate.certifiedForBSD_has_finiteRestrictionKernelBridge
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TateShafarevichComponentCertificate M S)
    (hT : T.certifiedForBSD) :
    ∃ n : Nat,
      ∃ K : KummerSelmerExactSequenceCertificate M n,
        ∃ B : TateShafarevichSelmerBridgeCertificate K T.groupInterface,
          ∀ c
            (hc :
              K.finiteSelmerProblem.selmerSubgroup.carrier c),
            T.groupInterface.shaData.finiteRestrictionKernel
                (B.bridge.selmerClassToSha c hc) ↔
              ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
                K.finiteKummerSelmer.globalKummer.toH1 x = c := by
  rcases T.certifiedForBSD_has_finiteSelmerShaBridge hT with
    ⟨n, K, B, hB⟩
  exact
    ⟨n, K, B, fun c hc =>
      B.finiteRestrictionKernel_iff_globalKummerImage c hc⟩

end BSD
end EllipticCurve
end Surface.Arithmetic
```
