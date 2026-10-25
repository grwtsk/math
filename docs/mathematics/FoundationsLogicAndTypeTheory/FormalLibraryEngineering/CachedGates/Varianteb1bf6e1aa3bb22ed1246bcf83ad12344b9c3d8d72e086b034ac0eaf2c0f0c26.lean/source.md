# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CachedGates.Varianteb1bf6e1aa3bb22ed1246bcf83ad12344b9c3d8d72e086b034ac0eaf2c0f0c26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a823c735cfe4a3d03a7a797202c7c200a28f1aa` · SHA-256 `a65f41ec3107cb33f4270bbfd2d235db354f66664c5350dff869fbbd3611e6c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNotCached.Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MkNotCached.Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/AIG/CachedGates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.CachedLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNotCached.Variantad12aa488ee483fb41a8eb2ad3488b947717fffc3b17f9249115f3058fb70f9d

@[expose] public section

/-!
This module contains functions to construct basic logic gates while making use of the sub-circuit
cache if possible.
-/

namespace Std
namespace Sat

namespace AIG

variable {α : Type} [Hashable α] [DecidableEq α]

/--
Create a not gate in the input AIG. This uses the builtin cache to enable automated subterm sharing.
-/
@[inline]
def mkNotCached (aig : AIG α) (gate : Ref aig) : Entrypoint α :=
  ⟨aig, gate.not⟩

/--
Create an and gate in the input AIG. This uses the builtin cache to enable automated subterm
sharing.
-/
@[inline]
def mkAndCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  aig.mkGateCached input

/--
Create an or gate in the input AIG. This uses the builtin cache to enable automated subterm sharing.
-/
def mkOrCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  -- x or y = invert (invert x && invert y)
  let res := aig.mkGateCached <| input.invert true true
  let aig := res.aig
  let auxRef := res.ref
  ⟨aig, auxRef.not⟩

/--
Create an xor gate in the input AIG. This uses the builtin cache to enable automated subterm
sharing.
-/
def mkXorCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  -- x xor y = (invert (x && y)) && (invert ((invert x) && (invert y)))
  let res := aig.mkGateCached input
  let aig := res.aig
  let aux1Ref := res.ref
  let input := input.cast <| by apply LawfulOperator.le_size (f := mkGateCached)
  let res := aig.mkGateCached (input.invert true true)
  let aig := res.aig
  let aux2Ref := res.ref
  let aux1Ref := aux1Ref.cast <| by apply LawfulOperator.le_size (f := mkGateCached)
  aig.mkGateCached ⟨aux1Ref.not, aux2Ref.not⟩

/--
Create an equality gate in the input AIG. This uses the builtin cache to enable automated subterm
sharing.
-/
def mkBEqCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  -- a == b = (invert (a && (invert b))) && (invert ((invert a) && b))
  let res := aig.mkGateCached <| input.invert false true
  let aig := res.aig
  let aux1Ref := res.ref
  let input := input.cast <| by apply LawfulOperator.le_size (f := mkGateCached)
  let res := aig.mkGateCached (input.invert true false)
  let aig := res.aig
  let aux2Ref := res.ref
  let aux1Ref := aux1Ref.cast <| by apply LawfulOperator.le_size (f := mkGateCached)
  aig.mkGateCached ⟨aux1Ref.not, aux2Ref.not⟩

/--
Create an implication gate in the input AIG. This uses the builtin cache to enable automated subterm
sharing.
-/
def mkImpCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  -- a -> b = (invert (a and (invert b)))
  let res := aig.mkGateCached <| input.invert false true
  let aig := res.aig
  let auxRef := res.ref
  ⟨aig, auxRef.not⟩

end AIG

end Sat
end Std
```
