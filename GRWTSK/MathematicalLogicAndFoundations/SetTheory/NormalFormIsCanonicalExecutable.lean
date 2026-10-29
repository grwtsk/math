import Mathematics.StratifiedBoundary.OrdinalTally.Semantics

/-!
# Certificate-gated executable normal form

Only zero and positive blocks can be canonical.  `tall` and `succ` belong to
the raw notation and are accepted only after a sound normalizer emits an
executable normal form.  No normalizer in this module accepts a limit node.
-/

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
