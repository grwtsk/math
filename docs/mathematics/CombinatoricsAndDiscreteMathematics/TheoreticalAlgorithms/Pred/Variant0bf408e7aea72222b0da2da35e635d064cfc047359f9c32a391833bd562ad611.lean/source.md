# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant0bf408e7aea72222b0da2da35e635d064cfc047359f9c32a391833bd562ad611

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3e64217803e20b55af145be0cf8f7c93a98a31e` · SHA-256 `c3d7c192ba1d8e2dea5f2e2b92fec9b4a7f62dfded26dead08748d1b226b2992`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pattern.Variant541f8cf79acea0eddfdee7e8567b688b57f827230e2f372a568dfa3d358dcae7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"541f8cf79acea0eddfdee7e8567b688b57f827230e2f372a568dfa3d358dcae7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Pattern.Variant541f8cf79acea0eddfdee7e8567b688b57f827230e2f372a568dfa3d358dcae7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"541f8cf79acea0eddfdee7e8567b688b57f827230e2f372a568dfa3d358dcae7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Pattern/Pred.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Markus Himmel
-/
module

prelude
public import Init.Data.String.Pattern.Basic
public import Init.Data.String.Lemmas.IsEmpty
import Init.Data.String.Termination
import Init.Omega
public import Init.Data.String.Basic
import Init.Data.String.Lemmas.Order
import Init.Data.Option.Lemmas
import Init.Data.String.Lemmas.FindPos


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pattern.Variant541f8cf79acea0eddfdee7e8567b688b57f827230e2f372a568dfa3d358dcae7

set_option doc.verso true

/-!
This module defines the necessary instances to register {lean}`Char → Bool` with the pattern
framework.
-/

public section

namespace String.Slice.Pattern

namespace CharPred

@[default_instance]
instance {p : Char → Bool} : ForwardPattern p where
  skipPrefixOfNonempty? s h :=
    if p (s.startPos.get (Slice.startPos_ne_endPos h)) then
      some (s.startPos.next (Slice.startPos_ne_endPos h))
    else
      none
  skipPrefix? s :=
    if h : s.startPos = s.endPos then
      none
    else if p (s.startPos.get h) then
      some (s.startPos.next h)
    else
      none
  startsWith s :=
    if h : s.startPos = s.endPos then
      false
    else
      p (s.startPos.get h)

instance {p : Char → Bool} : StrictForwardPattern p where
  ne_startPos {s h q} := by
    simp only [ForwardPattern.skipPrefixOfNonempty?, Option.ite_none_right_eq_some,
      Option.some.injEq, ne_eq, and_imp]
    rintro _ rfl
    simp

instance {p : Char → Bool} : LawfulForwardPattern p where
  skipPrefixOfNonempty?_eq {s} h := by
    simp [ForwardPattern.skipPrefixOfNonempty?, ForwardPattern.skipPrefix?,
      Slice.startPos_eq_endPos_iff, h]
  startsWith_eq s := by
    simp only [ForwardPattern.startsWith, ForwardPattern.skipPrefix?]
    split <;> (try split) <;> simp_all

@[default_instance]
instance {p : Char → Bool} : ToForwardSearcher p (ToForwardSearcher.DefaultForwardSearcher p) :=
  .defaultImplementation

namespace Decidable

instance {p : Char → Prop} [DecidablePred p] : ForwardPattern p where
  skipPrefixOfNonempty? s h := ForwardPattern.skipPrefixOfNonempty? (decide <| p ·) s h
  skipPrefix? s := ForwardPattern.skipPrefix? (decide <| p ·) s
  startsWith s := ForwardPattern.startsWith (decide <| p ·) s

instance {p : Char → Prop} [DecidablePred p] : StrictForwardPattern p where
  ne_startPos h q := StrictForwardPattern.ne_startPos (pat := (decide <| p ·)) h q

instance {p : Char → Prop} [DecidablePred p] : LawfulForwardPattern p where
  skipPrefixOfNonempty?_eq h := LawfulForwardPattern.skipPrefixOfNonempty?_eq (pat := (decide <| p ·)) h
  startsWith_eq s := LawfulForwardPattern.startsWith_eq (pat := (decide <| p ·)) s

instance {p : Char → Prop} [DecidablePred p] : ToForwardSearcher p (ToForwardSearcher.DefaultForwardSearcher (decide <| p ·)) where
  toSearcher s := ToForwardSearcher.toSearcher (decide <| p ·) s

end Decidable

@[default_instance]
instance {p : Char → Bool} : BackwardPattern p where
  skipSuffixOfNonempty? s h :=
    if p ((s.endPos.prev (Ne.symm (by exact Slice.startPos_ne_endPos h))).get (by simp)) then
      some (s.endPos.prev (Ne.symm (by exact Slice.startPos_ne_endPos h)))
    else
      none
  skipSuffix? s :=
    if h : s.endPos = s.startPos then
      none
    else if p ((s.endPos.prev h).get (by simp)) then
      some (s.endPos.prev h)
    else
      none
  endsWith s :=
    if h : s.endPos = s.startPos then
      false
    else
      p ((s.endPos.prev h).get (by simp))

instance {p : Char → Bool} : StrictBackwardPattern p where
  ne_endPos {s h q} := by
    simp only [BackwardPattern.skipSuffixOfNonempty?, Option.ite_none_right_eq_some,
      Option.some.injEq, ne_eq, and_imp]
    rintro _ rfl
    simp

instance {p : Char → Bool} : LawfulBackwardPattern p where
  skipSuffixOfNonempty?_eq {s h} := by
    simp [BackwardPattern.skipSuffixOfNonempty?, BackwardPattern.skipSuffix?,
      Eq.comm (a := s.endPos), Slice.startPos_eq_endPos_iff, h]
  endsWith_eq {s} := by
    simp only [BackwardPattern.endsWith, BackwardPattern.skipSuffix?]
    split <;> (try split) <;> simp_all

@[default_instance]
instance {p : Char → Bool} : ToBackwardSearcher p (ToBackwardSearcher.DefaultBackwardSearcher p) :=
  .defaultImplementation

namespace Decidable

instance {p : Char → Prop} [DecidablePred p] : BackwardPattern p where
  skipSuffixOfNonempty? s h := BackwardPattern.skipSuffixOfNonempty? (decide <| p ·) s h
  skipSuffix? s := BackwardPattern.skipSuffix? (decide <| p ·) s
  endsWith s := BackwardPattern.endsWith (decide <| p ·) s

instance {p : Char → Prop} [DecidablePred p] : StrictBackwardPattern p where
  ne_endPos h q := StrictBackwardPattern.ne_endPos (pat := (decide <| p ·)) h q

instance {p : Char → Prop} [DecidablePred p] : LawfulBackwardPattern p where
  skipSuffixOfNonempty?_eq h := LawfulBackwardPattern.skipSuffixOfNonempty?_eq (pat := (decide <| p ·)) h
  endsWith_eq s := LawfulBackwardPattern.endsWith_eq (pat := (decide <| p ·)) s

instance {p : Char → Prop} [DecidablePred p] :
    ToBackwardSearcher p (ToBackwardSearcher.DefaultBackwardSearcher (decide <| p ·)) where
  toSearcher s := ToBackwardSearcher.toSearcher (decide <| p ·) s

end Decidable

end CharPred

end String.Slice.Pattern
```
