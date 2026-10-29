-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GluingLawStrictness.Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GluingLawStrictness.Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/CollaredGluing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.SmoothFramedSurgery.Core

/-!
# Conditional collared gluing

Mathlib supplies useful topological gluing and smooth-manifold primitives, but
it does not yet construct the collar-compatible, corner-smoothed handle gluing
needed by framed surgery.  This module therefore makes that boundary explicit.
`RelativeBoundaryDiffeomorphismTheory` is a bundled groupoid of actual
comparison maps supplied by a smooth model, and `CollaredGluingCapability`
states exactly how compatible maps of replacement pieces extend across a
fixed exterior.

No capability in this file is asserted to be inhabited.  The theorems below
derive coherent relative-boundary comparisons only after such data is passed
explicitly.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GluingLawStrictness.Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062

namespace Surface.SmoothFramedSurgery

universe uS uD

/--
How a concrete model could present the groupoid laws.  `definitional` means
the laws reduce by computation; `propositional` means they are carried by the
explicit equality fields below.  This abstract interface deliberately forces
the latter.  A future concrete refinement may prove a definitional model, but
the capability record itself never advertises more strictness than it stores.
-/
inductive GluingLawStrictness
  | definitional
  | propositional
  deriving DecidableEq

/--
A bundled groupoid of relative-boundary diffeomorphisms for a surgery theory.

The old proposition in `SmoothFramedSurgeryTheory` remains the public semantic
boundary.  `sound` forgets a bundled map to that proposition; there is no
operation in the opposite direction.
-/
structure RelativeBoundaryDiffeomorphismTheory
    (T : SmoothFramedSurgeryTheory) where
  lawStrictness : GluingLawStrictness
  lawStrictness_eq : lawStrictness = .propositional
  Hom : T.Manifold → T.Manifold → Type uD
  /-- A relative map selects the exterior on which it is required to be fixed. -/
  CommonExterior : T.Manifold → T.Manifold → Type uD
  ExteriorPoint : ∀ {X Y}, CommonExterior X Y → Type uD
  selectedExterior : ∀ {X Y}, Hom X Y → CommonExterior X Y
  restrictExterior : ∀ {X Y} (f : Hom X Y),
    ExteriorPoint (selectedExterior f) → ExteriorPoint (selectedExterior f)
  restrictExterior_eq_id : ∀ {X Y} (f : Hom X Y) (x),
    restrictExterior f x = x
  /-- The old boundary is transported explicitly, rather than hidden in `sound`. -/
  OldBoundary : T.Manifold → Type uD
  oldBoundaryMap : ∀ {X Y}, Hom X Y → OldBoundary X → OldBoundary Y
  CommonOldBoundary : T.Manifold → T.Manifold → Type uD
  OldBoundaryPoint : ∀ {X Y}, CommonOldBoundary X Y → Type uD
  selectedOldBoundary : ∀ {X Y}, Hom X Y → CommonOldBoundary X Y
  restrictOldBoundary : ∀ {X Y} (f : Hom X Y),
    OldBoundaryPoint (selectedOldBoundary f) →
      OldBoundaryPoint (selectedOldBoundary f)
  restrictOldBoundary_eq_id : ∀ {X Y} (f : Hom X Y) (x),
    restrictOldBoundary f x = x
  refl : (X : T.Manifold) → Hom X X
  symm : {X Y : T.Manifold} → Hom X Y → Hom Y X
  trans : {X Y Z : T.Manifold} → Hom X Y → Hom Y Z → Hom X Z
  refl_trans : ∀ {X Y} (f : Hom X Y), trans (refl X) f = f
  trans_refl : ∀ {X Y} (f : Hom X Y), trans f (refl Y) = f
  trans_assoc : ∀ {W X Y Z} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z),
    trans (trans f g) h = trans f (trans g h)
  symm_trans : ∀ {X Y} (f : Hom X Y), trans (symm f) f = refl Y
  trans_symm : ∀ {X Y} (f : Hom X Y), trans f (symm f) = refl X
  symm_refl : ∀ X, symm (refl X) = refl X
  symm_symm : ∀ {X Y} (f : Hom X Y), symm (symm f) = f
  oldBoundary_refl : ∀ X (x : OldBoundary X), oldBoundaryMap (refl X) x = x
  oldBoundary_trans : ∀ {X Y Z} (f : Hom X Y) (g : Hom Y Z)
      (x : OldBoundary X),
    oldBoundaryMap (trans f g) x = oldBoundaryMap g (oldBoundaryMap f x)
  oldBoundary_symm_left : ∀ {X Y} (f : Hom X Y) (x : OldBoundary X),
    oldBoundaryMap (symm f) (oldBoundaryMap f x) = x
  oldBoundary_symm_right : ∀ {X Y} (f : Hom X Y) (y : OldBoundary Y),
    oldBoundaryMap f (oldBoundaryMap (symm f) y) = y
  sound : ∀ {X Y}, Hom X Y → T.RelBoundaryDiffeomorphic X Y

namespace RelativeBoundaryDiffeomorphismTheory

variable {T : SmoothFramedSurgeryTheory}

/-- A bundled comparison always supplies the underlying relative diffeomorphism claim. -/
theorem rel
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {X Y : T.Manifold}
    (f : G.Hom X Y) :
    T.RelBoundaryDiffeomorphic X Y :=
  G.sound f

/-- Soundness respects reversal at the propositional boundary. -/
theorem rel_symm
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {X Y : T.Manifold}
    (f : G.Hom X Y) :
    T.RelBoundaryDiffeomorphic Y X :=
  G.sound (G.symm f)

/-- Soundness respects composition at the propositional boundary. -/
theorem rel_trans
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {X Y Z : T.Manifold}
    (f : G.Hom X Y)
    (g : G.Hom Y Z) :
    T.RelBoundaryDiffeomorphic X Z :=
  G.sound (G.trans f g)

/-- The abstract interface deliberately promises propositional, not definitional, laws. -/
theorem declared_strictness
    (G : RelativeBoundaryDiffeomorphismTheory T) :
    G.lawStrictness = .propositional :=
  G.lawStrictness_eq

/-- Every bundled relative map is literally the identity on its selected exterior. -/
theorem fixed_on_selected_exterior
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {X Y : T.Manifold}
    (f : G.Hom X Y)
    (x : G.ExteriorPoint (G.selectedExterior f)) :
    G.restrictExterior f x = x :=
  G.restrictExterior_eq_id f x

/-- A relative map is likewise pointwise fixed on its selected old boundary. -/
theorem fixed_on_selected_oldBoundary
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {X Y : T.Manifold}
    (f : G.Hom X Y)
    (x : G.OldBoundaryPoint (G.selectedOldBoundary f)) :
    G.restrictOldBoundary f x = x :=
  G.restrictOldBoundary_eq_id f x

end RelativeBoundaryDiffeomorphismTheory

/--
The data needed to glue smooth pieces to a fixed collared exterior.

`Compatible exterior piece` includes all seam, collar, orientation, and
corner-smoothing obligations of the supplying model.  The extension laws make
gluing functorial rather than merely recording an unrelated comparison for
each pair of pieces.
-/
structure CollaredGluingCapability
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T) where
  lawStrictness : GluingLawStrictness
  lawStrictness_eq : lawStrictness = .propositional
  Exterior : Type uS
  Piece : Type uS
  Seam : Type uS
  Collar : Type uS
  exteriorSeam : Exterior → Seam
  pieceSeam : Piece → Seam
  collarSeam : Collar → Seam
  Compatible : Exterior → Piece → Prop
  collarData : ∀ {exterior piece}, Compatible exterior piece → Collar
  compatible_seam : ∀ {exterior piece}
      (_h : Compatible exterior piece),
    exteriorSeam exterior = pieceSeam piece
  collarData_seam : ∀ {exterior piece}
      (h : Compatible exterior piece),
    collarSeam (collarData h) = exteriorSeam exterior
  glued : Exterior → Piece → T.Manifold
  /-- Point-level inclusion data make the two-piece cover and its overlap explicit. -/
  GluedPoint : T.Manifold → Type uS
  ExteriorPoint : Exterior → Type uS
  PiecePoint : Piece → Type uS
  SeamPoint : Type uS
  includeExterior : ∀ (exterior piece),
    ExteriorPoint exterior → GluedPoint (glued exterior piece)
  includePiece : ∀ (exterior piece),
    PiecePoint piece → GluedPoint (glued exterior piece)
  seamIntoExterior : ∀ exterior, SeamPoint → ExteriorPoint exterior
  seamIntoPiece : ∀ piece, SeamPoint → PiecePoint piece
  overlap_restriction : ∀ {exterior piece}
      (h : Compatible exterior piece) (x : SeamPoint),
    includeExterior exterior piece (seamIntoExterior exterior x) =
      includePiece exterior piece (seamIntoPiece piece x)
  /-- Coverage predicates make the exterior/piece/seam cover part of the model. -/
  ExteriorCoveredBy : Exterior → T.Manifold → Prop
  PieceCoveredBy : Piece → T.Manifold → Prop
  SeamCoveredBy : Seam → T.Manifold → Prop
  PieceHom : Piece → Piece → Type uD
  pieceRefl : (piece : Piece) → PieceHom piece piece
  pieceSymm : ∀ {P Q}, PieceHom P Q → PieceHom Q P
  pieceTrans : ∀ {P Q R}, PieceHom P Q → PieceHom Q R → PieceHom P R
  pieceRefl_trans : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans (pieceRefl P) f = f
  pieceTrans_refl : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans f (pieceRefl Q) = f
  pieceTrans_assoc : ∀ {P Q R S}
      (f : PieceHom P Q) (g : PieceHom Q R) (h : PieceHom R S),
    pieceTrans (pieceTrans f g) h = pieceTrans f (pieceTrans g h)
  pieceSymm_trans : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans (pieceSymm f) f = pieceRefl Q
  pieceTrans_symm : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans f (pieceSymm f) = pieceRefl P
  pieceSymm_refl : ∀ P, pieceSymm (pieceRefl P) = pieceRefl P
  pieceSymm_symm : ∀ {P Q} (f : PieceHom P Q), pieceSymm (pieceSymm f) = f
  /-- Collar comparisons are coherent data, not just equality of seam labels. -/
  CollarHom : Collar → Collar → Type uD
  collarRefl : (collar : Collar) → CollarHom collar collar
  collarSymm : ∀ {A B}, CollarHom A B → CollarHom B A
  collarTrans : ∀ {A B D}, CollarHom A B → CollarHom B D → CollarHom A D
  collarRefl_trans : ∀ {A B} (f : CollarHom A B),
    collarTrans (collarRefl A) f = f
  collarTrans_refl : ∀ {A B} (f : CollarHom A B),
    collarTrans f (collarRefl B) = f
  collarTrans_assoc : ∀ {A B D E}
      (f : CollarHom A B) (g : CollarHom B D) (h : CollarHom D E),
    collarTrans (collarTrans f g) h = collarTrans f (collarTrans g h)
  collarSymm_trans : ∀ {A B} (f : CollarHom A B),
    collarTrans (collarSymm f) f = collarRefl B
  collarTrans_symm : ∀ {A B} (f : CollarHom A B),
    collarTrans f (collarSymm f) = collarRefl A
  collarSymm_refl : ∀ A, collarSymm (collarRefl A) = collarRefl A
  collarSymm_symm : ∀ {A B} (f : CollarHom A B), collarSymm (collarSymm f) = f
  collarOfPieceHom : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q),
    PieceHom P Q → CollarHom (collarData hP) (collarData hQ)
  collarOfPieceRefl : ∀ {exterior P} (hP : Compatible exterior P),
    collarOfPieceHom hP hP (pieceRefl P) = collarRefl (collarData hP)
  collarOfPieceTrans : ∀ {exterior P Q R}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (hR : Compatible exterior R) (f : PieceHom P Q) (g : PieceHom Q R),
    collarOfPieceHom hP hR (pieceTrans f g) =
      collarTrans (collarOfPieceHom hP hQ f) (collarOfPieceHom hQ hR g)
  collarOfPieceSymm : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (f : PieceHom P Q),
    collarOfPieceHom hQ hP (pieceSymm f) =
      collarSymm (collarOfPieceHom hP hQ f)
  collarHom_preserves_seam : ∀ {A B}, CollarHom A B →
    collarSeam A = collarSeam B
  extend : ∀ {exterior P Q},
    Compatible exterior P → Compatible exterior Q →
      PieceHom P Q → G.Hom (glued exterior P) (glued exterior Q)
  commonExterior : ∀ (exterior P Q),
    G.CommonExterior (glued exterior P) (glued exterior Q)
  extend_selected_exterior : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (f : PieceHom P Q),
    G.selectedExterior (extend hP hQ f) = commonExterior exterior P Q
  extend_refl : ∀ {exterior P} (hP : Compatible exterior P),
    extend hP hP (pieceRefl P) = G.refl (glued exterior P)
  extend_trans : ∀ {exterior P Q R}
      (hP : Compatible exterior P)
      (hQ : Compatible exterior Q)
      (hR : Compatible exterior R)
      (f : PieceHom P Q)
      (g : PieceHom Q R),
    extend hP hR (pieceTrans f g) =
      G.trans (extend hP hQ f) (extend hQ hR g)
  extend_symm : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (f : PieceHom P Q),
    extend hQ hP (pieceSymm f) = G.symm (extend hP hQ f)
  /-- A chart can be certified to respect the chosen collar, not only the seam. -/
  ChartRespectsCollar : ∀ {X exterior piece},
    G.Hom (glued exterior piece) X → Collar → Prop

namespace CollaredGluingCapability

variable {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}

/-- Gluing coherence in the abstract capability is explicitly propositional. -/
theorem declared_strictness
    (C : CollaredGluingCapability T G) :
    C.lawStrictness = .propositional :=
  C.lawStrictness_eq

/-- The two inclusion maps agree on every point of a compatible seam. -/
theorem inclusions_agree_on_seam
    (C : CollaredGluingCapability T G)
    {exterior : C.Exterior} {piece : C.Piece}
    (h : C.Compatible exterior piece) (x : C.SeamPoint) :
    C.includeExterior exterior piece (C.seamIntoExterior exterior x) =
      C.includePiece exterior piece (C.seamIntoPiece piece x) :=
  C.overlap_restriction h x

/-- An extended piece map records the exact common exterior selected by gluing. -/
theorem extend_uses_common_exterior
    (C : CollaredGluingCapability T G)
    {exterior : C.Exterior} {P Q : C.Piece}
    (hP : C.Compatible exterior P) (hQ : C.Compatible exterior Q)
    (f : C.PieceHom P Q) :
    G.selectedExterior (C.extend hP hQ f) = C.commonExterior exterior P Q :=
  C.extend_selected_exterior hP hQ f

end CollaredGluingCapability

/--
A collared presentation of one framed surgery using a fixed exterior.

The two charts identify the abstract gluing with the original manifold and
with the surgery operation.  Their existence is geometric input, not a
consequence of the bare embedding type.
-/
structure CollaredSurgeryPresentation
    {T : SmoothFramedSurgeryTheory}
    (G : RelativeBoundaryDiffeomorphismTheory T)
    (C : CollaredGluingCapability T G)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (exterior : C.Exterior) where
  removedPiece : C.Piece
  replacementPiece : C.Piece
  removed_compatible : C.Compatible exterior removedPiece
  replacement_compatible : C.Compatible exterior replacementPiece
  originalChart : G.Hom (C.glued exterior removedPiece) M
  surgeryChart :
    G.Hom (C.glued exterior replacementPiece) (T.surgery embedding)
  original_exterior_covered : C.ExteriorCoveredBy exterior M
  original_removed_piece_covered : C.PieceCoveredBy removedPiece M
  original_seam_covered : C.SeamCoveredBy (C.exteriorSeam exterior) M
  surgery_exterior_covered : C.ExteriorCoveredBy exterior (T.surgery embedding)
  surgery_replacement_piece_covered :
    C.PieceCoveredBy replacementPiece (T.surgery embedding)
  surgery_seam_covered :
    C.SeamCoveredBy (C.exteriorSeam exterior) (T.surgery embedding)
  original_chart_collared :
    C.ChartRespectsCollar originalChart (C.collarData removed_compatible)
  surgery_chart_collared :
    C.ChartRespectsCollar surgeryChart (C.collarData replacement_compatible)

namespace CollaredSurgeryPresentation

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {C : CollaredGluingCapability T G}
    {p₀ q₀ p₁ q₁ : Nat}
    {M : T.Manifold}
    {e₀ : T.FramedEmbedding p₀ q₀ M}
    {e₁ : T.FramedEmbedding p₁ q₁ M}
    {exterior : C.Exterior}

/-- The original chart has explicit exterior, removed-piece, and seam coverage. -/
theorem original_cover
    (P : CollaredSurgeryPresentation G C e₀ exterior) :
    C.ExteriorCoveredBy exterior M ∧
      C.PieceCoveredBy P.removedPiece M ∧
      C.SeamCoveredBy (C.exteriorSeam exterior) M :=
  ⟨P.original_exterior_covered, P.original_removed_piece_covered,
    P.original_seam_covered⟩

/-- The surgery chart has explicit exterior, replacement-piece, and seam coverage. -/
theorem surgery_cover
    (P : CollaredSurgeryPresentation G C e₀ exterior) :
    C.ExteriorCoveredBy exterior (T.surgery e₀) ∧
      C.PieceCoveredBy P.replacementPiece (T.surgery e₀) ∧
      C.SeamCoveredBy (C.exteriorSeam exterior) (T.surgery e₀) :=
  ⟨P.surgery_exterior_covered, P.surgery_replacement_piece_covered,
    P.surgery_seam_covered⟩

/-- A replacement-piece comparison induces coherent comparison of its collars. -/
def replacementCollarComparison
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.replacementPiece P₁.replacementPiece) :
    C.CollarHom (C.collarData P₀.replacement_compatible)
      (C.collarData P₁.replacement_compatible) :=
  C.collarOfPieceHom P₀.replacement_compatible P₁.replacement_compatible f

/-- The induced collar comparison preserves the concrete seam. -/
theorem replacementCollarComparison_preserves_seam
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.replacementPiece P₁.replacementPiece) :
    C.collarSeam (C.collarData P₀.replacement_compatible) =
      C.collarSeam (C.collarData P₁.replacement_compatible) :=
  C.collarHom_preserves_seam (replacementCollarComparison P₀ P₁ f)

/--
A collar-compatible map between replacement pieces induces a bundled
relative-boundary comparison between the two surgery outputs.
-/
def replacementComparison
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.replacementPiece P₁.replacementPiece) :
    G.Hom (T.surgery e₀) (T.surgery e₁) :=
  G.trans (G.symm P₀.surgeryChart)
    (G.trans
      (C.extend P₀.replacement_compatible P₁.replacement_compatible f)
      P₁.surgeryChart)

/--
A collar-compatible comparison of the removed pieces extends across the
common exterior and is transported through the two original-manifold charts.
Unlike `replacementComparison`, this map uses the removed-piece presentation
and certifies compatibility on the unsurgered side.
-/
def originalComparison
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.removedPiece P₁.removedPiece) :
    G.Hom M M :=
  G.trans (G.symm P₀.originalChart)
    (G.trans
      (C.extend P₀.removed_compatible P₁.removed_compatible f)
      P₁.originalChart)

/-- The induced bundled map proves the public relative-diffeomorphism relation. -/
theorem replacementComparison_sound
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.replacementPiece P₁.replacementPiece) :
    T.RelBoundaryDiffeomorphic (T.surgery e₀) (T.surgery e₁) :=
  G.sound (replacementComparison P₀ P₁ f)

/-- The removed-piece comparison is a relative self-diffeomorphism of the original manifold. -/
theorem originalComparison_sound
    (P₀ : CollaredSurgeryPresentation G C e₀ exterior)
    (P₁ : CollaredSurgeryPresentation G C e₁ exterior)
    (f : C.PieceHom P₀.removedPiece P₁.removedPiece) :
    T.RelBoundaryDiffeomorphic M M :=
  G.sound (originalComparison P₀ P₁ f)

/-- Extending the identity map of a replacement piece gives the identity comparison. -/
@[simp]
theorem replacementComparison_refl
    (P : CollaredSurgeryPresentation G C e₀ exterior) :
    replacementComparison P P (C.pieceRefl P.replacementPiece) =
      G.refl (T.surgery e₀) := by
  unfold replacementComparison
  rw [C.extend_refl, G.refl_trans, G.symm_trans]

/-- The identity removed-piece map induces the identity on the original manifold. -/
@[simp]
theorem originalComparison_refl
    (P : CollaredSurgeryPresentation G C e₀ exterior) :
    originalComparison P P (C.pieceRefl P.removedPiece) = G.refl M := by
  unfold originalComparison
  rw [C.extend_refl, G.refl_trans, G.symm_trans]

end CollaredSurgeryPresentation

end Surface.SmoothFramedSurgery
