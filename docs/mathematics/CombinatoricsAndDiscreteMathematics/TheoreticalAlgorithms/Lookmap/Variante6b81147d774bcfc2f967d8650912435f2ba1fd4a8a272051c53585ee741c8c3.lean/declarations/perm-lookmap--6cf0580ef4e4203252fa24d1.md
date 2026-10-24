# perm_lookmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7638ed7a7f5c12ab3551e74d092247e69be1c4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8195588-6b9e-26e8-fd3e-bb73025eb91c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a83eebf4-efc0-95c2-442e-c3b975f367cc",
  "kind": "theorem",
  "lexical_name": "perm_lookmap",
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
  "slug": "perm-lookmap--6cf0580ef4e4203252fa24d1",
  "source": {
    "blob": "c7638ed7a7f5c12ab3551e74d092247e69be1c4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cf0580ef4e4203252fa24d1c0224f1a381e9ec733db02246410712e15f924c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a83eebf4-efc0-95c2-442e-c3b975f367cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_lookmap (f : α → Option α) {l₁ l₂ : List α}
    (H : Pairwise (fun a b => ∀ c ∈ f a, ∀ d ∈ f b, a = b ∧ c = d) l₁) (p : l₁ ~ l₂) :
    lookmap f l₁ ~ lookmap f l₂ := by
  induction p with
  | nil => simp
  | cons a p IH =>
    cases h : f a
    · simpa [h] using IH (pairwise_cons.1 H).2
    · simp [lookmap_cons_some _ _ h, p]
  | swap a b l =>
    rcases h₁ : f a with - | c <;> rcases h₂ : f b with - | d
    · simpa [h₁, h₂] using swap _ _ _
    · simpa [h₁, lookmap_cons_some _ _ h₂] using swap _ _ _
    · simpa [lookmap_cons_some _ _ h₁, h₂] using swap _ _ _
    · rcases (pairwise_cons.1 H).1 _ (mem_cons.2 (Or.inl rfl)) _ h₂ _ h₁ with ⟨rfl, rfl⟩
      exact Perm.refl _
  | trans p₁ _ IH₁ IH₂ =>
    refine (IH₁ H).trans (IH₂ ((p₁.pairwise_iff ?_).1 H))
    intro x y h c hc d hd
    rw [@eq_comm _ y, @eq_comm _ c]
    apply h d hd c hc

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7638ed7a7f5c12ab3551e74d092247e69be1c4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
