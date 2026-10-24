# Complete source: GRWTSK.Algebra.DroppedMVars.Variant143c3d6a8154d5ef9dbaad02622f7cf590540bce211f403f582656942b58e4cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc2966106ea89f455cc1fdf72d368f7e2e11f072` · SHA-256 `03404f798b3de5e0f5103a197a5d0b8eb90b42e8e102b6136b07021852a11a8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Ring.Variant004d1fa7416a777a332a960c2b1f1cac85a506af0aa382a261749fd0434ae3c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"004d1fa7416a777a332a960c2b1f1cac85a506af0aa382a261749fd0434ae3c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Ring.Variant004d1fa7416a777a332a960c2b1f1cac85a506af0aa382a261749fd0434ae3c6","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"004d1fa7416a777a332a960c2b1f1cac85a506af0aa382a261749fd0434ae3c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/DroppedMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jesse Vogel, Jannis Limperg
-/

-- Thanks to Jesse Vogel for this test case. It demonstrates the handling of
-- 'dropped' mvars. A rapp drops an mvar if the mvar appears in the parent goal
-- of the rapp, but not in any of its subgoals. In this case, we add an
-- additional regular goal for the mvar.

import Aesop


namespace GRWTSK.Algebra.Ring.Variant004d1fa7416a777a332a960c2b1f1cac85a506af0aa382a261749fd0434ae3c6

set_option aesop.check.all true

axiom Ring : Type

axiom RingHom (R S : Ring) : Type

@[aesop 99%]
axiom RingId (R : Ring) : RingHom R R

@[aesop 99%]
axiom ZZ : Ring

example : ∃ (R : Ring) (_ : RingHom R R), True := by
  aesop (add safe True.intro) (config := { enableSimp := false })
```
