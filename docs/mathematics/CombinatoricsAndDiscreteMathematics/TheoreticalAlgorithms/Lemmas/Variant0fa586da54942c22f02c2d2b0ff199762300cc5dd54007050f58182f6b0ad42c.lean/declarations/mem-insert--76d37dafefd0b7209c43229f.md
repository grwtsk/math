# mem_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c8e7bcf-dcdc-db93-3400-1a552fa0bfc8",
  "kind": "theorem",
  "lexical_name": "mem_insert",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "mem-insert--76d37dafefd0b7209c43229f",
  "source": {
    "blob": "a56de27973388966c2b4db47ed7d2b083eac3d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 814,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76d37dafefd0b7209c43229fee8644e65af048710e4b245bddb63dc5fcf250a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c8e7bcf-dcdc-db93-3400-1a552fa0bfc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_insert [Std.TransCmp (α := α) cmp] {t : RBNode α}
    (ht : Balanced t c n) (ht₂ : Ordered cmp t) :
    v' ∈ t.insert cmp v ↔ (v' ∈ t ∧ t.find? (cmp v) ≠ some v') ∨ v' = v := by
  refine ⟨fun h => ?_, fun | .inl ⟨h₁, h₂⟩ => ?_ | .inr h => ?_⟩
  · match e : zoom (cmp v) t with
    | (nil, p) =>
      let ⟨_, _, h₁, h₂⟩ := exists_insert_toList_zoom_nil ht e
      simp [← mem_toList, h₂] at h; rw [← or_assoc, or_right_comm] at h
      refine h.imp_left fun h => ?_
      simp [← mem_toList, h₁, h]
      rw [find?_eq_zoom, e]; nofun
    | (node .., p) =>
      let ⟨_, _, h₁, h₂⟩ := exists_insert_toList_zoom_node ht e
      simp [← mem_toList, h₂] at h; simp [← mem_toList, h₁]; rw [or_left_comm] at h ⊢
      rcases h with _|h <;> simp [*]
      refine .inl fun h => ?_
      rw [find?_eq_zoom, e] at h; cases h
      suffices cmpLT cmp v' v' by cases Std.ReflCmp.compare_self.symm.trans this.1
      have := ht₂.toList_sorted; simp [h₁, List.pairwise_append] at this
      exact h.elim (this.2.2 _ · |>.1) (this.2.1.1 _)
  · exact (mem_insert_of_mem ht h₁).resolve_right fun h' => h₂ <| ht₂.find?_some.2 ⟨h₁, h'⟩
  · exact h ▸ mem_insert_self ht

end RBNode

open RBNode (IsCut IsStrictCut)

namespace RBSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fa586da54942c22f02c2d2b0ff199762300cc5dd54007050f58182f6b0ad42c.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a56de27973388966c2b4db47ed7d2b083eac3d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
