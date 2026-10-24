# Multiset.le_prod_of_submultiplicative_on_pred_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdd55c3b75c8fd96988038b37f80ea5960543d26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6112c56f-8c58-b96d-2898-624b036e1848",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61529b53-f1c6-7515-e0e8-138dc2057b99",
  "kind": "theorem",
  "lexical_name": "Multiset.le_prod_of_submultiplicative_on_pred_of_nonneg",
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
  "slug": "multiset-le-prod-of-submultiplicative-on-pred-of-nonneg--148b63b9c647bc728eee39cb",
  "source": {
    "blob": "fdd55c3b75c8fd96988038b37f80ea5960543d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:148b63b9c647bc728eee39cbe2d493bc5e72f793acc45d6a43e855aa2de5d4bf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61529b53-f1c6-7515-e0e8-138dc2057b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Multiset.le_prod_of_submultiplicative_on_pred_of_nonneg (f : α → β) (p : α → Prop)
    (h0 : ∀ a, 0 ≤ f a) (h_one : f 1 ≤ 1) (h_mul : ∀ a b, p a → p b → f (a * b) ≤ f a * f b)
    (hp_mul : ∀ a b, p a → p b → p (a * b)) (s : Multiset α) (hps : ∀ a, a ∈ s → p a) :
    f s.prod ≤ (s.map f).prod := by
  revert s
  refine Multiset.induction (by simp [h_one]) ?_
  intro a s hs hpsa
  by_cases hs0 : s = ∅
  · simp [hs0]
  · have hps : ∀ x, x ∈ s → p x := fun x hx ↦ hpsa x (mem_cons_of_mem hx)
    have hp_prod : p s.prod := prod_induction_nonempty p hp_mul hs0 hps
    rw [prod_cons, map_cons, prod_cons]
    exact (h_mul a s.prod (hpsa a (mem_cons_self a s)) hp_prod).trans
      (mul_le_mul_of_nonneg_left (hs hps) (h0 _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdd55c3b75c8fd96988038b37f80ea5960543d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
