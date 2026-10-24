# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Chord.Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dc079f4a51c9dadd94fb1eff6c185813575619d` · SHA-256 `493b6b2ff89410bcc42cd63ddb3955d5424b693c75537077cc0eb32ff83bc76a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"e90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Combinatorics/SimpleGraph/Walk/Chord.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Tianyi Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tianyi Zhao
-/
module

public import Mathlib.Combinatorics.SimpleGraph.Walk.Basic

/-!
# Chords of walks

This file defines chords and chordless walks in a simple graph.

## Main definitions

* `SimpleGraph.Walk.IsChord`: an edge of the ambient graph between two vertices of a walk
  which is not an edge of the walk itself
* `SimpleGraph.Walk.IsChordless`: a walk with no chords

## Tags
walks, chords
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0

public section

namespace SimpleGraph
namespace Walk

variable {V : Type*} {G : SimpleGraph V} {u v w : V}

/-- A chord of a walk `p` is an edge of `G` between two vertices of `p` which is not one
of the edges of `p`. -/
@[expose]
def IsChord (p : G.Walk u v) (e : Sym2 V) : Prop :=
  e ∈ G.edgeSet ∧ e ∉ p.edges ∧
    e.lift ⟨fun v w => v ∈ p.support ∧ w ∈ p.support, by grind⟩

theorem isChord_sym2Mk {p : G.Walk u v} {u' v' : V} :
    p.IsChord s(u', v') ↔ G.Adj u' v' ∧ s(u', v') ∉ p.edges ∧ u' ∈ p.support ∧ v' ∈ p.support :=
  .rfl

/-- A walk is chordless if it has no chords. -/
@[expose]
def IsChordless (p : G.Walk u v) : Prop :=
  ∀ ⦃e : Sym2 V⦄, ¬ p.IsChord e

theorem isChordless_iff_forall_mem_edges {p : G.Walk u v} :
    p.IsChordless ↔
      ∀ ⦃u' v' : V⦄, u' ∈ p.support → v' ∈ p.support → G.Adj u' v' → s(u', v') ∈ p.edges := by
  simp [IsChordless, Sym2.forall, isChord_sym2Mk]; grind

theorem IsChordless.mem_edges {p : G.Walk u v} (h : p.IsChordless) {u' v' : V}
    (hu' : u' ∈ p.support) (hv' : v' ∈ p.support) (hadj : G.Adj u' v') : s(u', v') ∈ p.edges :=
  isChordless_iff_forall_mem_edges.mp h hu' hv' hadj

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0.SimpleGraph.Adj.isChordless_toWalk (h : G.Adj u v) : h.toWalk.IsChordless := by
  grind [isChordless_iff_forall_mem_edges, h.support_toWalk, h.edges_toWalk]

end Walk
end SimpleGraph
```
