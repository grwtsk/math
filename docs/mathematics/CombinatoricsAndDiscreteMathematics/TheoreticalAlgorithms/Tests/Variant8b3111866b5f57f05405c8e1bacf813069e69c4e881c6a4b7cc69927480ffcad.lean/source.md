# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tests.Variant8b3111866b5f57f05405c8e1bacf813069e69c4e881c6a4b7cc69927480ffcad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b4432b57e812f769d735af1ddad003c300785b3` · SHA-256 `ccb95f4db8fb85f41451ed2ccbba974abcedb549e91628fb0e5614affb24672a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToyTheory.Variant3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToyTheory.Variant3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0","mathematical_subject":"Computation.DataStructures","original_sha256":"3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/Tests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.SmoothFramedSurgery.Core
import Surface.SmoothFramedSurgery.SingleHandleComplex
import Surface.SmoothFramedSurgery.CollaredGluing
import Surface.SmoothFramedSurgery.AmbientIsotopyExtension
import Surface.SmoothFramedSurgery.TraceHomologyComparison
import Surface.SmoothFramedSurgery.TangentialExtension
import Surface.SmoothFramedSurgery.BeltReversal
import Surface.SmoothFramedSurgery.DisjointCommutation
import Surface.SmoothFramedSurgery.EulerCharacteristic
import Surface.SmoothFramedSurgery.GeometricApplications
import Surface.SmoothFramedSurgery.ReconstructionSpectral
import Surface.SmoothFramedSurgery.Scope

/-!
# Compile-time checks for the framed-surgery boundary

These examples exercise the unconditional arithmetic and the projection of
results from explicitly supplied smooth capabilities.  The toy model below is
only a logical fixture; it is not presented as a model of smooth manifolds.
All later geometric examples are universally parameterized by explicit
capability arguments; they check API composition without constructing mock
smooth, analytic, reconstruction, or spectral inhabitants.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToyTheory.Variant3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0

namespace Surface.SmoothFramedSurgery.Tests

open EulerCharacteristic

private def toyTheory : SmoothFramedSurgeryTheory where
  Manifold := Unit
  FramedEmbedding := fun _ _ _ => Unit
  FramedIsotopic := fun _ _ => True
  Disjoint := fun _ _ => True
  RelBoundaryDiffeomorphic := fun _ _ => True
  rel_refl := fun _ => trivial
  rel_symm := fun _ => trivial
  rel_trans := fun _ _ => trivial
  surgery := fun _ => ()
  Trace := fun _ _ => Unit
  TraceBoundaryRelative := fun _ => True
  framed_isotopy_invariant := fun _ _ _ => trivial

/-- Projection from an explicitly supplied framed-isotopy capability. -/
example :
    toyTheory.RelBoundaryDiffeomorphic
      (toyTheory.surgery (p := 1) (q := 2) (M := ()) ())
      (toyTheory.surgery (p := 1) (q := 2) (M := ()) ()) :=
  toyTheory.surgery_invariant_of_framedIsotopic (p := 1) (q := 2) trivial

/-! ## Parameterized capability API checks -/

universe uD uH uI uO uF uΘ uFunction uEigenspace uProjector

/-- Collared replacement maps extend to surgery-output comparisons. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {C : CollaredGluingCapability T G}
    {p₀ q₀ p₁ q₁ : Nat}
    {M : T.Manifold}
    {e₀ : T.FramedEmbedding p₀ q₀ M}
    {e₁ : T.FramedEmbedding p₁ q₁ M}
    {exterior : C.Exterior}
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.replacementPiece P₁.replacementPiece) :
    T.RelBoundaryDiffeomorphic (T.surgery e₀) (T.surgery e₁) :=
  P₀.replacementComparison_sound P₁ f

/-- A collared presentation exposes the actual seam equation used by gluing. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {C : CollaredGluingCapability T G}
    {p q : Nat} {M : T.Manifold}
    {e : T.FramedEmbedding p q M}
    {exterior : C.Exterior}
    (P : CollaredSurgeryPresentation G C e exterior) :
    C.exteriorSeam exterior = C.pieceSeam P.replacementPiece :=
  C.compatible_seam P.replacement_compatible

/-- Coverage is retained for the exterior, replacement piece, and seam. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {C : CollaredGluingCapability T G}
    {p q : Nat} {M : T.Manifold}
    {e : T.FramedEmbedding p q M}
    {exterior : C.Exterior}
    (P : CollaredSurgeryPresentation G C e exterior) :
    C.ExteriorCoveredBy exterior (T.surgery e) ∧
      C.PieceCoveredBy P.replacementPiece (T.surgery e) ∧
      C.SeamCoveredBy (C.exteriorSeam exterior) (T.surgery e) :=
  P.surgery_cover

/-- Ambient isotopy extension supplies the relative surgery comparison. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    T.RelBoundaryDiffeomorphic (T.surgery e₀) (T.surgery e₁) :=
  A.surgery_invariant h

/-- The ambient extension is explicitly relative to the old boundary. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.FixesOldBoundary (A.ambientEnd h) :=
  A.fixes_old_boundary h

/-- Support is separately certified to lie in the interior. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.SupportedInInterior (A.ambientEnd h) :=
  A.supported_in_interior h

/-- The surgery map is the map induced by the controlled ambient extension. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.surgeryEnd h =
      A.inducedOnSurgery (A.ambientEnd h) (A.ambient_carries_embedding h) :=
  A.surgeryEnd_eq_induced h

/-- Ambient isotopy extension retains a smooth, controlled family, not only its endpoint. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.AmbientFamilySmooth (A.ambientFamily h) ∧
      A.FramedFamilySmooth (A.framedEmbeddingAt h) ∧
      A.ambientFamily h A.timeZero = G.refl M ∧
      A.framedEmbeddingAt h A.timeZero = e₀ ∧
      A.framedEmbeddingAt h A.timeOne = e₁ ∧
      A.ambientFamily h A.timeOne = A.ambientEnd h ∧
      ∀ t, A.CarriesEmbedding (A.ambientFamily h t) e₀
          (A.framedEmbeddingAt h t) ∧
        A.SupportedAwayFromOldBoundary (A.ambientFamily h t) ∧
        A.SupportedInInterior (A.ambientFamily h t) ∧
        A.FixesOutsideSupport (A.ambientFamily h t) ∧
        A.FixesOldBoundary (A.ambientFamily h t) :=
  A.ambient_family_certificate h

/-- Each member of the ambient family is literally fixed on its selected exterior. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    (t : A.Time)
    (x : G.ExteriorPoint (G.selectedExterior (A.ambientFamily h t))) :
    G.restrictExterior (A.ambientFamily h t) x = x :=
  G.fixed_on_selected_exterior (A.ambientFamily h t) x

/-- The constructive single-handle complex has coefficient homology in its handle degree. -/
noncomputable example
    (R : Type uH) [CommRing R]
    (index : Nat) :
    (SingleHandleComplex.complex R index).homology index ≅
      SingleHandleComplex.coefficientModule R :=
  SingleHandleComplex.homologyIso R index

/-- The unique chain generator is explicitly normalized to `1`. -/
noncomputable example
    (R : Type uH) [CommRing R]
    (index : Nat) :
    SingleHandleComplex.chainDegreeLinearEquiv R index
      (SingleHandleComplex.chainGenerator R index) = 1 :=
  SingleHandleComplex.chainGenerator_normalized R index

/-- The constructive single-handle complex has zero homology off the handle degree. -/
example
    (R : Type uH) [CommRing R]
    (index k : Nat)
    (hk : k ≠ index) :
    CategoryTheory.Limits.IsZero
      ((SingleHandleComplex.complex R index).homology k) :=
  SingleHandleComplex.isZero_homology_of_ne R index k hk

/-- A supplied trace comparison transports the one-handle concentration theorem. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (H : TraceHomologyComparison certificate)
    {k : Nat}
    (hk : k ≠ p + 1)
    (x : H.IncomingHomology k) :
    letI := H.incomingAddCommGroup k
    x = 0 :=
  H.incoming_eq_zero_of_degree_ne hk x

/-- The comparison's connecting map is certified as the actual trace-pair LES arrow. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (H : TraceHomologyComparison certificate) :
    H.theory.IsLongExactConnecting certificate.trace .incoming (p + 1)
      (Nat.zero_lt_succ p)
      (H.theory.connecting certificate.trace .incoming (p + 1)
        (Nat.zero_lt_succ p)) :=
  H.incoming_connecting_from_les

/-- The incoming connecting arrow carries the declared outward-normal-first sign. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (H : TraceHomologyComparison certificate) :
    H.theory.connectingSign certificate.trace .incoming (p + 1) =
      .outwardNormalFirst :=
  H.incoming_connecting_sign.1

/-- The incoming LES is indexed by the certificate's actual source boundary. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (H : TraceHomologyComparison certificate) :
    TracePairEnd.boundaryManifold T certificate.trace .incoming = M :=
  H.incoming_les_provenance.1

/-- Outward-normal-first orientation is tied to the actual attaching representative. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (H : TraceHomologyComparison certificate) :
    letI := H.incomingAddCommGroup (p + 1)
    letI := H.incomingModule (p + 1)
    letI := H.theory.boundaryAddCommGroup certificate.trace .incoming ((p + 1) - 1)
    letI := H.theory.boundaryModule certificate.trace .incoming ((p + 1) - 1)
    letI := certificate.incomingRelative.boundaryTargetAddCommGroup
    H.theory.connecting certificate.trace .incoming (p + 1)
        (Nat.zero_lt_succ p)
        H.incomingGenerator =
      H.incomingBoundaryTargetCompare.symm
        certificate.incomingRelative.attachingClass :=
  H.incomingConnectingGenerator_eq_attachingRepresentative

/-- The full tangential obstruction controls extension after a framing change. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (Θ : TangentialObstructionTheory certificate)
    (change : Θ.FramingChange)
    (θ : Θ.Structure) :
    letI := Θ.framingChangeAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.extendsAcrossTrace (Θ.framingAction change θ) ↔
      Θ.boundaryClass θ + Θ.framingDefect change = 0 :=
  Θ.extends_after_change_iff change θ

/-- Framing changes use the documented commutative left-action convention. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (Θ : TangentialObstructionTheory certificate)
    (a b : Θ.FramingChange) (θ : Θ.Structure) :
    letI := Θ.framingChangeAddGroup
    Θ.framingAction (a + b) θ =
      Θ.framingAction a (Θ.framingAction b θ) :=
  Θ.framingAction_add a b θ

/-- The disconnected `p = 0` attaching sphere compares ordered endpoint components. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (Θ : TangentialObstructionTheory certificate)
    (hp : p = 0) (θ : Θ.Structure) :
    Θ.extendsAcrossTrace θ ↔
      Θ.samePathComponent
        (Θ.zeroSphereEndpoints hp θ).negative
        (Θ.zeroSphereEndpoints hp θ).positive :=
  Θ.extends_zeroSphere_iff_endpoints_samePathComponent hp θ

/-- Subtraction at `p = 0` requires a separately supplied abelian enrichment. -/
example
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    (Θ : TangentialObstructionTheory certificate)
    (A : ZeroSphereAbelianDifferenceModel Θ)
    (hp : p = 0) (θ : Θ.Structure) :
    letI := A.abelianComponentAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.obstructionMap θ =
      A.differenceToObstruction
        (A.endpointClass (Θ.zeroSphereEndpoints hp θ).positive -
          A.endpointClass (Θ.zeroSphereEndpoints hp θ).negative) :=
  Θ.obstructionMap_zeroSphere_abelian_difference A hp θ

/-- A supplied product-framed belt capability proves reversal. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (B : ProductFramedBeltReversal T G)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    T.RelBoundaryDiffeomorphic
      (T.surgery (B.beltEmbedding embedding hq)) M :=
  B.surgery_on_belt_restores embedding hq

/-- The reversal map retains its annulus/collar/factor-switch gluing origin. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (B : ProductFramedBeltReversal T G)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (hq : 0 < q) :
    B.reversal embedding hq =
      G.trans (G.symm (B.beltPresentation embedding hq).surgeryChart)
        (G.trans
          (B.gluing.extend
            (B.beltPresentation embedding hq).replacement_compatible
            (B.originalPresentation embedding).removed_compatible
            (B.factorSwitchPieceMap embedding hq))
          (B.originalPresentation embedding).originalChart) :=
  B.reversal_has_gluing_origin embedding hq

/-- A supplied transport capability makes the two dependent surgery orders comparable. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (D : DisjointTransportCapability T G)
    {p q p' q' : Nat} {M : T.Manifold}
    (left : T.FramedEmbedding p q M)
    (right : T.FramedEmbedding p' q' M)
    (hleft : T.Disjoint left right)
    (hright : T.Disjoint right left) :
    T.RelBoundaryDiffeomorphic
      (T.surgery (D.transportAfter left right hleft))
      (T.surgery (D.transportAfter right left hright)) :=
  D.two_site_commutes left right hleft hright

/-- Coherent finite-family execution makes every invariant independent of ordering. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    {family : FiniteDisjointFramedFamily T M count}
    (E : CoherentDisjointFamilyExecution G family)
    (left right : Equiv.Perm (Fin count)) :
    T.RelBoundaryDiffeomorphic (E.result left) (E.result right) :=
  E.ordered_results_commute left right

/-- Finite-order comparisons are generated by adjacent-swap paths. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    {family : FiniteDisjointFramedFamily T M count}
    (E : CoherentDisjointFamilyExecution G family)
    (left right : Equiv.Perm (Fin count)) :
    E.comparison left right =
      (E.comparisonPath left right).toHom G E.adjacentComparison :=
  E.comparison_eq_swap_path left right

/-- Every pair of typed adjacent-swap paths induces the same comparison. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    {family : FiniteDisjointFramedFamily T M count}
    (E : CoherentDisjointFamilyExecution G family)
    {left right : Equiv.Perm (Fin count)}
    (first second : AdjacentSwapPath left right) :
    first.toHom G E.adjacentComparison =
      second.toHom G E.adjacentComparison :=
  E.swap_path_independent first second

/-- PSC is obtained only from the explicit analytic construction capability. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : PositiveScalarCurvatureSemantics T}
    (capability : PSCSurgeryCapability T G)
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (input : PSCSurgeryInput T G embedding) :
    ∃ postMetric : G.Metric (T.surgery embedding),
      G.PositiveScalarCurvature postMetric ∧
      G.ProductNearBoundary postMetric ∧
      G.AgreesOutside
        embedding input.neighborhood input.metric postMetric :=
  exists_psc_metric_after_surgery capability input

/-- PSC output preserves the explicitly supplied product-boundary metric condition. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : PositiveScalarCurvatureSemantics T}
    (capability : PSCSurgeryCapability T G)
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (input : PSCSurgeryInput T G embedding) :
    G.ProductNearBoundary (capability.construct input).metric :=
  psc_surgery_product_near_boundary capability input

/-- Component deletion requires the explicit eligibility predicate retained by the output. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.DeletionEligible output.deletedComponents :=
  ricci_flow_surgery_deletion_eligible capability input

/-- The continued Ricci flow carries its interval, initial time, and exact initial metric. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.TimeInInterval output.flowInitialTime output.flowInterval ∧
      R.IsRicciFlow output.postSurgeryFlow ∧
      R.flowInitialMetric output.postSurgeryFlow = output.postMetric :=
  ricci_flow_post_surgery_flow capability input

/-- Ricci-flow surgery exposes exactly the supplied cap, pinching, and continuation conclusions. -/
example
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {R : RicciFlowSurgerySemantics T}
    (capability : RicciFlowSurgeryCapability T G R)
    {M : T.Manifold} {count : Nat}
    (input : RicciFlowSurgeryInput T G R M count) :
    let output := ricciFlowSurgery capability input
    R.StandardCapsInserted
        input.topology.family input.preMetric output.postMetric ∧
      R.CurvaturePinched output.postMetric ∧
      R.KappaNoncollapsed output.postMetric input.kappa ∧
      R.ContinuesAfterSurgery input.preMetric output.postMetric :=
  ricci_flow_surgery_analytic_conclusions capability input

/-- The observation model explicitly ties its point type to the outgoing manifold. -/
example
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize) :
    O.RealizesManifold O.Point (T.surgery embedding) :=
  O.point_type_realizes_surgery

/-- Point-cloud recovery is projected only from an explicit admissible capability. -/
example
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    {H : PointCloudReconstructionHypotheses O G}
    {S : PointCloudRecoverySemantics T embedding}
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.manifoldMatches (C.reconstruct h).manifold (T.surgery embedding) ∧
      S.coreMatches (C.reconstruct h).core S.targetCore ∧
      S.framingMatches (C.reconstruct h).framing S.targetFraming ∧
      S.exteriorMatches (C.reconstruct h).exterior S.targetExterior ∧
      S.collarMatches (C.reconstruct h).collar S.targetCollar :=
  C.all_recovered h

/-- Input correspondence labels are mapped to the exact recovery targets. -/
example
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    {H : PointCloudReconstructionHypotheses O G}
    {S : PointCloudRecoverySemantics T embedding}
    (C : PointCloudReconstructionCapability O G H S) :
    C.targetBridge.coreTargetOf H.coreCorrespondence = S.targetCore ∧
      C.targetBridge.framingTargetOf H.framingCorrespondence = S.targetFraming ∧
      C.targetBridge.exteriorTargetOf H.exteriorCorrespondence = S.targetExterior ∧
      C.targetBridge.collarTargetOf H.collarCorrespondence = S.targetCollar :=
  C.all_target_correspondences_exact

/-- The correspondence bridge is itself an explicit material premise. -/
example
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    {H : PointCloudReconstructionHypotheses O G}
    {S : PointCloudRecoverySemantics T embedding}
    (B : PointCloudCorrespondenceBridge H S) :
    B.coreTargetOf H.coreCorrespondence = S.targetCore ∧
      B.framingTargetOf H.framingCorrespondence = S.targetFraming ∧
      B.exteriorTargetOf H.exteriorCorrespondence = S.targetExterior ∧
      B.collarTargetOf H.collarCorrespondence = S.targetCollar :=
  B.all_target_correspondences_exact

/-- Reconstruction hypotheses preserve the two directed metric errors separately. -/
example
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    (H : PointCloudReconstructionHypotheses O G)
    (x : O.Point) (i : Fin sampleSize) :
    (∃ j : Fin sampleSize,
        O.ambientDistanceInUnits (O.embed x) (O.sample j) ≤ H.coverageRadius) ∧
      (∃ y : O.Point,
        O.ambientDistanceInUnits (O.sample i) (O.embed y) ≤ H.noiseRadius) :=
  ⟨H.carrier_to_sample_error_le x, H.sample_to_carrier_error_le i⟩

/-- The exact finite graph operator is self-adjoint for its weighted inner product. -/
example
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    (f g : Fin vertexCount → ℝ) :
    graph.innerProduct (graph.laplacian f) g =
      graph.innerProduct f (graph.laplacian g) :=
  graph.weighted_self_adjoint f g

/-- The continuum model uses a genuinely dense self-adjoint unbounded operator. -/
example
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace) :
    Dense (continuum.laplacian.domain : Set FunctionSpace) ∧
      IsSelfAdjoint continuum.laplacian :=
  ⟨continuum.self_adjoint.dense_domain, continuum.self_adjoint⟩

/-- Compact resolvent means an actual compact shifted inverse in both directions. -/
example
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace) :
    IsCompactOperator continuum.resolvent ∧
      (∀ f,
        continuum.laplacian
              ⟨continuum.resolvent f, continuum.resolvent_maps_to_domain f⟩ -
            continuum.resolventShift • continuum.resolvent f = f) ∧
      (∀ u : continuum.laplacian.domain,
        (⟨continuum.resolvent
              (continuum.laplacian u -
                continuum.resolventShift • (u : FunctionSpace)),
            continuum.resolvent_maps_to_domain
              (continuum.laplacian u -
                continuum.resolventShift • (u : FunctionSpace))⟩ :
          continuum.laplacian.domain) = u) :=
  continuum.compact_resolvent_semantics

/-- Declared continuum eigenpairs are equations for vectors in the unbounded domain. -/
example
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    (k : Nat) :
    continuum.laplacian (continuum.eigenfunction k) =
      continuum.eigenvalue k •
        (continuum.eigenfunction k : FunctionSpace) :=
  continuum.eigenfunction_equation k

/-- Declared continuum eigenfunctions are not the zero vector. -/
example
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    (k : Nat) :
    (continuum.eigenfunction k : FunctionSpace) ≠ 0 :=
  continuum.eigenfunction_nonzero k

/-- Spectral comparison retains all three explicit finite-mode error estimates. -/
example
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    {comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor}
    {hypotheses : SpectralComparisonHypotheses graph continuum}
    {modeCount : Nat}
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    |graph.eigenvalue ((C.compare h).graphMode k) -
        continuum.eigenvalue ((C.compare h).continuumMode k)| ≤
          (C.compare h).eigenvalueErrorBound k ∧
      comparison.eigenspaceDistance
          (comparison.graphEigenspace ((C.compare h).graphMode k))
          (comparison.continuumEigenspace ((C.compare h).continuumMode k)) ≤
            (C.compare h).eigenspaceErrorBound k ∧
      comparison.projectorDistance
          (comparison.graphProjector ((C.compare h).graphMode k))
          (comparison.continuumProjector ((C.compare h).continuumMode k)) ≤
            (C.compare h).projectorErrorBound k :=
  C.all_spectral_errors_bounded h k

/-- Finite-mode projector claims retain an explicit positive isolation gap. -/
example
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    {comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor}
    {hypotheses : SpectralComparisonHypotheses graph continuum}
    {modeCount : Nat}
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    comparison.GraphClusterIsolated graph.laplacian
        (graph.eigenvalue ((C.compare h).graphMode k))
        ((C.compare h).graphEigengap k) ∧
      comparison.ContinuumClusterIsolated continuum.laplacian
        (continuum.eigenvalue ((C.compare h).continuumMode k))
        ((C.compare h).continuumEigengap k) ∧
      0 < (C.compare h).graphEigengap k ∧
      0 < (C.compare h).continuumEigengap k :=
  C.selected_clusters_isolated h k

/-- Spectral descriptors are indexed by the exact selected operators and eigenvalues. -/
example
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    {comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor}
    {hypotheses : SpectralComparisonHypotheses graph continuum}
    {modeCount : Nat}
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    comparison.GraphEigenspaceRepresents
        (comparison.graphEigenspace ((C.compare h).graphMode k))
        graph.laplacian
        (graph.eigenvalue ((C.compare h).graphMode k)) ∧
      comparison.ContinuumEigenspaceRepresents
        (comparison.continuumEigenspace ((C.compare h).continuumMode k))
        continuum.laplacian
        (continuum.eigenvalue ((C.compare h).continuumMode k)) ∧
      comparison.GraphProjectorRepresents
        (comparison.graphProjector ((C.compare h).graphMode k))
        graph.laplacian
        (graph.eigenvalue ((C.compare h).graphMode k)) ∧
      comparison.ContinuumProjectorRepresents
        (comparison.continuumProjector ((C.compare h).continuumMode k))
        continuum.laplacian
        (continuum.eigenvalue ((C.compare h).continuumMode k)) :=
  C.selected_descriptors_represent_operators h k

/-- A graph projector is tied to the exact graph eigenspace by its actual range. -/
example
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor)
    (k : Fin vertexCount) :
    IsIdempotentElem
        (comparison.projectorOperator (comparison.graphProjector k)) ∧
      IsSelfAdjoint
        (comparison.projectorOperator (comparison.graphProjector k)) ∧
      LinearMap.range
          (comparison.projectorOperator (comparison.graphProjector k) :
            FunctionSpace →ₗ[ℝ] FunctionSpace) =
        comparison.graphClusterSubspace k :=
  ⟨comparison.graphProjector_idempotent k,
    comparison.graphProjector_self_adjoint k,
    comparison.graphProjector_range_eq_cluster k⟩

/-- A continuum projector is tied to the exact unbounded eigenspace by its actual range. -/
example
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor)
    (k : Nat) :
    IsIdempotentElem
        (comparison.projectorOperator (comparison.continuumProjector k)) ∧
      IsSelfAdjoint
        (comparison.projectorOperator (comparison.continuumProjector k)) ∧
      LinearMap.range
          (comparison.projectorOperator (comparison.continuumProjector k) :
            FunctionSpace →ₗ[ℝ] FunctionSpace) =
        comparison.continuumClusterSubspace k :=
  ⟨comparison.continuumProjector_idempotent k,
    comparison.continuumProjector_self_adjoint k,
    comparison.continuumProjector_range_eq_cluster k⟩

private def oddDimension : Dimension :=
  ⟨1, 2, by decide⟩

private def secondOddDimension : Dimension :=
  ⟨0, 3, by decide⟩

private def evenDimension : Dimension :=
  ⟨0, 2, by decide⟩

/-- A `(1, 2)` surgery has odd ambient dimension and zero Euler change. -/
example : oddDimension.eulerChange = 0 :=
  oddDimension.eulerChange_eq_zero_of_odd_ambient (by decide)

/-- The even-dimensional sign formula gives `-2` for a `(0, 2)` surgery. -/
example : evenDimension.eulerChange = -2 := by
  rw [evenDimension.eulerChange_eq_two_mul_sign_of_even_ambient (by decide)]
  norm_num [evenDimension]

/-- Euler change adds over a finite family, and odd-dimensional terms vanish. -/
example :
    familyEulerChange [oddDimension, secondOddDimension] = 0 := by
  apply familyEulerChange_eq_zero_of_all_odd
  intro d hd
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hd
  rcases hd with rfl | rfl
  · decide
  · decide

/-- Consecutive ambient and trace dimensions cannot both be even. -/
example : ¬ (Even 4 ∧ Even (4 + 1)) :=
  ambient_and_trace_not_both_even 4

/-- Kernel-proved scope certificates expose their theorem payload. -/
example : True :=
  Scope.proof_of_kernelProved (.kernelProved trivial)

/-- Conditional certificates expose an implication and retain its premise. -/
example
    (certificate :
      Scope.ClaimCertificate True .conditionalSmoothCapability) :
    ∃ hypothesis : Prop, hypothesis → True :=
  Scope.hypothesis_of_conditional certificate

end Surface.SmoothFramedSurgery.Tests
```
