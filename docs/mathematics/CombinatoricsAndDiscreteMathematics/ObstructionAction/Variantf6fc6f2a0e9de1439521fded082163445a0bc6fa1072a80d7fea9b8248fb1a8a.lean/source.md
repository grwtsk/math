# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ObstructionAction.Variantf6fc6f2a0e9de1439521fded082163445a0bc6fa1072a80d7fea9b8248fb1a8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70af13891a541043e17753c81f57f539310896b1` · SHA-256 `a31e49b03fe6f70df92bd852f29710625a7abbeb64cb7300965edcebac68044c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimitiveCoreTransportCertificate.Variantdd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimitiveCoreTransportCertificate.Variantdd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"dd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Symmetry/ObstructionAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance

/-!
# Primitive-core transport

The project must supply a transport certificate for a concrete action.  Its
completion-equivariance member prevents a raw data permutation from being
mistaken for a semantic automorphism.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimitiveCoreTransportCertificate.Variantdd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b

namespace Mathematics.BinaryFrontier

structure PrimitiveCoreTransportCertificate
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G) where
  transported :
    PrimitiveObstructionCertificate
      semantics
      (equivariance.actRegistry groupElement registry)
      (equivariance.actPartial groupElement state)
      (equivariance.actRegistry groupElement core)

theorem primitive_core_transports_under_automorphism
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G)
    (transport :
      PrimitiveCoreTransportCertificate
        semantics equivariance
        registry core state primitive groupElement) :
    PrimitiveObstructionCertificate
      semantics
      (equivariance.actRegistry groupElement registry)
      (equivariance.actPartial groupElement state)
      (equivariance.actRegistry groupElement core) :=
  transport.transported

end Mathematics.BinaryFrontier
```
