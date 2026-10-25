# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterTwist.Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f817d3513e49dc28c9a1c4db1672c2a32367e85a` · SHA-256 `c9f5cc5996cf4855bb0ffee9d6dcc1af761e0169bf42f678c29a6042e3bf689d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterTwist.Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CharacterTwist.Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Arithmetic/CharacterTwist.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Arithmetic.CharacterProjector
import DAF.Hilbert.DifferentialComplex
import Mathlib.Tactic.NoncommRing

/-!
# Exact finite Dirichlet-character twists

A flat finite character twist is represented in a chosen trivialization by a
unitary gauge.  Conjugating an exact square-zero differential by that gauge
gives the twisted differential.  The square-zero theorem is derived below;
it is not a caller-provided Boolean.  Nontrivial edge-cocycle-to-gauge
existence on arbitrary terrain remains a separate local-system obligation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterTwist.Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382

noncomputable section

namespace DAF.Arithmetic

open DAF.Hilbert

universe u

/-- A finite, globally trivialized character twist.  A nontrivial flat local
system can instantiate this after supplying its certified unitary
trivialization. -/
structure CharacterTwist
    (Index : Type u) [Fintype Index] [DecidableEq Index]
    (chi : PrimitiveDirichletCharacter) where
  base : FiniteDifferentialComplex Index
  gauge : FiniteOperator Index Index
  gauge_unitary_left : gauge.conjTranspose * gauge = 1
  gauge_unitary_right : gauge * gauge.conjTranspose = 1

namespace CharacterTwist

variable {Index : Type u} [Fintype Index] [DecidableEq Index]
variable {chi : PrimitiveDirichletCharacter}

/-- Gauge-conjugated character differential. -/
def twistedDifferential (twist : CharacterTwist Index chi) :
    FiniteOperator Index Index :=
  twist.gauge.conjTranspose * twist.base.differential * twist.gauge

/-- Flatness in the selected trivialization preserves `d² = 0`. -/
theorem twistedDifferential_sq_zero (twist : CharacterTwist Index chi) :
    twist.twistedDifferential * twist.twistedDifferential = 0 := by
  calc
    twist.twistedDifferential * twist.twistedDifferential =
        twist.gauge.conjTranspose * twist.base.differential *
          (twist.gauge * twist.gauge.conjTranspose) *
          twist.base.differential * twist.gauge := by
            simp only [twistedDifferential]
            noncomm_ring
    _ = twist.gauge.conjTranspose *
          (twist.base.differential * twist.base.differential) *
          twist.gauge := by
            rw [twist.gauge_unitary_right]
            simp [mul_assoc]
    _ = 0 := by
      rw [twist.base.differential_square_zero]
      simp

/-- The twisted differential is itself an exact finite complex. -/
def twistedComplex (twist : CharacterTwist Index chi) :
    FiniteDifferentialComplex Index where
  differential := twist.twistedDifferential
  differential_square_zero := twist.twistedDifferential_sq_zero

/-- The canonical identity-gauge twist exists for every primitive character
and every finite terrain complex. -/
def identity
    (chi : PrimitiveDirichletCharacter)
    (base : FiniteDifferentialComplex Index) : CharacterTwist Index chi where
  base := base
  gauge := 1
  gauge_unitary_left := by simp
  gauge_unitary_right := by simp

@[simp]
theorem identity_twistedDifferential
    (chi : PrimitiveDirichletCharacter)
    (base : FiniteDifferentialComplex Index) :
    (identity chi base).twistedDifferential = base.differential := by
  simp [identity, twistedDifferential]

/-- Public flatness theorem for the exact finite twist. -/
theorem characterTwist_flat (twist : CharacterTwist Index chi) :
    twist.twistedComplex.differential *
      twist.twistedComplex.differential = 0 :=
  twist.twistedDifferential_sq_zero

end CharacterTwist

end DAF.Arithmetic
```
