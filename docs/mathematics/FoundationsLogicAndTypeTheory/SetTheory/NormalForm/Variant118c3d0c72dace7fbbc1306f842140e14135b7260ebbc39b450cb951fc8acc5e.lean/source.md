# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.NormalForm.Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `997ff941573cc7f30bca4768728ff07933796684` · SHA-256 `48b6eaab7ce8a8171ff85e756d562e6f63ba2eeb17d7244af964a03c68d08dd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ExecutableNormalForm.Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.ExecutableNormalForm.Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c","mathematical_subject":"Logic.SetTheory","original_sha256":"36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/OrdinalTally/NormalForm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.Semantics

/-!
# Certificate-gated executable normal form

Only zero and positive blocks can be canonical.  `tall` and `succ` belong to
the raw notation and are accepted only after a sound normalizer emits an
executable normal form.  No normalizer in this module accepts a limit node.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ExecutableNormalForm.Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c

namespace Mathematics.StratifiedBoundary.OrdinalTally

def IsCanonicalExecutable :
    ExecutableOrdinalTally → Prop
  | .zero => True
  | .block exponent _ _ remainder =>
      IsCanonicalExecutable exponent ∧
        IsCanonicalExecutable remainder ∧
        ExecutableRemainderBelow exponent remainder

structure ExecutableNormalForm where
  code : ExecutableOrdinalTally
  canonical : IsCanonicalExecutable code

namespace ExecutableNormalForm

def value
    (code : ExecutableNormalForm) : Ordinal :=
  evalExecutable code.code

def raw
    (code : ExecutableNormalForm) : RawCode :=
  code.code.reify

end ExecutableNormalForm

abbrev CanonicalCode
    (_limits : LimitSemantics) :=
  ExecutableNormalForm

namespace CanonicalCode

def zero
    (_limits : LimitSemantics) :
    CanonicalCode _limits :=
  ⟨.zero, trivial⟩

def tall
    (_limits : LimitSemantics)
    (count : Nat) :
    CanonicalCode _limits := by
  cases count with
  | zero =>
      exact zero _limits
  | succ count =>
      refine
        ⟨ExecutableOrdinalTally.tall (count + 1), ?_⟩
      simp [ExecutableOrdinalTally.tall,
        IsCanonicalExecutable,
        ExecutableRemainderBelow,
        evalExecutable]

end CanonicalCode

structure NormalizationCertificate
    (limits : LimitSemantics) where
  normalize :
    RawCode → CanonicalCode limits
  semanticSound :
    ∀ code,
      (normalize code).value =
        eval limits code
  canonicalFixed :
    ∀ code : CanonicalCode limits,
      (normalize code.raw).code =
        code.code

def NormalizationCertificate.notationallyEqual
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    (left right : RawCode) : Prop :=
  (normalizer.normalize left).code =
    (normalizer.normalize right).code

theorem ordinalTally_normalization_sound
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    (code : RawCode) :
    (normalizer.normalize code).value =
      eval limits code :=
  normalizer.semanticSound code

theorem ordinalTally_normalization_fixed
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    (code : CanonicalCode limits) :
    (normalizer.normalize code.raw).code =
      code.code :=
  normalizer.canonicalFixed code

theorem normalized_notation_equal_is_semantic
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    {left right : RawCode}
    (equal :
      normalizer.notationallyEqual left right) :
    eval limits left = eval limits right := by
  rw [← normalizer.semanticSound left,
    ← normalizer.semanticSound right]
  exact congrArg evalExecutable equal

end Mathematics.StratifiedBoundary.OrdinalTally
```
