# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Konigsberg.Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6de9bf589348485898be0eb2ff7022b239432a7b` · SHA-256 `9ec860c9326487fd85472592edc945894e6af007b0340b6124f8b76c07f0a88d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Verts.Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.Verts.Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"bdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Wiedijk100Theorems/Konigsberg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Combinatorics.SimpleGraph.Trails
import Mathlib.Tactic.DeriveFintype


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Verts.Variantbdfa4c477f628f38ff396070956065e466ab6879a94f1f4faec094fd76765adc

#align_import wiedijk_100_theorems.konigsberg from "leanprover-community/mathlib"@"5563b1b49e86e135e8c7b556da5ad2f5ff881cad"

/-!
# The Königsberg bridges problem

We show that a graph that represents the islands and mainlands of Königsberg and seven bridges
between them has no Eulerian trail.
-/


namespace Konigsberg

/-- The vertices for the Königsberg graph; four vertices for the bodies of land and seven
vertices for the bridges. -/
inductive Verts : Type
  -- The islands and mainlands
  | V1 | V2 | V3 | V4
  -- The bridges
  | B1 | B2 | B3 | B4 | B5 | B6 | B7
  deriving DecidableEq, Fintype
#align konigsberg.verts Konigsberg.Verts

open Verts

/-- Each of the connections between the islands/mainlands and the bridges.
These are ordered pairs, but the data becomes symmetric in `Konigsberg.adj`. -/
def edges : List (Verts × Verts) :=
  [(V1, B1), (V1, B2), (V1, B3), (V1, B4), (V1, B5),
   (B1, V2), (B2, V2), (B3, V4), (B4, V3), (B5, V3),
   (V2, B6), (B6, V4),
   (V3, B7), (B7, V4)]
#align konigsberg.edges Konigsberg.edges

/-- The adjacency relation for the Königsberg graph. -/
def adj (v w : Verts) : Bool := (v, w) ∈ edges || (w, v) ∈ edges
#align konigsberg.adj Konigsberg.adj

/-- The Königsberg graph structure. While the Königsberg bridge problem
is usually described using a multigraph, the we use a "mediant" construction
to transform it into a simple graph -- every edge in the multigraph is subdivided
into a path of two edges. This construction preserves whether a graph is Eulerian.

(TODO: once mathlib has multigraphs, either prove the mediant construction preserves the
Eulerian property or switch this file to use multigraphs. -/
@[simps]
def graph : SimpleGraph Verts where
  Adj v w := adj v w
  symm := by
    dsimp [Symmetric, adj]
    decide
  loopless := by
    dsimp [Irreflexive, adj]
    decide
#align konigsberg.graph Konigsberg.graph

instance : DecidableRel graph.Adj := fun a b => inferInstanceAs <| Decidable (adj a b)

/-- To speed up the proof, this is a cache of all the degrees of each vertex,
proved in `Konigsberg.degree_eq_degree`. -/
def degree : Verts → ℕ
  | V1 => 5 | V2 => 3 | V3 => 3 | V4 => 3
  | B1 => 2 | B2 => 2 | B3 => 2 | B4 => 2 | B5 => 2 | B6 => 2 | B7 => 2
#align konigsberg.degree Konigsberg.degree

@[simp]
lemma degree_eq_degree (v : Verts) : graph.degree v = degree v := by cases v <;> rfl
#align konigsberg.degree_eq_degree Konigsberg.degree_eq_degree

lemma not_even_degree_iff (w : Verts) : ¬Even (degree w) ↔ w = V1 ∨ w = V2 ∨ w = V3 ∨ w = V4 := by
  cases w <;> simp

lemma setOf_odd_degree_eq :
    {v | Odd (graph.degree v)} = {Verts.V1, Verts.V2, Verts.V3, Verts.V4} := by
  ext w
  simp [not_even_degree_iff]

/-- The Königsberg graph is not Eulerian. -/
theorem not_isEulerian {u v : Verts} (p : graph.Walk u v) (h : p.IsEulerian) : False := by
  have h := h.card_odd_degree
  have h' := setOf_odd_degree_eq
  apply_fun Fintype.card at h'
  rw [h'] at h
  norm_num at h
#align konigsberg.not_is_eulerian Konigsberg.not_isEulerian

end Konigsberg
```
