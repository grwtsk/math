# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c24ce9216f50b110e2e5bb5966220a69aa2e51ab` · SHA-256 `b4837b5e93a3b37ee418ce30eb9b2ddf7ad64869d00ced019b5c5201f5d6be31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AlternativeMonad.Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AlternativeMonad.Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c","mathematical_subject":"Computation.DataStructures","original_sha256":"71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/Monad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

public import Mathlib.Init
public import Batteries.Control.AlternativeMonad
/-!
# Monad instances for `List`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AlternativeMonad.Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c

public section

universe u

namespace List

variable {α : Type u}

instance instMonad : Monad List.{u} where
  pure x := [x]
  bind l f := l.flatMap f
  map f l := l.map f

@[simp] theorem pure_def (a : α) : pure a = [a] := rfl

instance instLawfulMonad : LawfulMonad List.{u} := LawfulMonad.mk'
  (id_map := map_id)
  (pure_bind := fun _ _ => List.append_nil _)
  (bind_assoc := fun _ _ _ => List.flatMap_assoc)
  (bind_pure_comp := fun _ _ => map_eq_flatMap.symm)

instance : AlternativeMonad List.{u} where
  failure := @List.nil
  orElse l l' := List.append l (l' ())

instance : LawfulAlternative List where
  map_failure _ := List.map_nil
  failure_seq _ := List.flatMap_nil
  orElse_failure _ := List.append_nil _
  failure_orElse _ := List.nil_append _
  orElse_assoc _ _ _ := List.append_assoc _ _ _ |>.symm
  map_orElse _ _ _ := List.map_append

end List
```
