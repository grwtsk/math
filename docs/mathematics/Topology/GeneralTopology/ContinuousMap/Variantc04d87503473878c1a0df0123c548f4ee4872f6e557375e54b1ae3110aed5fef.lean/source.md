# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousMap.Variantc04d87503473878c1a0df0123c548f4ee4872f6e557375e54b1ae3110aed5fef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb99d4af9f9c4c057f45d59b9d97d8f131d6f390` · SHA-256 `2f0812e1f271db2dc62979d792e536893fb7c24d1d93848180ba289dcef336fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Classes.Variantbb9ff7b6155c79466ed5b78ac595ba8eebeeb700dd7559cc86fb2ba4e83a6a9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb9ff7b6155c79466ed5b78ac595ba8eebeeb700dd7559cc86fb2ba4e83a6a9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Classes.Variantbb9ff7b6155c79466ed5b78ac595ba8eebeeb700dd7559cc86fb2ba4e83a6a9d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bb9ff7b6155c79466ed5b78ac595ba8eebeeb700dd7559cc86fb2ba4e83a6a9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/CStarAlgebra/ContinuousMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Topology.ContinuousMap.Compact
public import Mathlib.Topology.ContinuousMap.ZeroAtInfty

/-! # C⋆-algebras of continuous functions

We place these here because, for reasons related to the import hierarchy, they cannot be placed in
earlier files.
-/


namespace GRWTSK.Topology.GeneralTopology.Classes.Variantbb9ff7b6155c79466ed5b78ac595ba8eebeeb700dd7559cc86fb2ba4e83a6a9d

public section

variable {α A : Type*}
noncomputable section

namespace BoundedContinuousFunction

variable [TopologicalSpace α]

instance [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra (α →ᵇ A) where

instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra (α →ᵇ A) where

instance [CStarAlgebra A] : CStarAlgebra (α →ᵇ A) where

instance [CommCStarAlgebra A] : CommCStarAlgebra (α →ᵇ A) where

end BoundedContinuousFunction

namespace ContinuousMap

variable [TopologicalSpace α] [CompactSpace α]

instance [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra C(α, A) where

instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra C(α, A) where

instance [CStarAlgebra A] : CStarAlgebra C(α, A) where

instance [CommCStarAlgebra A] : CommCStarAlgebra C(α, A) where

end ContinuousMap

namespace ZeroAtInftyContinuousMap

open scoped ZeroAtInfty

instance [TopologicalSpace α] [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra C₀(α, A) where

instance [TopologicalSpace α] [NonUnitalCommCStarAlgebra A] :
    NonUnitalCommCStarAlgebra C₀(α, A) where

end ZeroAtInftyContinuousMap
```
