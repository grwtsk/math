# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Site.Variant59d4e3461968f63a72ef1eef803b9675c2ae2a5e1a8499de92bf3d3b8769ce2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a7750852344b7f1adf04083bf9dc5ba0d2223f2` · SHA-256 `e3035bd75783700a78d0a369f0fa3a44ddf3fcb11aa111781fc579a2d7f1ceb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PadicFormalScheme.Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PadicFormalScheme.Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135","mathematical_subject":"Computation.DataStructures","original_sha256":"0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Prismatic/Site.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Prismatic.Examples


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PadicFormalScheme.Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135

namespace Surface.Prismatic

universe u

/-!
# Prismatic sites and structure presheaf interfaces

Formalized here: a certificate-bearing version of the relative prismatic site
object `(A,I) -> (B,IB)` with a special-fiber map into a p-adic formal scheme.

Certificate-gated here: site topology axioms, sheaf conditions, functoriality,
and the ring-valued structure of `O_Delta` and `O_Delta_bar`.  The structure
objects begin as presheaf interfaces; using them as ring-valued sheaves requires
separate functorial ring-presheaf data and a sheaf certificate.
-/

structure PadicFormalScheme where
  label : String
  pAdic : Prop
  pAdicCertified : pAdic
  boundary : List String

structure SmoothPadicFormalSchemeOver
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  smooth : Prop
  smoothCertified : smooth
  overSpecialFiberLabel : String
  boundary : List String

structure SpecialFiberMap
    {p : Nat}
    (B : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  mapLabel : String
  boundary : List String

/-- Object of the prismatic site `(X/A)_Δ`. -/
structure PrismaticSiteObject
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  B : BoundedPrism p
  base_map : PrismMap P.toPrism B.toPrism
  special_fiber_map : SpecialFiberMap B X
  objectBoundary : List String

structure FlatCover
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (U : PrismaticSiteObject P X) where
  coverLabel : String
  flat : Prop
  flatCertified : flat
  boundary : List String

/-- Morphism in the prismatic site. -/
structure SiteMorphism
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (U V : PrismaticSiteObject P X) where
  prismMap : PrismMap U.B.toPrism V.B.toPrism
  specialFiberCompatibilityLabel : String
  boundary : List String

/--
Category data for prismatic-site morphisms.

This is deliberately a theorem-facing input object: the current file does not
construct prism-map identity and composition in general.  Any use of the
prismatic site as a category must supply identity morphisms, composition, and
the three category laws explicitly.
-/
structure SiteMorphismCategoryData
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  id :
    ∀ U : PrismaticSiteObject P X,
      SiteMorphism U U
  comp :
    ∀ {U V W : PrismaticSiteObject P X},
      SiteMorphism U V →
      SiteMorphism V W →
        SiteMorphism U W
  id_comp :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism U V),
        comp (id U) f = f
  comp_id :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism U V),
        comp f (id V) = f
  assoc :
    ∀ {U V W Y : PrismaticSiteObject P X}
      (f : SiteMorphism U V)
      (g : SiteMorphism V W)
      (h : SiteMorphism W Y),
        comp (comp f g) h = comp f (comp g h)
  boundary : List String

/--
Construction data for the prismatic-site morphism category.

This is the preferred theorem-facing source for `SiteMorphismCategoryData`:
identity and composition of site morphisms are backed by explicit identity and
composition data on the underlying prism maps.  The current Surface layer still
does not construct general prism-map identities/composites from first
principles; it records them here as typed prism-map data with coherence laws,
and then derives the older category package from this construction record.
-/
structure SiteMorphismCategoryConstructionData
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  id :
    ∀ U : PrismaticSiteObject P X,
      SiteMorphism U U
  comp :
    ∀ {U V W : PrismaticSiteObject P X},
      SiteMorphism U V →
      SiteMorphism V W →
        SiteMorphism U W
  idPrismMap :
    ∀ U : PrismaticSiteObject P X,
      PrismMap U.B.toPrism U.B.toPrism
  compPrismMap :
    ∀ {U V W : PrismaticSiteObject P X},
      PrismMap U.B.toPrism V.B.toPrism →
      PrismMap V.B.toPrism W.B.toPrism →
        PrismMap U.B.toPrism W.B.toPrism
  id_prismMap_eq :
    ∀ U : PrismaticSiteObject P X,
      (id U).prismMap = idPrismMap U
  comp_prismMap_eq :
    ∀ {U V W : PrismaticSiteObject P X}
      (f : SiteMorphism U V)
      (g : SiteMorphism V W),
        (comp f g).prismMap = compPrismMap f.prismMap g.prismMap
  id_comp :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism U V),
        comp (id U) f = f
  comp_id :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism U V),
        comp f (id V) = f
  assoc :
    ∀ {U V W Y : PrismaticSiteObject P X}
      (f : SiteMorphism U V)
      (g : SiteMorphism V W)
      (h : SiteMorphism W Y),
        comp (comp f g) h = comp f (comp g h)
  constructionBoundary : List String

def SiteMorphismCategoryConstructionData.toCategoryData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (D : SiteMorphismCategoryConstructionData P X) :
    SiteMorphismCategoryData P X where
  id := D.id
  comp := D.comp
  id_comp := D.id_comp
  comp_id := D.comp_id
  assoc := D.assoc
  boundary :=
    D.constructionBoundary ++
      [
        "Derived from SiteMorphismCategoryConstructionData.",
        "Identity and composition are backed by explicit prism-map data."
      ]

theorem SiteMorphismCategoryConstructionData.id_prismMap
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (D : SiteMorphismCategoryConstructionData P X)
    (U : PrismaticSiteObject P X) :
    (D.id U).prismMap = D.idPrismMap U :=
  D.id_prismMap_eq U

theorem SiteMorphismCategoryConstructionData.comp_prismMap
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (D : SiteMorphismCategoryConstructionData P X)
    {U V W : PrismaticSiteObject P X}
    (f : SiteMorphism U V)
    (g : SiteMorphism V W) :
    (D.comp f g).prismMap = D.compPrismMap f.prismMap g.prismMap :=
  D.comp_prismMap_eq f g

theorem SiteMorphismCategoryConstructionData.toCategoryData_id_comp
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (D : SiteMorphismCategoryConstructionData P X)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism U V) :
    D.toCategoryData.comp (D.toCategoryData.id U) f = f :=
  D.id_comp f

theorem SiteMorphismCategoryData.id_comp_law
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : SiteMorphismCategoryData P X)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism U V) :
    C.comp (C.id U) f = f :=
  C.id_comp f

theorem SiteMorphismCategoryData.comp_id_law
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : SiteMorphismCategoryData P X)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism U V) :
    C.comp f (C.id V) = f :=
  C.comp_id f

theorem SiteMorphismCategoryData.assoc_law
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : SiteMorphismCategoryData P X)
    {U V W Y : PrismaticSiteObject P X}
    (f : SiteMorphism U V)
    (g : SiteMorphism V W)
    (h : SiteMorphism W Y) :
    C.comp (C.comp f g) h = C.comp f (C.comp g h) :=
  C.assoc f g h

/--
A typed covering family of a prismatic-site object.

The family records actual covering objects and maps to the base object.  This is
still certificate-bearing: flatness remains visible through `FlatCover`, and no
comparison or sheaf theorem follows merely from having a family.
-/
structure CoverFamily
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (U : PrismaticSiteObject P X) where
  index : Type u
  obj : index → PrismaticSiteObject P X
  mapToBase : ∀ i, SiteMorphism (obj i) U
  flatCover : ∀ i, FlatCover (obj i)
  boundary : List String

/--
Refinement of cover families over the same base object.

`C` refines `D` when each member of `C` maps to a chosen member of `D` and the
map to the base agrees after composition.  This is the typed relation used by
topology laws below; it is not a Boolean readiness flag.
-/
structure CoverFamilyRefinement
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (Cat : SiteMorphismCategoryData P X)
    {U : PrismaticSiteObject P X}
    (C D : CoverFamily U) where
  mapIndex : C.index → D.index
  refinementMap :
    ∀ i : C.index,
      SiteMorphism (C.obj i) (D.obj (mapIndex i))
  commutesWithBase :
    ∀ i : C.index,
      Cat.comp (refinementMap i) (D.mapToBase (mapIndex i)) =
        C.mapToBase i
  boundary : List String

def CoverFamilyRefinement.refl
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (Cat : SiteMorphismCategoryData P X)
    {U : PrismaticSiteObject P X}
    (C : CoverFamily U) :
    CoverFamilyRefinement Cat C C where
  mapIndex := fun i => i
  refinementMap := fun i => Cat.id (C.obj i)
  commutesWithBase := by
    intro i
    exact Cat.id_comp (C.mapToBase i)
  boundary :=
    [
      "Reflexive refinement by identity site morphisms.",
      "No sheaf condition or prismatic comparison theorem is asserted."
    ]

def CoverFamilyRefinement.trans
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    {C D E : CoverFamily U}
    (R : CoverFamilyRefinement Cat C D)
    (S : CoverFamilyRefinement Cat D E) :
    CoverFamilyRefinement Cat C E where
  mapIndex := fun i => S.mapIndex (R.mapIndex i)
  refinementMap := fun i =>
    Cat.comp (R.refinementMap i) (S.refinementMap (R.mapIndex i))
  commutesWithBase := by
    intro i
    calc
      Cat.comp
            (Cat.comp (R.refinementMap i) (S.refinementMap (R.mapIndex i)))
            (E.mapToBase (S.mapIndex (R.mapIndex i)))
          =
          Cat.comp
            (R.refinementMap i)
            (Cat.comp
              (S.refinementMap (R.mapIndex i))
              (E.mapToBase (S.mapIndex (R.mapIndex i)))) := by
            exact Cat.assoc
              (R.refinementMap i)
              (S.refinementMap (R.mapIndex i))
              (E.mapToBase (S.mapIndex (R.mapIndex i)))
      _ = Cat.comp (R.refinementMap i) (D.mapToBase (R.mapIndex i)) := by
            rw [S.commutesWithBase (R.mapIndex i)]
      _ = C.mapToBase i := R.commutesWithBase i
  boundary :=
    [
      "Transitive refinement by composing refinement morphisms.",
      "Uses only supplied site-category associativity."
    ]

/--
Saturation data for prismatic covers.

This records the operation a site proof must provide when passing to saturated
covering families.  It is data over `CoverFamily`, not a Boolean or raw
propositional placeholder.
-/
structure CoveringSaturationData
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  saturate :
    ∀ U : PrismaticSiteObject P X,
      CoverFamily U → CoverFamily U
  boundary : List String

/--
Topology axioms for the prismatic site.

This is a theorem-facing input object, not a proof that the current presheaf
interfaces are sheaves.  A value must provide typed identity, composition,
pullback, and saturation cover data before a sheaf certificate can be formed
over the site.
-/
structure PrismaticSiteAxioms
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  category : SiteMorphismCategoryData P X
  identityCover :
    ∀ U : PrismaticSiteObject P X,
      CoverFamily U
  coverComposition :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      ((i : C.index) → CoverFamily (C.obj i)) →
        CoverFamily U
  pullbackCover :
    ∀ {U V : PrismaticSiteObject P X},
      SiteMorphism V U → CoverFamily U → CoverFamily V
  coveringSaturation : CoveringSaturationData P X
  boundary : List String

/--
Topology laws for the prismatic-site cover operations.

`PrismaticSiteAxioms` supplies operations.  This structure records the laws a
genuine Grothendieck-topology construction must also supply: pullback identity
and composition laws up to typed refinement, saturation laws, and an explicit
associativity law for cover composition.  Supplying these laws still does not
prove that `O_Delta` or `O_Delta_bar` is a sheaf.
-/
structure PrismaticSiteTopologyLaws
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (T : PrismaticSiteAxioms P X) where
  pullback_id :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover (T.category.id U) C)
        C
  pullback_id_reverse :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        C
        (T.pullbackCover (T.category.id U) C)
  pullback_comp :
    ∀ {U V W : PrismaticSiteObject P X}
      (f : SiteMorphism V U)
      (g : SiteMorphism W V)
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover g (T.pullbackCover f C))
        (T.pullbackCover (T.category.comp g f) C)
  pullback_comp_reverse :
    ∀ {U V W : PrismaticSiteObject P X}
      (f : SiteMorphism V U)
      (g : SiteMorphism W V)
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover (T.category.comp g f) C)
        (T.pullbackCover g (T.pullbackCover f C))
  composition_assoc : Prop
  composition_assoc_certified : composition_assoc
  saturation_refines :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.coveringSaturation.saturate U C)
        C
  saturation_idempotent :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.coveringSaturation.saturate U
          (T.coveringSaturation.saturate U C))
        (T.coveringSaturation.saturate U C)
  saturation_idempotent_reverse :
    ∀ {U : PrismaticSiteObject P X}
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.coveringSaturation.saturate U C)
        (T.coveringSaturation.saturate U
          (T.coveringSaturation.saturate U C))
  saturation_stable_under_pullback :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism V U)
      (C : CoverFamily U),
      CoverFamilyRefinement
        T.category
        (T.pullbackCover f (T.coveringSaturation.saturate U C))
        (T.coveringSaturation.saturate V (T.pullbackCover f C))
  boundary : List String

def PrismaticSiteTopologyLaws.pullback_id_refines
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T)
    {U : PrismaticSiteObject P X}
    (C : CoverFamily U) :
    CoverFamilyRefinement
      T.category
      (T.pullbackCover (T.category.id U) C)
      C :=
  L.pullback_id C

def PrismaticSiteTopologyLaws.saturation_refines_cover
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T)
    {U : PrismaticSiteObject P X}
    (C : CoverFamily U) :
    CoverFamilyRefinement
      T.category
      (T.coveringSaturation.saturate U C)
      C :=
  L.saturation_refines C

def PrismaticSiteTopologyLaws.pullback_comp_refines
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T)
    {U V W : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (g : SiteMorphism W V)
    (C : CoverFamily U) :
    CoverFamilyRefinement
      T.category
      (T.pullbackCover g (T.pullbackCover f C))
      (T.pullbackCover (T.category.comp g f) C) :=
  L.pullback_comp f g C

def PrismaticSiteTopologyLaws.pullback_comp_refines_reverse
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T)
    {U V W : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (g : SiteMorphism W V)
    (C : CoverFamily U) :
    CoverFamilyRefinement
      T.category
      (T.pullbackCover (T.category.comp g f) C)
      (T.pullbackCover g (T.pullbackCover f C)) :=
  L.pullback_comp_reverse f g C

theorem PrismaticSiteTopologyLaws.composition_assoc_law
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T) :
    L.composition_assoc :=
  L.composition_assoc_certified

def PrismaticSiteTopologyLaws.saturation_idempotent_refines
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T)
    {U : PrismaticSiteObject P X}
    (C : CoverFamily U) :
    CoverFamilyRefinement
      T.category
      (T.coveringSaturation.saturate U
        (T.coveringSaturation.saturate U C))
      (T.coveringSaturation.saturate U C) :=
  L.saturation_idempotent C

def PrismaticSiteTopologyLaws.saturation_idempotent_refines_reverse
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T)
    {U : PrismaticSiteObject P X}
    (C : CoverFamily U) :
    CoverFamilyRefinement
      T.category
      (T.coveringSaturation.saturate U C)
      (T.coveringSaturation.saturate U
        (T.coveringSaturation.saturate U C)) :=
  L.saturation_idempotent_reverse C

def PrismaticSiteTopologyLaws.saturation_stable_under_pullback_refines
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {T : PrismaticSiteAxioms P X}
    (L : PrismaticSiteTopologyLaws T)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (C : CoverFamily U) :
    CoverFamilyRefinement
      T.category
      (T.pullbackCover f (T.coveringSaturation.saturate U C))
      (T.coveringSaturation.saturate V (T.pullbackCover f C)) :=
  L.saturation_stable_under_pullback f C

structure StructurePresheafInterface
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  valueLabel : String
  boundary : List String

/--
Minimal commutative-ring-like structure on a section type.

The current Surface prismatic layer intentionally avoids importing a large
commutative-algebra hierarchy.  This record is therefore operation-level data
plus Prop-valued law certificates; it is not a Boolean readiness flag and it is
not a comparison theorem.
-/
structure CommRingLike
    (α : Type u) where
  zero : α
  one : α
  add : α → α → α
  neg : α → α
  mul : α → α → α
  add_comm : Prop
  add_comm_certified : add_comm
  add_assoc : Prop
  add_assoc_certified : add_assoc
  add_zero : Prop
  add_zero_certified : add_zero
  add_left_neg : Prop
  add_left_neg_certified : add_left_neg
  mul_comm : Prop
  mul_comm_certified : mul_comm
  mul_assoc : Prop
  mul_assoc_certified : mul_assoc
  one_mul : Prop
  one_mul_certified : one_mul
  left_distrib : Prop
  left_distrib_certified : left_distrib
  lawBoundary : List String

/--
Homomorphism data between two commutative-ring-like section types.

The map is supplied externally, usually by a presheaf restriction map.  The
preservation laws are equality-level targets over the concrete operations.
-/
structure CommRingHomLike
    {α β : Type u}
    (R : CommRingLike α)
    (S : CommRingLike β)
    (map : α → β) where
  preserves_zero : map R.zero = S.zero
  preserves_one : map R.one = S.one
  preserves_add :
    ∀ x y, map (R.add x y) = S.add (map x) (map y)
  preserves_neg :
    ∀ x, map (R.neg x) = S.neg (map x)
  preserves_mul :
    ∀ x y, map (R.mul x y) = S.mul (map x) (map y)
  boundary : List String

/--
Functorial presheaf data on the prismatic-site category.

This is stronger than `StructurePresheafInterface`: it supplies actual section
types and restriction maps, together with the identity and composition laws for
contravariant functoriality.  `ODeltaPresheaf` and `ODeltaBarPresheaf` below
remain label interfaces until separate values of this structure are supplied.
-/
structure StructurePresheafData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (F : StructurePresheafInterface P X)
    (C : SiteMorphismCategoryData P X) where
  sections :
    PrismaticSiteObject P X → Type u
  restrict :
    ∀ {U V : PrismaticSiteObject P X},
      SiteMorphism V U →
      sections U →
        sections V
  restrict_id :
    ∀ {U : PrismaticSiteObject P X}
      (s : sections U),
        restrict (C.id U) s = s
  restrict_comp :
    ∀ {U V W : PrismaticSiteObject P X}
      (f : SiteMorphism V U)
      (g : SiteMorphism W V)
      (s : sections U),
        restrict (C.comp g f) s =
          restrict g (restrict f s)
  boundary : List String

/--
Ring-valued functorial presheaf data.

This is the first structure in the site layer that can honestly support the
phrase "ring-valued presheaf": each section type has commutative-ring-like
operations, and every restriction map carries homomorphism data.  This still
does not assert sheafhood.
-/
structure StructurePresheafOfRingsData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (F : StructurePresheafInterface P X)
    (C : SiteMorphismCategoryData P X) where
  presheafData : StructurePresheafData F C
  ringStructure :
    ∀ U : PrismaticSiteObject P X,
      CommRingLike (presheafData.sections U)
  restrict_is_ring_hom :
    ∀ {U V : PrismaticSiteObject P X}
      (f : SiteMorphism V U),
        CommRingHomLike
          (ringStructure U)
          (ringStructure V)
          (presheafData.restrict f)
  boundary : List String

theorem StructurePresheafOfRingsData.restrict_preserves_zero
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafOfRingsData F C)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U) :
    D.presheafData.restrict f (D.ringStructure U).zero =
      (D.ringStructure V).zero :=
  (D.restrict_is_ring_hom f).preserves_zero

theorem StructurePresheafOfRingsData.restrict_preserves_one
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafOfRingsData F C)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U) :
    D.presheafData.restrict f (D.ringStructure U).one =
      (D.ringStructure V).one :=
  (D.restrict_is_ring_hom f).preserves_one

theorem StructurePresheafOfRingsData.restrict_preserves_add
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafOfRingsData F C)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (x y : D.presheafData.sections U) :
    D.presheafData.restrict f ((D.ringStructure U).add x y) =
      (D.ringStructure V).add
        (D.presheafData.restrict f x)
        (D.presheafData.restrict f y) :=
  (D.restrict_is_ring_hom f).preserves_add x y

theorem StructurePresheafOfRingsData.restrict_preserves_mul
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafOfRingsData F C)
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (x y : D.presheafData.sections U) :
    D.presheafData.restrict f ((D.ringStructure U).mul x y) =
      (D.ringStructure V).mul
        (D.presheafData.restrict f x)
        (D.presheafData.restrict f y) :=
  (D.restrict_is_ring_hom f).preserves_mul x y

theorem StructurePresheafData.restrict_id_law
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafData F C)
    {U : PrismaticSiteObject P X}
    (s : D.sections U) :
    D.restrict (C.id U) s = s :=
  D.restrict_id s

theorem StructurePresheafData.restrict_comp_law
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafData F C)
    {U V W : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (g : SiteMorphism W V)
    (s : D.sections U) :
    D.restrict (C.comp g f) s =
      D.restrict g (D.restrict f s) :=
  D.restrict_comp f g s

/-- A section backed by functorial presheaf data. -/
structure FunctorialPresheafSection
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafData F C)
    (U : PrismaticSiteObject P X) where
  value : D.sections U
  boundary : List String

/--
Restriction data produced by a functorial presheaf.

Unlike `RestrictionDatum`, this record is not a free-standing witness: its
restricted value is definitionally obtained from `StructurePresheafData.restrict`.
-/
structure FunctorialRestrictionDatum
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {U V : PrismaticSiteObject P X}
    (D : StructurePresheafData F C)
    (f : SiteMorphism V U)
    (source : FunctorialPresheafSection D U)
    (target : FunctorialPresheafSection D V) where
  targetMatchesRestriction :
    target.value = D.restrict f source.value
  boundary : List String

def ODeltaPresheaf
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) :
    StructurePresheafInterface P X where
  valueLabel := "O_Delta"
  boundary := [
    "Structure presheaf interface for the prismatic site.",
    "No sheaf condition is asserted here; sheafhood requires a separate certificate."
  ]

def ODeltaBarPresheaf
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) :
    StructurePresheafInterface P X where
  valueLabel := "O_Delta_bar"
  boundary := [
    "Reduced structure presheaf interface for the prismatic site.",
    "No sheaf condition is asserted here; sheafhood requires a separate certificate."
  ]

/-- Ring-valued presheaf data for `O_Delta`, when supplied. -/
structure ODeltaRingPresheafData
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme)
    (C : SiteMorphismCategoryData P X) where
  data : StructurePresheafOfRingsData (ODeltaPresheaf P X) C
  boundary : List String

/-- Ring-valued presheaf data for `O_Delta_bar`, when supplied. -/
structure ODeltaBarRingPresheafData
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme)
    (C : SiteMorphismCategoryData P X) where
  data : StructurePresheafOfRingsData (ODeltaBarPresheaf P X) C
  boundary : List String

/--
Status of a supplied structure-presheaf construction.

This is proof-boundary metadata.  It separates construction inside Surface,
imported theorem input, explicit external assumption input, and placeholder
data.  Conditional theorem interfaces may accept explicit external assumptions,
but final theorem gates must reject both `externalAssumption` and
`placeholderInput`.
-/
inductive ConstructionStatus where
  | constructedInSurface
  | importedTheorem
  | externalAssumption
  | placeholderInput
deriving Repr, DecidableEq

namespace ConstructionStatus

/-- A construction status is admissible for conditional theorem interfaces iff it is not a placeholder. -/
def usableForConditionalProof
    (s : ConstructionStatus) : Prop :=
  s ≠ ConstructionStatus.placeholderInput

/--
Final theorem gates accept only constructions checked in Surface or imported
theorem-grade inputs.  Explicit external assumptions remain useful for
conditional interfaces, but they are not final theorem authority.
-/
def usableForFinalTheorem
    (s : ConstructionStatus) : Prop :=
  s = ConstructionStatus.constructedInSurface ∨
    s = ConstructionStatus.importedTheorem

/-- Major-proof gates are final theorem gates, not conditional assumption gates. -/
def usableForMajorProof
    (s : ConstructionStatus) : Prop :=
  s.usableForFinalTheorem

theorem constructedInSurface_usableForConditionalProof :
    ConstructionStatus.constructedInSurface.usableForConditionalProof := by
  intro h
  cases h

theorem importedTheorem_usableForConditionalProof :
    ConstructionStatus.importedTheorem.usableForConditionalProof := by
  intro h
  cases h

theorem externalAssumption_usableForConditionalProof :
    ConstructionStatus.externalAssumption.usableForConditionalProof := by
  intro h
  cases h

theorem placeholderInput_not_usableForConditionalProof :
    ¬ ConstructionStatus.placeholderInput.usableForConditionalProof := by
  intro h
  exact h rfl

theorem constructedInSurface_usableForFinalTheorem :
    ConstructionStatus.constructedInSurface.usableForFinalTheorem :=
  Or.inl rfl

theorem importedTheorem_usableForFinalTheorem :
    ConstructionStatus.importedTheorem.usableForFinalTheorem :=
  Or.inr rfl

theorem constructedInSurface_usableForMajorProof :
    ConstructionStatus.constructedInSurface.usableForMajorProof :=
  constructedInSurface_usableForFinalTheorem

theorem importedTheorem_usableForMajorProof :
    ConstructionStatus.importedTheorem.usableForMajorProof :=
  importedTheorem_usableForFinalTheorem

theorem externalAssumption_not_usableForFinalTheorem :
    ¬ ConstructionStatus.externalAssumption.usableForFinalTheorem := by
  intro h
  rcases h with h | h <;> cases h

theorem externalAssumption_not_usableForMajorProof :
    ¬ ConstructionStatus.externalAssumption.usableForMajorProof :=
  externalAssumption_not_usableForFinalTheorem

theorem placeholderInput_not_usableForFinalTheorem :
    ¬ ConstructionStatus.placeholderInput.usableForFinalTheorem := by
  intro h
  rcases h with h | h <;> cases h

theorem placeholderInput_not_usableForMajorProof :
    ¬ ConstructionStatus.placeholderInput.usableForMajorProof :=
  placeholderInput_not_usableForFinalTheorem

theorem finalTheorem_usableForConditionalProof
    {s : ConstructionStatus}
    (h : s.usableForFinalTheorem) :
    s.usableForConditionalProof := by
  intro hp
  rcases h with hs | hs
  · rw [hp] at hs
    cases hs
  · rw [hp] at hs
    cases hs

theorem finalTheorem_rejects_externalAssumption
    {s : ConstructionStatus}
    (h : s.usableForFinalTheorem) :
    s ≠ ConstructionStatus.externalAssumption := by
  intro hs'
  rcases h with hs | hs
  · rw [hs'] at hs
    cases hs
  · rw [hs'] at hs
    cases hs

theorem finalTheorem_rejects_placeholderInput
    {s : ConstructionStatus}
    (h : s.usableForFinalTheorem) :
    s ≠ ConstructionStatus.placeholderInput := by
  intro hs'
  rcases h with hs | hs
  · rw [hs'] at hs
    cases hs
  · rw [hs'] at hs
    cases hs

theorem majorProof_rejects_externalAssumption
    {s : ConstructionStatus}
    (h : s.usableForMajorProof) :
    s ≠ ConstructionStatus.externalAssumption :=
  finalTheorem_rejects_externalAssumption h

theorem majorProof_rejects_placeholderInput
    {s : ConstructionStatus}
    (h : s.usableForMajorProof) :
    s ≠ ConstructionStatus.placeholderInput :=
  finalTheorem_rejects_placeholderInput h

end ConstructionStatus

/--
Construction input for `O_Delta` as a ring-valued presheaf.

This is intentionally named as input.  The present file does not derive the
Bhatt--Scholze structure presheaf from the prism data; it only records the
typed object that a later construction or imported theorem must supply.  The
`status` field records whether this input is constructed, imported, an explicit
external assumption, or merely a placeholder.
-/
structure ODeltaRingPresheafConstructionInput
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme)
    (C : SiteMorphismCategoryData P X) where
  status : ConstructionStatus
  ringPresheaf : ODeltaRingPresheafData P X C
  constructionBoundary : List String

def ODeltaRingPresheafConstructionInput.usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C) :
    Prop :=
  I.status.usableForConditionalProof

def ODeltaRingPresheafConstructionInput.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C) :
    Prop :=
  I.status.usableForFinalTheorem

def ODeltaRingPresheafConstructionInput.usableForMajorProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C) :
    Prop :=
  I.status.usableForMajorProof

theorem ODeltaRingPresheafConstructionInput.finalTheorem_usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C)
    (h : I.usableForFinalTheorem) :
    I.usableForConditionalProof :=
  ConstructionStatus.finalTheorem_usableForConditionalProof h

theorem ODeltaRingPresheafConstructionInput.rejects_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    I.status ≠ ConstructionStatus.placeholderInput :=
  ConstructionStatus.majorProof_rejects_placeholderInput h

theorem ODeltaRingPresheafConstructionInput.rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    I.status ≠ ConstructionStatus.externalAssumption :=
  ConstructionStatus.majorProof_rejects_externalAssumption h

def ODeltaRingPresheafData.fromConstructionInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C)
    (_h : I.usableForConditionalProof) :
    ODeltaRingPresheafData P X C :=
  I.ringPresheaf

def ODeltaRingPresheafData.fromFinalTheoremConstructionInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C)
    (h : I.usableForFinalTheorem) :
    ODeltaRingPresheafData P X C :=
  ODeltaRingPresheafData.fromConstructionInput I
    (I.finalTheorem_usableForConditionalProof h)

def ODeltaRingPresheafData.fromMajorProofConstructionInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    ODeltaRingPresheafData P X C :=
  ODeltaRingPresheafData.fromFinalTheoremConstructionInput I h

theorem ODeltaRingPresheafConstructionInput.majorProofExtraction_rejects_weak_status
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    I.status ≠ ConstructionStatus.externalAssumption ∧
      I.status ≠ ConstructionStatus.placeholderInput :=
  ⟨I.rejects_externalAssumption h, I.rejects_placeholderInput h⟩

/--
Construction input for `O_Delta_bar` as a ring-valued presheaf.

Supplying this object does not assert sheafhood, smooth comparison, or any
Bhatt--Scholze comparison theorem.  Those remain separate theorem or certificate
inputs.  The `status` field records whether this input is constructed,
imported, an explicit external assumption, or merely a placeholder.
-/
structure ODeltaBarRingPresheafConstructionInput
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme)
    (C : SiteMorphismCategoryData P X) where
  status : ConstructionStatus
  ringPresheaf : ODeltaBarRingPresheafData P X C
  constructionBoundary : List String

def ODeltaBarRingPresheafConstructionInput.usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C) :
    Prop :=
  I.status.usableForConditionalProof

def ODeltaBarRingPresheafConstructionInput.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C) :
    Prop :=
  I.status.usableForFinalTheorem

def ODeltaBarRingPresheafConstructionInput.usableForMajorProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C) :
    Prop :=
  I.status.usableForMajorProof

theorem ODeltaBarRingPresheafConstructionInput.finalTheorem_usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C)
    (h : I.usableForFinalTheorem) :
    I.usableForConditionalProof :=
  ConstructionStatus.finalTheorem_usableForConditionalProof h

theorem ODeltaBarRingPresheafConstructionInput.rejects_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    I.status ≠ ConstructionStatus.placeholderInput :=
  ConstructionStatus.majorProof_rejects_placeholderInput h

theorem ODeltaBarRingPresheafConstructionInput.rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    I.status ≠ ConstructionStatus.externalAssumption :=
  ConstructionStatus.majorProof_rejects_externalAssumption h

def ODeltaBarRingPresheafData.fromConstructionInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C)
    (_h : I.usableForConditionalProof) :
    ODeltaBarRingPresheafData P X C :=
  I.ringPresheaf

def ODeltaBarRingPresheafData.fromFinalTheoremConstructionInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C)
    (h : I.usableForFinalTheorem) :
    ODeltaBarRingPresheafData P X C :=
  ODeltaBarRingPresheafData.fromConstructionInput I
    (I.finalTheorem_usableForConditionalProof h)

def ODeltaBarRingPresheafData.fromMajorProofConstructionInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    ODeltaBarRingPresheafData P X C :=
  ODeltaBarRingPresheafData.fromFinalTheoremConstructionInput I h

theorem ODeltaBarRingPresheafConstructionInput.majorProofExtraction_rejects_weak_status
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : ODeltaBarRingPresheafConstructionInput P X C)
    (h : I.usableForMajorProof) :
    I.status ≠ ConstructionStatus.externalAssumption ∧
      I.status ≠ ConstructionStatus.placeholderInput :=
  ⟨I.rejects_externalAssumption h, I.rejects_placeholderInput h⟩

/--
Joint construction input for the two structure presheaves on the prismatic site.

This is the precise gate for the pair `(O_Delta, O_Delta_bar)`.  Conditional
development may use explicitly supplied external assumptions, but final theorem
cones require both presheaves to be either constructed in Surface or imported as
theorem-grade inputs.
-/
structure PrismaticStructurePresheafConstructionInputs
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme)
    (C : SiteMorphismCategoryData P X) where
  ODelta :
    ODeltaRingPresheafConstructionInput P X C
  ODeltaBar :
    ODeltaBarRingPresheafConstructionInput P X C
  constructionBoundary : List String

def PrismaticStructurePresheafConstructionInputs.usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C) :
    Prop :=
  I.ODelta.usableForConditionalProof ∧
    I.ODeltaBar.usableForConditionalProof

def PrismaticStructurePresheafConstructionInputs.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C) :
    Prop :=
  I.ODelta.usableForFinalTheorem ∧
    I.ODeltaBar.usableForFinalTheorem

def PrismaticStructurePresheafConstructionInputs.usableForMajorProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C) :
    Prop :=
  I.usableForFinalTheorem

theorem PrismaticStructurePresheafConstructionInputs.finalTheorem_usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForFinalTheorem) :
    I.usableForConditionalProof :=
  ⟨
    I.ODelta.finalTheorem_usableForConditionalProof h.1,
    I.ODeltaBar.finalTheorem_usableForConditionalProof h.2
  ⟩

theorem PrismaticStructurePresheafConstructionInputs.rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForMajorProof) :
    I.ODelta.status ≠ ConstructionStatus.externalAssumption ∧
      I.ODeltaBar.status ≠ ConstructionStatus.externalAssumption :=
  ⟨
    I.ODelta.rejects_externalAssumption h.1,
    I.ODeltaBar.rejects_externalAssumption h.2
  ⟩

theorem PrismaticStructurePresheafConstructionInputs.rejects_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForMajorProof) :
    I.ODelta.status ≠ ConstructionStatus.placeholderInput ∧
      I.ODeltaBar.status ≠ ConstructionStatus.placeholderInput :=
  ⟨
    I.ODelta.rejects_placeholderInput h.1,
    I.ODeltaBar.rejects_placeholderInput h.2
  ⟩

def PrismaticStructurePresheafConstructionInputs.toPresheafData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForConditionalProof) :
    ODeltaRingPresheafData P X C ×
      ODeltaBarRingPresheafData P X C :=
  ⟨
    ODeltaRingPresheafData.fromConstructionInput I.ODelta h.1,
    ODeltaBarRingPresheafData.fromConstructionInput I.ODeltaBar h.2
  ⟩

def PrismaticStructurePresheafConstructionInputs.toFinalTheoremPresheafData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForFinalTheorem) :
    ODeltaRingPresheafData P X C ×
      ODeltaBarRingPresheafData P X C :=
  I.toPresheafData (I.finalTheorem_usableForConditionalProof h)

def PrismaticStructurePresheafConstructionInputs.toMajorProofPresheafData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForMajorProof) :
    ODeltaRingPresheafData P X C ×
      ODeltaBarRingPresheafData P X C :=
  I.toFinalTheoremPresheafData h

theorem PrismaticStructurePresheafConstructionInputs.majorProofExtraction_rejects_weak_status
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : SiteMorphismCategoryData P X}
    (I : PrismaticStructurePresheafConstructionInputs P X C)
    (h : I.usableForMajorProof) :
    I.ODelta.status ≠ ConstructionStatus.externalAssumption ∧
      I.ODeltaBar.status ≠ ConstructionStatus.externalAssumption ∧
      I.ODelta.status ≠ ConstructionStatus.placeholderInput ∧
      I.ODeltaBar.status ≠ ConstructionStatus.placeholderInput := by
  exact
    ⟨(I.rejects_externalAssumption h).1,
      (I.rejects_externalAssumption h).2,
      (I.rejects_placeholderInput h).1,
      (I.rejects_placeholderInput h).2⟩

/--
Actual section of a ring-valued structure presheaf.

Unlike labelled `DescriptorPresheafSection` below, this section is a value of the
dependent section type supplied by `StructurePresheafOfRingsData`.  This is the
theorem-facing section notion for future sheafhood and comparison proofs.
-/
structure ActualPresheafSection
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    (D : StructurePresheafOfRingsData F C)
    (U : PrismaticSiteObject P X) where
  value : D.presheafData.sections U
  boundary : List String

def ActualPresheafSection.restrict
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F C}
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (s : ActualPresheafSection D U) :
    ActualPresheafSection D V where
  value := D.presheafData.restrict f s.value
  boundary :=
    s.boundary ++
      ["Restricted by StructurePresheafOfRingsData.presheafData.restrict."]

theorem ActualPresheafSection.restrict_value
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F C}
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (s : ActualPresheafSection D U) :
    (ActualPresheafSection.restrict f s).value =
      D.presheafData.restrict f s.value :=
  rfl

/-- Equality data between actual dependent presheaf sections. -/
structure ActualSectionEqualityData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F C}
    {U : PrismaticSiteObject P X}
    (left right : ActualPresheafSection D U) where
  equal : left.value = right.value
  boundary : List String

/--
Restriction datum for actual dependent presheaf sections.

The target section is checked against the functorial restriction map from the
ring-valued presheaf data.  This is the typed replacement for label-only
restriction evidence when actual sections are available.
-/
structure ActualRestrictionDatum
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F C}
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (source : ActualPresheafSection D U)
    (target : ActualPresheafSection D V) where
  targetMatchesRestriction :
    target.value = D.presheafData.restrict f source.value
  boundary : List String

def ActualRestrictionDatum.fromPresheafRestriction
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {C : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F C}
    {U V : PrismaticSiteObject P X}
    (f : SiteMorphism V U)
    (source : ActualPresheafSection D U) :
    ActualRestrictionDatum f source (ActualPresheafSection.restrict f source) where
  targetMatchesRestriction := rfl
  boundary := [
    "Restriction target is definitionally obtained from ring-presheaf data."
  ]

/--
A labelled formal section of a structure presheaf over a prismatic-site object.

This record is retained for descriptor-level site reports.  It is not the
theorem-facing section type for ring-valued sheafhood; use
`ActualPresheafSection` once `StructurePresheafOfRingsData` is available.
-/
structure DescriptorPresheafSection
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (F : StructurePresheafInterface P X)
    (U : PrismaticSiteObject P X) where
  sectionLabel : String
  boundary : List String

/--
Typed equality data between two presheaf sections.

This is deliberately small: it gives later sheaf proofs an equality-level target
instead of a prose label, while still avoiding any claim that `O_Delta` has
already been proved to be a sheaf.
-/
structure DescriptorSectionEqualityData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {U : PrismaticSiteObject P X}
    (F : StructurePresheafInterface P X)
    (left right : DescriptorPresheafSection F U) where
  equal : left = right
  boundary : List String

/--
Restriction data for a section along a site morphism.

This is intentionally not a theorem asserting that a concrete prismatic
structure sheaf restricts correctly; it is the typed datum a later theorem must
construct for `O_Delta` or `O_Delta_bar`.
-/
structure RestrictionDatum
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {U V : PrismaticSiteObject P X}
    (F : StructurePresheafInterface P X)
    (f : SiteMorphism V U)
    (source : DescriptorPresheafSection F U)
    (target : DescriptorPresheafSection F V) where
  restrictedSection : DescriptorPresheafSection F V
  targetMatchesRestriction : DescriptorSectionEqualityData F target restrictedSection
  boundary : List String

/-- A chosen overlap object for two members of a cover. -/
structure CoverOverlap
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {U : PrismaticSiteObject P X}
    (C : CoverFamily U)
    (i j : C.index) where
  object : PrismaticSiteObject P X
  leftMap : SiteMorphism object (C.obj i)
  rightMap : SiteMorphism object (C.obj j)
  boundary : List String

/--
Pullback-square data for a cover overlap.

The older `CoverOverlap` record only stores an overlap object with maps to the
two cover members.  This refinement records the actual square over the covered
object and a universal property.  It is still supplied theorem data; the file
does not derive pullbacks in the prismatic site.
-/
structure CoverOverlapPullbackData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    {C : CoverFamily U}
    {i j : C.index}
    (O : CoverOverlap C i j) where
  squareCommutes :
    Cat.comp O.leftMap (C.mapToBase i) =
      Cat.comp O.rightMap (C.mapToBase j)
  lift :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j)),
      Cat.comp left (C.mapToBase i) =
        Cat.comp right (C.mapToBase j) →
        SiteMorphism W O.object
  lift_left :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j))
      (h :
        Cat.comp left (C.mapToBase i) =
          Cat.comp right (C.mapToBase j)),
        Cat.comp (lift left right h) O.leftMap = left
  lift_right :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j))
      (h :
        Cat.comp left (C.mapToBase i) =
          Cat.comp right (C.mapToBase j)),
        Cat.comp (lift left right h) O.rightMap = right
  lift_unique :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j))
      (h :
        Cat.comp left (C.mapToBase i) =
          Cat.comp right (C.mapToBase j))
      (m : SiteMorphism W O.object),
        Cat.comp m O.leftMap = left →
        Cat.comp m O.rightMap = right →
          m = lift left right h
  boundary : List String

structure CoverPullbackOverlap
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    (C : CoverFamily U)
    (i j : C.index) where
  overlap : CoverOverlap C i j
  pullbackData : CoverOverlapPullbackData (Cat := Cat) overlap
  boundary : List String

theorem CoverOverlapPullbackData.square
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    {C : CoverFamily U}
    {i j : C.index}
    {O : CoverOverlap C i j}
    (D : CoverOverlapPullbackData (Cat := Cat) O) :
    Cat.comp O.leftMap (C.mapToBase i) =
      Cat.comp O.rightMap (C.mapToBase j) :=
  D.squareCommutes

/--
Compatibility data on a cover overlap for actual dependent sections.

This is the theorem-facing overlap shape for ring-valued prismatic sheafhood:
the two restrictions are values in the dependent section type supplied by
`StructurePresheafOfRingsData`.
-/
structure ActualOverlapCompatibilityData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {Cat : SiteMorphismCategoryData P X}
    {D : StructurePresheafOfRingsData F Cat}
    {U : PrismaticSiteObject P X}
    {C : CoverFamily U}
    {i j : C.index}
    (O : CoverOverlap C i j)
    (left : ActualPresheafSection D (C.obj i))
    (right : ActualPresheafSection D (C.obj j)) where
  leftRestrictionSection : ActualPresheafSection D O.object
  rightRestrictionSection : ActualPresheafSection D O.object
  leftRestriction :
    ActualRestrictionDatum O.leftMap left leftRestrictionSection
  rightRestriction :
    ActualRestrictionDatum O.rightMap right rightRestrictionSection
  compatible :
    ActualSectionEqualityData leftRestrictionSection rightRestrictionSection
  boundary : List String

/-- A matching family over a typed prismatic cover using actual sections. -/
structure ActualMatchingFamily
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    (D : StructurePresheafOfRingsData F Cat)
    (C : CoverFamily U) where
  localSection : ∀ i : C.index, ActualPresheafSection D (C.obj i)
  overlap : ∀ i j : C.index, CoverOverlap C i j
  overlapCompatible :
    ∀ i j : C.index,
      ActualOverlapCompatibilityData
        (overlap i j)
        (localSection i)
        (localSection j)
  boundary : List String

/--
A theorem-facing actual matching family whose overlaps are certified pullbacks.

This is the strengthened version used by future prismatic sheafhood arguments:
local sections are actual dependent section values, and every pairwise overlap
carries the pullback universal property over the two cover maps.
-/
structure ActualPullbackMatchingFamily
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    (D : StructurePresheafOfRingsData F Cat)
    (C : CoverFamily U) where
  localSection : ∀ i : C.index, ActualPresheafSection D (C.obj i)
  overlap : ∀ i j : C.index, CoverPullbackOverlap (Cat := Cat) C i j
  overlapCompatible :
    ∀ i j : C.index,
      ActualOverlapCompatibilityData
        (overlap i j).overlap
        (localSection i)
        (localSection j)
  boundary : List String

def ActualPullbackMatchingFamily.toActualMatchingFamily
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    {D : StructurePresheafOfRingsData F Cat}
    {C : CoverFamily U}
    (M : ActualPullbackMatchingFamily D C) :
    ActualMatchingFamily D C where
  localSection := M.localSection
  overlap := fun i j => (M.overlap i j).overlap
  overlapCompatible := M.overlapCompatible
  boundary :=
    M.boundary ++
      [
        "Converted from pullback-overlap matching data.",
        "The pullback certificates remain present in the source matching family."
      ]

/-- A gluing datum for an actual matching family. -/
structure ActualGluingDatum
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    (D : StructurePresheafOfRingsData F Cat)
    {C : CoverFamily U}
    (M : ActualMatchingFamily D C) where
  gluedSection : ActualPresheafSection D U
  restrictsTo :
    ∀ i : C.index,
      ActualRestrictionDatum (C.mapToBase i) gluedSection (M.localSection i)
  boundary : List String

/-- Uniqueness data for two actual gluings of the same matching family. -/
structure ActualGluingUniquenessData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    (D : StructurePresheafOfRingsData F Cat)
    {C : CoverFamily U}
    (M : ActualMatchingFamily D C)
    (G H : ActualGluingDatum D M) where
  sameGluedSection :
    ActualSectionEqualityData G.gluedSection H.gluedSection
  boundary : List String

/--
Compatibility data on a cover overlap.

The two local sections are restricted to a typed overlap object and then
identified by equality data.  This is the local compatibility shape a genuine
sheaf theorem must eventually construct.
-/
structure OverlapCompatibilityData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {U : PrismaticSiteObject P X}
    {C : CoverFamily U}
    {i j : C.index}
    (F : StructurePresheafInterface P X)
    (O : CoverOverlap C i j)
    (left : DescriptorPresheafSection F (C.obj i))
    (right : DescriptorPresheafSection F (C.obj j)) where
  leftRestrictionSection : DescriptorPresheafSection F O.object
  rightRestrictionSection : DescriptorPresheafSection F O.object
  leftRestriction :
    RestrictionDatum F O.leftMap left leftRestrictionSection
  rightRestriction :
    RestrictionDatum F O.rightMap right rightRestrictionSection
  compatible :
    DescriptorSectionEqualityData F leftRestrictionSection rightRestrictionSection
  boundary : List String

/-- A matching family over a typed prismatic cover. -/
structure MatchingFamily
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {U : PrismaticSiteObject P X}
    (F : StructurePresheafInterface P X)
    (C : CoverFamily U) where
  localSection : ∀ i : C.index, DescriptorPresheafSection F (C.obj i)
  overlap : ∀ i j : C.index, CoverOverlap C i j
  overlapCompatible :
    ∀ i j : C.index,
      OverlapCompatibilityData F (overlap i j) (localSection i) (localSection j)
  boundary : List String

/-- A gluing datum for a matching family. -/
structure GluingDatum
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {U : PrismaticSiteObject P X}
    (F : StructurePresheafInterface P X)
    {C : CoverFamily U}
    (M : MatchingFamily F C) where
  gluedSection : DescriptorPresheafSection F U
  restrictsTo :
    ∀ i : C.index,
      RestrictionDatum F (C.mapToBase i) gluedSection (M.localSection i)
  boundary : List String

/-- Uniqueness data for two gluings of the same matching family. -/
structure GluingUniquenessData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {U : PrismaticSiteObject P X}
    (F : StructurePresheafInterface P X)
    {C : CoverFamily U}
    (M : MatchingFamily F C)
    (G H : GluingDatum F M) where
  sameGluedSection :
    DescriptorSectionEqualityData F G.gluedSection H.gluedSection
  boundary : List String

/--
Sheaf-condition axioms for a structure presheaf over a specified prismatic site
topology.

The fields are typed gluing operations over `CoverFamily`.  They are kept
separate from `SheafCertificate`, so merely naming these operations does not
prove sheafhood for `O_Delta` or `O_Delta_bar`.
-/
structure PresheafSheafAxioms
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (F : StructurePresheafInterface P X)
    (T : PrismaticSiteAxioms P X) where
  gluingExists :
    ∀ {U : PrismaticSiteObject P X}
      {C : CoverFamily U},
      (M : MatchingFamily F C) → GluingDatum F M
  gluingUnique :
    ∀ {U : PrismaticSiteObject P X}
      {C : CoverFamily U}
      (M : MatchingFamily F C),
      (G H : GluingDatum F M) →
        GluingUniquenessData F M G H
  boundary : List String

/--
Sheaf-condition operations for an actual ring-valued presheaf.

Unlike `PresheafSheafAxioms`, this theorem-facing condition is expressed only in
terms of dependent section values from `StructurePresheafOfRingsData`.
-/
structure ActualPresheafSheafAxioms
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    (T : PrismaticSiteAxioms P X)
    (D : StructurePresheafOfRingsData F T.category) where
  gluingExists :
    ∀ {U : PrismaticSiteObject P X}
      {C : CoverFamily U},
      (M : ActualMatchingFamily D C) → ActualGluingDatum D M
  gluingUnique :
    ∀ {U : PrismaticSiteObject P X}
      {C : CoverFamily U}
      (M : ActualMatchingFamily D C),
      (G H : ActualGluingDatum D M) →
        ActualGluingUniquenessData D M G H
  boundary : List String

/--
Sheaf-condition operations for actual sections over pullback-certified overlaps.

This is the stronger theorem-facing sheaf target requested by the referee:
matching families are made of actual dependent section values and every
pairwise overlap carries pullback universal-property data.  It is still a
law package to be supplied by a genuine sheaf proof; it is not a comparison
theorem and does not construct `O_Delta` or `O_Delta_bar`.
-/
structure ActualPullbackPresheafSheafAxioms
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    (T : PrismaticSiteAxioms P X)
    (D : StructurePresheafOfRingsData F T.category) where
  gluingExists :
    ∀ {U : PrismaticSiteObject P X}
      {C : CoverFamily U},
      (M : ActualPullbackMatchingFamily D C) →
        ActualGluingDatum D M.toActualMatchingFamily
  gluingUnique :
    ∀ {U : PrismaticSiteObject P X}
      {C : CoverFamily U}
      (M : ActualPullbackMatchingFamily D C),
      (G H : ActualGluingDatum D M.toActualMatchingFamily) →
        ActualGluingUniquenessData D M.toActualMatchingFamily G H
  boundary : List String

/--
The sheaf condition for a presheaf interface is only meaningful relative to a
specified prismatic topology.  This structure records the condition to be proved;
it does not inhabit the proof.
-/
structure SheafCondition
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (F : StructurePresheafInterface P X)
    (T : PrismaticSiteAxioms P X) where
  sheafAxioms : PresheafSheafAxioms F T
  boundary : List String

/-- The typed data underlying a sheaf condition. -/
def SheafCondition.typedData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {T : PrismaticSiteAxioms P X}
    (S : SheafCondition F T) :
    PresheafSheafAxioms F T :=
  S.sheafAxioms

/--
The theorem-facing sheaf condition for a ring-valued structure presheaf.

The condition uses actual dependent sections rather than descriptor labels.
Supplying a value still does not prove Bhatt--Scholze comparison theorems; it is
only the sheafhood input over the explicitly supplied prismatic topology.
-/
structure ActualSheafCondition
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    (T : PrismaticSiteAxioms P X)
    (D : StructurePresheafOfRingsData F T.category) where
  sheafAxioms : ActualPresheafSheafAxioms T D
  boundary : List String

/--
The theorem-facing sheaf condition over pullback-certified cover overlaps.

This is the preferred target for later `O_Delta` and `O_Delta_bar` sheaf proofs:
it requires actual section values and pullback-certified overlaps.  It remains
a sheafhood input only; comparison theorems require separate certificates.
-/
structure ActualPullbackSheafCondition
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    (T : PrismaticSiteAxioms P X)
    (D : StructurePresheafOfRingsData F T.category) where
  sheafAxioms : ActualPullbackPresheafSheafAxioms T D
  boundary : List String

def ActualSheafCondition.typedData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {T : PrismaticSiteAxioms P X}
    {D : StructurePresheafOfRingsData F T.category}
    (S : ActualSheafCondition T D) :
    ActualPresheafSheafAxioms T D :=
  S.sheafAxioms

def ActualPullbackSheafCondition.typedData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {T : PrismaticSiteAxioms P X}
    {D : StructurePresheafOfRingsData F T.category}
    (S : ActualPullbackSheafCondition T D) :
    ActualPullbackPresheafSheafAxioms T D :=
  S.sheafAxioms

/-- Data carried by a sheaf certificate. -/
structure SheafProofData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (F : StructurePresheafInterface P X)
    {T : PrismaticSiteAxioms P X}
    (S : SheafCondition F T) where
  typedData : PresheafSheafAxioms F T
  boundary : List String

structure SheafCertificate
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (F : StructurePresheafInterface P X)
    {T : PrismaticSiteAxioms P X}
    (S : SheafCondition F T) where
  proofData : SheafProofData F S
  boundary : List String

structure ActualSheafProofData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {T : PrismaticSiteAxioms P X}
    {D : StructurePresheafOfRingsData F T.category}
    (S : ActualSheafCondition T D) where
  typedData : ActualPresheafSheafAxioms T D
  boundary : List String

structure ActualSheafCertificate
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {T : PrismaticSiteAxioms P X}
    {D : StructurePresheafOfRingsData F T.category}
    (S : ActualSheafCondition T D) where
  proofData : ActualSheafProofData S
  boundary : List String

structure ActualPullbackSheafProofData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {T : PrismaticSiteAxioms P X}
    {D : StructurePresheafOfRingsData F T.category}
    (S : ActualPullbackSheafCondition T D) where
  typedData : ActualPullbackPresheafSheafAxioms T D
  boundary : List String

structure ActualPullbackSheafCertificate
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {F : StructurePresheafInterface P X}
    {T : PrismaticSiteAxioms P X}
    {D : StructurePresheafOfRingsData F T.category}
    (S : ActualPullbackSheafCondition T D) where
  proofData : ActualPullbackSheafProofData S
  boundary : List String

structure CertifiedStructureSheaf
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  presheaf : StructurePresheafInterface P X
  topology : PrismaticSiteAxioms P X
  condition : SheafCondition presheaf topology
  certificate : SheafCertificate presheaf condition
  boundary : List String

/--
Certified structure sheaf with ring-valued presheaf data.

This packages the algebraic presheaf structure together with an actual
dependent-section sheaf certificate.  It is still parameterized by an explicitly
supplied topology and does not construct Bhatt--Scholze comparison theorems.
-/
structure CertifiedStructureSheafOfRings
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  presheaf : StructurePresheafInterface P X
  constructionStatus : ConstructionStatus
  topology : PrismaticSiteAxioms P X
  ringPresheaf :
    StructurePresheafOfRingsData presheaf topology.category
  actualCondition : ActualSheafCondition topology ringPresheaf
  actualCertificate : ActualSheafCertificate actualCondition
  boundary : List String

def CertifiedStructureSheafOfRings.usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X) :
    Prop :=
  S.constructionStatus.usableForConditionalProof

def CertifiedStructureSheafOfRings.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X) :
    Prop :=
  S.constructionStatus.usableForFinalTheorem

def CertifiedStructureSheafOfRings.usableForMajorProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X) :
    Prop :=
  S.constructionStatus.usableForMajorProof

theorem CertifiedStructureSheafOfRings.finalTheorem_usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X)
    (h : S.usableForFinalTheorem) :
    S.usableForConditionalProof :=
  ConstructionStatus.finalTheorem_usableForConditionalProof h

theorem CertifiedStructureSheafOfRings.rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X)
    (h : S.usableForMajorProof) :
    S.constructionStatus ≠ ConstructionStatus.externalAssumption :=
  ConstructionStatus.majorProof_rejects_externalAssumption h

theorem CertifiedStructureSheafOfRings.rejects_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X)
    (h : S.usableForMajorProof) :
    S.constructionStatus ≠ ConstructionStatus.placeholderInput :=
  ConstructionStatus.majorProof_rejects_placeholderInput h

/--
Certified ring-valued structure sheaf with pullback-overlap sheaf data.

This is the stricter major-proof target for future prismatic sheafhood:
matching and gluing are certified over actual sections and pullback-certified
overlaps.  It still does not construct comparison theorems or claim that the
structure sheaf was derived from Bhatt--Scholze data unless the construction
status records a Surface construction or imported theorem input.
-/
structure CertifiedPullbackStructureSheafOfRings
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  presheaf : StructurePresheafInterface P X
  constructionStatus : ConstructionStatus
  topology : PrismaticSiteAxioms P X
  ringPresheaf :
    StructurePresheafOfRingsData presheaf topology.category
  actualPullbackCondition :
    ActualPullbackSheafCondition topology ringPresheaf
  actualPullbackCertificate :
    ActualPullbackSheafCertificate actualPullbackCondition
  boundary : List String

def CertifiedPullbackStructureSheafOfRings.usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X) :
    Prop :=
  S.constructionStatus.usableForConditionalProof

def CertifiedPullbackStructureSheafOfRings.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X) :
    Prop :=
  S.constructionStatus.usableForFinalTheorem

def CertifiedPullbackStructureSheafOfRings.usableForMajorProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X) :
    Prop :=
  S.constructionStatus.usableForMajorProof

theorem CertifiedPullbackStructureSheafOfRings.finalTheorem_usableForConditionalProof
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X)
    (h : S.usableForFinalTheorem) :
    S.usableForConditionalProof :=
  ConstructionStatus.finalTheorem_usableForConditionalProof h

theorem CertifiedPullbackStructureSheafOfRings.rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X)
    (h : S.usableForMajorProof) :
    S.constructionStatus ≠ ConstructionStatus.externalAssumption :=
  ConstructionStatus.majorProof_rejects_externalAssumption h

theorem CertifiedPullbackStructureSheafOfRings.rejects_placeholderInput
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedPullbackStructureSheafOfRings P X)
    (h : S.usableForMajorProof) :
    S.constructionStatus ≠ ConstructionStatus.placeholderInput :=
  ConstructionStatus.majorProof_rejects_placeholderInput h

structure PrismaticSite
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  objectsLabel : String
  coversLabel : String
  ODeltaPresheaf : StructurePresheafInterface P X
  ODeltaBarPresheaf : StructurePresheafInterface P X
  topologyAxioms? : Option (PrismaticSiteAxioms P X)
  smooth? : Option (SmoothPadicFormalSchemeOver P X)
  boundary : List String

theorem ODeltaPresheaf_is_interface
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) :
    (ODeltaPresheaf P X).valueLabel = "O_Delta" :=
  rfl

theorem ODeltaBarPresheaf_is_interface
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) :
    (ODeltaBarPresheaf P X).valueLabel = "O_Delta_bar" :=
  rfl

structure SiteFunctorialityCertificate
    {p : Nat}
    {P : BoundedPrism.{u} p}
    (X Y : PadicFormalScheme) where
  mapLabel : String
  functorial : Prop
  functorialCertified : functorial
  boundary : List String

theorem site_functoriality_for_maps_X_to_Y
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X Y : PadicFormalScheme}
    (C : SiteFunctorialityCertificate (P := P) X Y) :
    C.functorial :=
  C.functorialCertified

def unitPadicFormalScheme : PadicFormalScheme where
  label := "Spf(unit)"
  pAdic := True
  pAdicCertified := trivial
  boundary := ["Toy p-adic formal scheme descriptor."]

def unitPrismaticSite (p : Nat) :
    PrismaticSite (unitBoundedPrism p) unitPadicFormalScheme where
  objectsLabel := "unit prismatic site objects"
  coversLabel := "unit flat covers"
  ODeltaPresheaf := ODeltaPresheaf (unitBoundedPrism p) unitPadicFormalScheme
  ODeltaBarPresheaf := ODeltaBarPresheaf (unitBoundedPrism p) unitPadicFormalScheme
  topologyAxioms? := none
  smooth? := none
  boundary := [
    "Unit prismatic site interface example.",
    "No site-topology axioms or sheaf certificates are supplied by this toy object."
  ]

end Surface.Prismatic
```
