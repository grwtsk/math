# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveFamily.Variantdb69f841dd082a2e1fdc277851f4d923161d8e62c0cccfa69f2669655fe13fbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2291f8ae302c0038f9ef988599e71e576c10733` · SHA-256 `94ef11aa2edaac3ff6476dfd1172454aff9849e46e2def561ad4a0af9708c9c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletGRH.Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.DirichletGRH.Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/DirichletGRH/PrimitiveFamily.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletGRH.Variant9a461fa0917998fb31db7f98130f278801074a892d83783e32d26f5385759c0d

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

/-- The same global family indexed by the bundled positive primitive
character data. -/
@[expose]
def PrimitiveCharacterDataFamilyGRH : Prop :=
  ∀ data : PrimitiveCharacterData, data.GRH

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

/-- Bundling the positive modulus and primitivity proof does not change the
global Dirichlet-GRH proposition. -/
@[surface_adapter]
theorem dirichletGRH_iff_dataFamily :
    DirichletGRH ↔ PrimitiveCharacterDataFamilyGRH := by
  constructor
  · intro hGRH data
    exact hGRH data.modulus data.modulus_pos
      data.character data.primitive
  · intro hData q hq
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    intro chi hPrimitive
    let data : PrimitiveCharacterData :=
      { modulus := q
        modulus_pos := hq
        character := chi
        primitive := hPrimitive }
    exact hData data

end

end Surface.Core.DirichletGRH
```
