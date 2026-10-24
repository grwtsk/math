# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variant64ed3d6185deef079115ff7f62c39459288f7ab45e8bb822e0d2bdd16972321d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bad9425b9bfefa9021f2011f643af27c832b617` · SHA-256 `2ae4e303e45ce8220dde503b51f957971fd1cfd50bb0afcec6f579a29bc616ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variant23da245e344ea841583e68e20201de24850654a187dcaaa536e2751904ab8d04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23da245e344ea841583e68e20201de24850654a187dcaaa536e2751904ab8d04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.StronglyRegular.Variant23da245e344ea841583e68e20201de24850654a187dcaaa536e2751904ab8d04","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"23da245e344ea841583e68e20201de24850654a187dcaaa536e2751904ab8d04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Combinatorics/SimpleGraph/StronglyRegular.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Tristan Figueroa-Reid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tristan Figueroa-Reid
-/
module

public import Mathlib.Combinatorics.SimpleGraph.StronglyRegular


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variant23da245e344ea841583e68e20201de24850654a187dcaaa536e2751904ab8d04

namespace SimpleGraph

/-- **Conway's 99-graph problem** (from https://oeis.org/A248380/a248380.pdf)
can be reformulated as the existence of a strongly regular graph with params (99, 14, 1, 2).
This is an open problem, and has no known proof of existence. -/
proof_wanted conway_99 : ∃ (α : Type) (_ : Fintype α) (G : SimpleGraph α) (_ : DecidableRel G.Adj),
    IsSRGWith G 99 14 1 2

end SimpleGraph
```
