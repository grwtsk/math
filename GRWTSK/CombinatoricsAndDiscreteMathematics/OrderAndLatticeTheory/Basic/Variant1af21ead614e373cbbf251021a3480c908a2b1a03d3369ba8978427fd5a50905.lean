-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanAlgebraCore.Variant85b381e338ed334be1dd00e2088589bfab573d6161b3041102315edfa91006ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85b381e338ed334be1dd00e2088589bfab573d6161b3041102315edfa91006ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.BooleanAlgebraCore.Variant85b381e338ed334be1dd00e2088589bfab573d6161b3041102315edfa91006ed","mathematical_subject":"Algebra.OrderTheory","original_sha256":"85b381e338ed334be1dd00e2088589bfab573d6161b3041102315edfa91006ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Algebra/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanAlgebraCore.Variant85b381e338ed334be1dd00e2088589bfab573d6161b3041102315edfa91006ed

namespace Surface.Boolean

universe u

/--
A Boolean algebra presented as a complemented distributive lattice.

The primitive data are the carrier type together with join, meet, complement,
bottom, and top. The laws record boundedness, commutativity, distributivity,
complementation, associativity, and non-degeneracy.

Complement uniqueness is not primitive here; it is derived in
`Surface.Boolean.Algebra.Laws`.
-/
class BooleanAlgebraCore (B : Type u) where
  join : B → B → B
  meet : B → B → B
  compl : B → B
  bot : B
  top : B

  bot_ne_top : bot ≠ top

  join_bot : ∀ a : B, join a bot = a
  meet_top : ∀ a : B, meet a top = a

  join_comm : ∀ a b : B, join a b = join b a
  meet_comm : ∀ a b : B, meet a b = meet b a

  join_assoc : ∀ a b c : B, join a (join b c) = join (join a b) c
  meet_assoc : ∀ a b c : B, meet a (meet b c) = meet (meet a b) c

  join_meet_distrib :
    ∀ a b c : B, join a (meet b c) = meet (join a b) (join a c)
  meet_join_distrib :
    ∀ a b c : B, meet a (join b c) = join (meet a b) (meet a c)

  join_compl : ∀ a : B, join a (compl a) = top
  meet_compl : ∀ a : B, meet a (compl a) = bot

abbrev BooleanAlgebra (B : Type u) :=
  BooleanAlgebraCore B

end Surface.Boolean
