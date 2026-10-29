import Think.SourceTree.Legacy.Compression.LatticeGroupLoci

set_option autoImplicit false

namespace Think.Compression.Syntax

/--
The construction order for the configuration-encoding lane.

`pathBTopology` names the local syntax/lookup/section/rewrite layer, while
`pathACanonicalWitness` names the canonical encode/decode witness that is
allowed only after the topology has a checked surface.
-/
inductive CompressionConstructionPath : Type
  | pathBTopology
  | pathACanonicalWitness
deriving DecidableEq, Repr

/-- The finite checklist required before a compressed representation has local authority. -/
inductive TopologicAuthorityLayer : Type
  | rawSyntax
  | admissibility
  | denotation
  | lookupFibers
  | coverSections
  | normalization
  | rewritePreservation
deriving DecidableEq, Repr

def topologicAuthorityLayers : List TopologicAuthorityLayer := [
  .rawSyntax,
  .admissibility,
  .denotation,
  .lookupFibers,
  .coverSections,
  .normalization,
  .rewritePreservation
]

theorem topologicAuthorityLayers_length :
    topologicAuthorityLayers.length = 7 := rfl

/--
A record-level authority surface.  The negative fields are deliberately part of
the data: this lane records canonical, structured, lookup-preserving
compression, not strict size reduction or a topos theorem.
-/
structure TopologicAuthoritySurface where
  pathBFirst : Bool
  pathACanonicalWitness : Bool
  syntaxLayer : Bool
  admissibilityLayer : Bool
  denotationLayer : Bool
  lookupFiberLayer : Bool
  coverSectionLayer : Bool
  normalizationLayer : Bool
  rewritePreservationLayer : Bool
  strictSizeCompressionClaim : Bool
  eilenbergMooreDefinitionalEqualityClaim : Bool
  essentialGeometricMorphismClaim : Bool
  lawvereTierneyTopologyClaim : Bool
  toposTheoremClaim : Bool
deriving DecidableEq, Repr

def hasTopologicAuthority (surface : TopologicAuthoritySurface) : Bool :=
  surface.pathBFirst &&
  surface.pathACanonicalWitness &&
  surface.syntaxLayer &&
  surface.admissibilityLayer &&
  surface.denotationLayer &&
  surface.lookupFiberLayer &&
  surface.coverSectionLayer &&
  surface.normalizationLayer &&
  surface.rewritePreservationLayer &&
  !surface.strictSizeCompressionClaim &&
  !surface.eilenbergMooreDefinitionalEqualityClaim &&
  !surface.essentialGeometricMorphismClaim &&
  !surface.lawvereTierneyTopologyClaim &&
  !surface.toposTheoremClaim

def defaultTopologicAuthoritySurface : TopologicAuthoritySurface :=
  { pathBFirst := true
    pathACanonicalWitness := true
    syntaxLayer := true
    admissibilityLayer := true
    denotationLayer := true
    lookupFiberLayer := true
    coverSectionLayer := true
    normalizationLayer := true
    rewritePreservationLayer := true
    strictSizeCompressionClaim := false
    eilenbergMooreDefinitionalEqualityClaim := false
    essentialGeometricMorphismClaim := false
    lawvereTierneyTopologyClaim := false
    toposTheoremClaim := false }

theorem default_topologic_authority_has_pathB_first :
    defaultTopologicAuthoritySurface.pathBFirst = true := rfl

theorem default_topologic_authority_has_pathA_witness :
    defaultTopologicAuthoritySurface.pathACanonicalWitness = true := rfl

theorem default_topologic_authority_no_strict_size_claim :
    defaultTopologicAuthoritySurface.strictSizeCompressionClaim = false := rfl

theorem default_topologic_authority_no_em_definitional_equality_claim :
    defaultTopologicAuthoritySurface.eilenbergMooreDefinitionalEqualityClaim =
      false := rfl

theorem default_topologic_authority_no_essential_geometric_morphism_claim :
    defaultTopologicAuthoritySurface.essentialGeometricMorphismClaim =
      false := rfl

theorem default_topologic_authority_no_lawvere_tierney_topology_claim :
    defaultTopologicAuthoritySurface.lawvereTierneyTopologyClaim = false := rfl

theorem default_topologic_authority_no_topos_theorem_claim :
    defaultTopologicAuthoritySurface.toposTheoremClaim = false := rfl

theorem default_topologic_authority_surface_admitted :
    hasTopologicAuthority defaultTopologicAuthoritySurface = true := rfl

/-- Milestones in the checked core, ordered so the topology precedes the canonical witness. -/
inductive CompressionMilestone : Type
  | rawSyntax
  | wellFormed
  | denotation
  | compressedString
  | lookupFiber
  | coverSections
  | rewritePreservation
  | normalization
  | encode
  | decodeEncodeIdentity
deriving DecidableEq, Repr

def milestoneIndex : CompressionMilestone → Nat
  | .rawSyntax => 0
  | .wellFormed => 1
  | .denotation => 2
  | .compressedString => 3
  | .lookupFiber => 4
  | .coverSections => 5
  | .rewritePreservation => 6
  | .normalization => 7
  | .encode => 8
  | .decodeEncodeIdentity => 9

theorem raw_syntax_precedes_lookup_fiber :
    milestoneIndex .rawSyntax < milestoneIndex .lookupFiber := by
  decide

theorem lookup_fiber_precedes_rewrite_preservation :
    milestoneIndex .lookupFiber < milestoneIndex .rewritePreservation := by
  decide

theorem rewrite_preservation_precedes_encode :
    milestoneIndex .rewritePreservation < milestoneIndex .encode := by
  decide

theorem encode_precedes_decode_encode_identity :
    milestoneIndex .encode < milestoneIndex .decodeEncodeIdentity := by
  decide

/-- Path A remains the canonical section theorem, not the source of topology. -/
theorem pathA_decode_encode_identity_surface {α : Type}
    (xs : List α) :
    decode (encode xs) = xs :=
  decode_encode_identity xs

theorem topologic_normalize_def_surface {α : Type}
    (s : CompressedString α) :
    normalize s = encode (decode s) :=
  normalize_def s

theorem topologic_normalize_sound_surface {α : Type}
    (s : CompressedString α) :
    decode (normalize s) = decode s :=
  normalize_sound s

theorem topologic_normalize_idempotent_surface {α : Type}
    (s : CompressedString α) :
    normalize (normalize s) = normalize s :=
  normalize_idempotent s

theorem topologic_encode_decode_normalizes_surface {α : Type}
    (s : CompressedString α) :
    encode (decode s) = normalize s :=
  encode_decode_normalizes s

theorem topologic_adjunction_orientation_surface :
    adjunctionOrientation =
      "decode_left_adjoint_encode_right_adjoint_normalize_encode_after_decode" :=
  rfl

theorem normal_forms_are_raw_fixed_points_surface {α : Type}
    (s : CompressedString α) :
    NormalForm s ↔ (normalize s).raw = s.raw :=
  Iff.rfl

theorem include_reflect_is_normalize_raw_surface {α : Type}
    (s : CompressedString α) :
    (normalInclude (reflect s)).raw = (normalize s).raw :=
  include_reflect_raw s

theorem reflect_include_fixed_point_raw_surface {α : Type}
    (normal : NormalCompressedString α) :
    (normalInclude (reflect (normalInclude normal))).raw =
      (normalInclude normal).raw :=
  reflect_include_raw normal

theorem normal_decode_normal_encode_surface {α : Type}
    (xs : List α) :
    normalDecode (normalEncode xs) = xs :=
  normalDecode_normalEncode xs

theorem normal_encode_normal_decode_raw_surface {α : Type}
    (normal : NormalCompressedString α) :
    (normalEncode (normalDecode normal)).carrier.raw =
      normal.carrier.raw :=
  normalEncode_normalDecode_raw normal

theorem topologic_lookup_fiber_unique_surface {α : Type}
    (s : CompressedString α) (i : Fin (decode s).length) :
    ∃! _path : LookupPathAt s i, True :=
  lookup_fiber_unique s i

theorem topologic_lookup_sections_glue_unique_surface {α : Type}
    (s : CompressedString α)
    (slice : Slice (decode s))
    (cover : Cover slice)
    (family : CompatibleFamily s cover) :
    ∃! global : LookupSection s slice,
      RestrictsTo global family :=
  lookup_sections_glue_unique s slice cover family

/--
The no-deflation law exposed as the topologic authority gate: any admitted
rewrite must preserve denotation and transport lookup fibers.
-/
theorem topologic_rewrite_preserves_surface {α : Type}
    {source target : CompressedString α}
    (step : RewriteStep source target) :
    PreservesSemanticsAndLookup source target :=
  rewrite_preserves step

theorem topologic_preservation_trans_surface {α : Type}
    {source middle target : CompressedString α}
    (left : PreservesSemanticsAndLookup source middle)
    (right : PreservesSemanticsAndLookup middle target) :
    PreservesSemanticsAndLookup source target :=
  preserves_semantics_and_lookup_trans left right

end Think.Compression.Syntax
