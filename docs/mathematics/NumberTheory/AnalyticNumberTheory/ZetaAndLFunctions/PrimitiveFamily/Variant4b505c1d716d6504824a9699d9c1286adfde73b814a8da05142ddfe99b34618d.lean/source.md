# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveFamily.Variant4b505c1d716d6504824a9699d9c1286adfde73b814a8da05142ddfe99b34618d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3eb19cebb643c6c9e7a8a3e5001a4b9ce9f57f9` · SHA-256 `e0c60eee86153aa28b8e1dbcac6a55adec2eead8eb2b418033fa476453eaea67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletGRH.Variant5b046304bbb87b09d1d8ca303c4452cfb0dddee5708bf85450cd724c0c6f621a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b046304bbb87b09d1d8ca303c4452cfb0dddee5708bf85450cd724c0c6f621a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.DirichletGRH.Variant5b046304bbb87b09d1d8ca303c4452cfb0dddee5708bf85450cd724c0c6f621a","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"5b046304bbb87b09d1d8ca303c4452cfb0dddee5708bf85450cd724c0c6f621a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:b56c6247d3e3c522b9b49498/workspace/lib/Surface/Core/DirichletGRH/PrimitiveFamily.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.Character

/-!
# The primitive Dirichlet-character family

`DirichletGRH` quantifies over every positive modulus and every primitive
complex Dirichlet character at that modulus.  Positivity supplies the
`NeZero q` instance required by mathlib's analytic `LFunction`.

This is a proposition only.  No global or local GRH proof is asserted.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletGRH.Variant5b046304bbb87b09d1d8ca303c4452cfb0dddee5708bf85450cd724c0c6f621a

public section

namespace Surface.Core.DirichletGRH

noncomputable section

set_option linter.dupNamespace false in
/-- Pointwise Dirichlet GRH over all primitive characters of positive
modulus.  Constants or estimates are not bundled into this predicate. -/
@[expose]
def DirichletGRH : Prop :=
  ∀ (q : ℕ) (hq : 0 < q),
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    ∀ chi : DirichletCharacter ℂ q,
      DirichletCharacter.IsPrimitive chi →
        GRHForPrimitiveCharacter chi

/-- Eliminate the global family predicate at one positive modulus. -/
@[surface_novel, surface_published]
theorem dirichletGRH_forCharacter
    (hGRH : DirichletGRH) {q : ℕ} (hq : 0 < q)
    (chi : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive chi) :
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    GRHForPrimitiveCharacter chi := by
  exact hGRH q hq chi hPrimitive

/-- The explicit positive-modulus family is definitionally the global
Dirichlet-GRH proposition.  This small theorem is useful at adapter
boundaries without introducing a second notion of global GRH. -/
@[surface_novel, surface_published]
theorem dirichletGRH_iff_primitiveFamily :
    DirichletGRH ↔
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ chi : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive chi →
            GRHForPrimitiveCharacter chi :=
  Iff.rfl

end

end Surface.Core.DirichletGRH
```
