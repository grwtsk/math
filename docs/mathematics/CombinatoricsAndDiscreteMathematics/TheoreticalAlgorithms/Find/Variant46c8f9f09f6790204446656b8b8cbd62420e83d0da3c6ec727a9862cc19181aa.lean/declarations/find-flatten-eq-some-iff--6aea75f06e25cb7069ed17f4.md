# find?_flatten_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77c03aa5a3f59c3fe67e5c593c97f676c21f5320",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecb6c41b-d5ed-af20-abca-a2a98f1751a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6067060-0852-f872-5505-fba154fa9946",
  "kind": "theorem",
  "lexical_name": "find?_flatten_eq_some_iff",
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
  "slug": "find-flatten-eq-some-iff--6aea75f06e25cb7069ed17f4",
  "source": {
    "blob": "77c03aa5a3f59c3fe67e5c593c97f676c21f5320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 382,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aea75f06e25cb7069ed17f47a0f374fb70e852bf627a9dc601dffa4afdb6d0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6067060-0852-f872-5505-fba154fa9946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_flatten_eq_some_iff {xs : List (List α)} {p : α → Bool} {a : α} :
    xs.flatten.find? p = some a ↔
      p a ∧ ∃ as ys zs bs, xs = as ++ (ys ++ a :: zs) :: bs ∧
        (∀ l ∈ as, ∀ x ∈ l, !p x) ∧ (∀ x ∈ ys, !p x) := by
  rw [find?_eq_some_iff_append]
  constructor
  · rintro ⟨h, ⟨ys, zs, h₁, h₂⟩⟩
    refine ⟨h, ?_⟩
    rw [flatten_eq_append_iff] at h₁
    obtain (⟨as, bs, rfl, rfl, h₁⟩ | ⟨as, bs, c, cs, ds, rfl, rfl, h₁⟩) := h₁
    · replace h₁ := h₁.symm
      rw [flatten_eq_cons_iff] at h₁
      obtain ⟨bs, cs, ds, rfl, h₁, rfl⟩ := h₁
      refine ⟨as ++ bs, [], cs, ds, by simp, ?_⟩
      simp
      rintro l (ma | mb) x m
      · simpa using h₂ x (by simpa using ⟨l, ma, m⟩)
      · specialize h₁ _ mb
        simp_all
    · simp
      refine ⟨as, bs, ?_⟩
      refine ⟨?_, ?_, ?_⟩
      · simp_all
      · intro l ml a m
        simpa using h₂ a (by simpa using .inl ⟨l, ml, m⟩)
      · intro x m
        simpa using h₂ x (by simpa using .inr m)
  · rintro ⟨h, ⟨as, ys, zs, bs, rfl, h₁, h₂⟩⟩
    refine ⟨h, as.flatten ++ ys, zs ++ bs.flatten, by simp, ?_⟩
    intro a m
    simp at m
    obtain ⟨l, ml, m⟩ | m := m
    · exact h₁ l ml a m
    · exact h₂ a m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant46c8f9f09f6790204446656b8b8cbd62420e83d0da3c6ec727a9862cc19181aa.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c03aa5a3f59c3fe67e5c593c97f676c21f5320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
