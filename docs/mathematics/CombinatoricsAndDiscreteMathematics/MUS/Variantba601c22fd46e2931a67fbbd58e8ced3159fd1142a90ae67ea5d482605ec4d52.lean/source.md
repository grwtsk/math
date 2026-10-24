# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.MUS.Variantba601c22fd46e2931a67fbbd58e8ced3159fd1142a90ae67ea5d482605ec4d52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f335d9cd18dada9016a5e6c125bdee11db5565e` · SHA-256 `6ea90b94e7ecb6f1089d324784edad8abb425981b6d5d45b1414a86fcbe2e86f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimitiveObstructionCertificate.Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimitiveObstructionCertificate.Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Obstruction/MUS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Primitive finite obstruction cores

The certificate is deletion-minimal: the core is infeasible, and deleting any
one member restores feasibility.  This is minimality by inclusion, not minimum
cardinality or uniqueness.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimitiveObstructionCertificate.Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799

namespace Mathematics.BinaryFrontier

structure PrimitiveObstructionCertificate
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (registry : Finset Constraint)
    (state : Partial)
    (core : Finset Constraint) where
  core_nonempty : core.Nonempty
  core_subset_registry : core ⊆ registry
  core_infeasible :
    Infeasible semantics core state
  deletion_feasible :
    ∀ constraint ∈ core,
      Feasible semantics (core.erase constraint) state

structure ProperDeletionWitness
    {Constraint : Type}
    [DecidableEq Constraint]
    (core subset : Finset Constraint) where
  removed : Constraint
  removed_mem : removed ∈ core
  subset_without_removed :
    subset ⊆ core.erase removed

theorem deletion_minimal_implies_proper_subset_feasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {registry core subset : Finset Constraint}
    {state : Partial}
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (proper : subset ⊂ core) :
    Feasible semantics subset state := by
  obtain ⟨removed, removedMember, subsetWithoutRemoved⟩ :=
    Finset.ssubset_iff_exists_subset_erase.mp proper
  exact feasible_of_constraint_subset
    semantics
    subsetWithoutRemoved
    (primitive.deletion_feasible
      removed removedMember)

theorem primitive_core_is_infeasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {registry core : Finset Constraint}
    {state : Partial}
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core) :
    Infeasible semantics core state :=
  primitive.core_infeasible

end Mathematics.BinaryFrontier
```
