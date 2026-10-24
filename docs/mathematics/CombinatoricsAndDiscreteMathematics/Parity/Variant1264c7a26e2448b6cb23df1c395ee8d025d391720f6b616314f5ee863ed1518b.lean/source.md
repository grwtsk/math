# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Parity.Variant1264c7a26e2448b6cb23df1c395ee8d025d391720f6b616314f5ee863ed1518b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46f1744bffb032331a4c2747fcf9b6c48dbe5e94` · SHA-256 `37870d4b3f871cebd80be9da8001e66a7b21216a382a989be1ccb20aaf7e5499`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant99056066b69bf59cf27e4bd6c6f0c116e053666484a8f59697977705e3c0a8c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99056066b69bf59cf27e4bd6c6f0c116e053666484a8f59697977705e3c0a8c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Card.Variant99056066b69bf59cf27e4bd6c6f0c116e053666484a8f59697977705e3c0a8c7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"99056066b69bf59cf27e4bd6c6f0c116e053666484a8f59697977705e3c0a8c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/.lake/packages/mathlib/Mathlib/Data/Fintype/Parity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Fintype.Card
public import Mathlib.Algebra.Group.Even
import all Init.Data.Fin.Fold -- for exposing `Fin.foldr`

/-!
# The cardinality of `Fin 2` is even.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant99056066b69bf59cf27e4bd6c6f0c116e053666484a8f59697977705e3c0a8c7

public section


variable {α : Type*}

namespace Fintype

instance IsSquare.decidablePred [Mul α] [Fintype α] [DecidableEq α] :
    DecidablePred (IsSquare : α → Prop) := fun _ => Fintype.decidableExistsFintype

/-- The cardinality of `Fin 2` is even, `Fact` version.
This `Fact` is needed as an instance by `Matrix.SpecialLinearGroup.instNeg`. -/
instance card_fin_two : Fact (Even (Fintype.card (Fin 2))) :=
  ⟨⟨1, rfl⟩⟩

end Fintype
```
