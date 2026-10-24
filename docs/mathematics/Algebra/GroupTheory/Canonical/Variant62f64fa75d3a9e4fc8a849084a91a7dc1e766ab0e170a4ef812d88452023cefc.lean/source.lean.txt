-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FiniteDataCanonicalizer.Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FiniteDataCanonicalizer.Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Symmetry/Canonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.GroupTheory.GroupAction.Basic
import Mathlib.Data.Fintype.Basic

/-!
# Data-only finite-orbit canonicalization

Canonicalization acts on stable obstruction data.  It never compares proof
terms and does not establish feasibility or infeasibility.  The ordering and
encoding version are explicit certificate data.
-/


namespace GRWTSK.Algebra.GroupTheory.FiniteDataCanonicalizer.Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6

namespace Mathematics.BinaryFrontier

def SameOrbit
    {G X : Type}
    [Group G]
    [MulAction G X]
    (left right : X) : Prop :=
  ∃ groupElement : G,
    groupElement • left = right

structure FiniteDataCanonicalizer
    (G X : Type)
    [Group G]
    [Fintype G]
    [MulAction G X] where
  orderingVersion : String
  encode : X → String
  encode_injective : Function.Injective encode
  canonicalize : X → X
  chosenFromOrbit :
    ∀ value : X,
      SameOrbit (G := G) value (canonicalize value)
  orbitInvariant :
    ∀ (groupElement : G) (value : X),
      canonicalize (groupElement • value) =
        canonicalize value
  idempotent :
    ∀ value : X,
      canonicalize (canonicalize value) =
        canonicalize value
  complete :
    ∀ left right : X,
      canonicalize left = canonicalize right ↔
        SameOrbit (G := G) left right

theorem canon_smul
    {G X : Type}
    [Group G]
    [Fintype G]
    [MulAction G X]
    (canonicalizer : FiniteDataCanonicalizer G X)
    (groupElement : G)
    (value : X) :
    canonicalizer.canonicalize (groupElement • value) =
      canonicalizer.canonicalize value :=
  canonicalizer.orbitInvariant groupElement value

theorem canon_idempotent
    {G X : Type}
    [Group G]
    [Fintype G]
    [MulAction G X]
    (canonicalizer : FiniteDataCanonicalizer G X)
    (value : X) :
    canonicalizer.canonicalize
        (canonicalizer.canonicalize value) =
      canonicalizer.canonicalize value :=
  canonicalizer.idempotent value

theorem canon_eq_iff_same_orbit
    {G X : Type}
    [Group G]
    [Fintype G]
    [MulAction G X]
    (canonicalizer : FiniteDataCanonicalizer G X)
    (left right : X) :
    canonicalizer.canonicalize left =
        canonicalizer.canonicalize right ↔
      SameOrbit (G := G) left right :=
  canonicalizer.complete left right

end Mathematics.BinaryFrontier
