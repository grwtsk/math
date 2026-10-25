# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZetaPoleAtOne.Variantfb04b6cf070925e5d2fc98755db68c40873001e05ba7185948c3f4c68674b0cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7304dc33ed6a548bb892d2c84fb56fbfd23b00c` · SHA-256 `585c961637ebd998e1c5c950ca9741029d8c0d01df3d4e160c18b1c54caa20d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZetaPoleAtOne.Variant1a59c95759568129da10fcbd5922a6b9d94cfd35b9f12054efc6e808f8d4a1c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a59c95759568129da10fcbd5922a6b9d94cfd35b9f12054efc6e808f8d4a1c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ZetaPoleAtOne.Variant1a59c95759568129da10fcbd5922a6b9d94cfd35b9f12054efc6e808f8d4a1c6","mathematical_subject":"Foundations.Unclassified","original_sha256":"1a59c95759568129da10fcbd5922a6b9d94cfd35b9f12054efc6e808f8d4a1c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/ZetaPoleAtOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.ReciprocalBoundary


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZetaPoleAtOne.Variant1a59c95759568129da10fcbd5922a6b9d94cfd35b9f12054efc6e808f8d4a1c6

set_option autoImplicit false

namespace Think.Analysis

universe u

/-
Zeta pole at one.

This file records the pole-at-one input as an explicit witness over the natural
`ReciprocalBoundary` interface. It does not introduce a terminology layer and it
does not prove the external analytic theorem that the classical Riemann zeta
function has a pole at one. If such theorem authority is later imported from a
library, it should supply the `poleAtOne` field.
-/

/-- A witness that the chosen zeta object has a pole at the distinguished point `one`. -/
structure ZetaPoleAtOne (Object Point : Type u) where
  boundary : ReciprocalBoundary Object Point
  zeta : Object
  reciprocalZeta : Object
  one : Point
  reciprocalZeta_eq : reciprocalZeta = boundary.reciprocal zeta
  poleAtOne : boundary.poleAt zeta one

/-- The pole-at-one witness contains the pole predicate directly. -/
theorem zeta_pole_at_one
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    Z.boundary.poleAt Z.zeta Z.one :=
  Z.poleAtOne

/-- The pole at one gives a zero of the reciprocal zeta object at one. -/
theorem zeta_pole_at_one_gives_reciprocal_zero_at_one
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    Z.boundary.zeroAt Z.reciprocalZeta Z.one := by
  rw [Z.reciprocalZeta_eq]
  exact pole_implies_reciprocal_zero Z.boundary Z.poleAtOne

/-- Convert a pole-at-one witness into the more general reciprocal-boundary zeta package. -/
def ZetaPoleAtOne.toReciprocalBoundary
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    ZetaReciprocalBoundary Object Point :=
  { boundary := Z.boundary
    zeta := Z.zeta
    reciprocalZeta := Z.reciprocalZeta
    one := Z.one
    reciprocalZeta_eq := Z.reciprocalZeta_eq }

/-- The conversion preserves the reciprocal-zero consequence. -/
theorem zeta_pole_at_one_conversion_gives_reciprocal_zero_at_one
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    (Z.toReciprocalBoundary).boundary.zeroAt
      (Z.toReciprocalBoundary).reciprocalZeta
      (Z.toReciprocalBoundary).one :=
  zeta_pole_at_one_implies_reciprocal_zero_at_one
    Z.toReciprocalBoundary Z.poleAtOne

end Think.Analysis
```
