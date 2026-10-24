# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IO.Variantc98808a3864194f0695bf3cc65d9b911a9d85a8217a9f46fb7e693ec93432476

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `623ac39d435ac01af6dbbbb2c1d8fed6f34b6f4c` · SHA-256 `0394a126e2f286d78116f8d399981145efd1ad7aa3083b5c68108e36c193d364`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfTaskList.Variant09047c9de6e0489aa2f65f25a143adc7b417de53e643e1478bdbb131a214edc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09047c9de6e0489aa2f65f25a143adc7b417de53e643e1478bdbb131a214edc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OfTaskList.Variant09047c9de6e0489aa2f65f25a143adc7b417de53e643e1478bdbb131a214edc4","mathematical_subject":"Computation.DataStructures","original_sha256":"09047c9de6e0489aa2f65f25a143adc7b417de53e643e1478bdbb131a214edc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/MLList/IO.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Lean.System.IO
public import Batteries.Data.MLList.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfTaskList.Variant09047c9de6e0489aa2f65f25a143adc7b417de53e643e1478bdbb131a214edc4

@[expose] public section

/-!
# IO operations using monadic lazy lists.
-/

namespace MLList

/--
Give a list of tasks, return the monadic lazy list which
returns the values as they become available.
-/
def ofTaskList (tasks : List (Task α)) : MLList BaseIO α :=
  fix?' (init := tasks) fun t => do
    if h : 0 < t.length then
      some <$> IO.waitAny' t h
    else
      pure none
```
