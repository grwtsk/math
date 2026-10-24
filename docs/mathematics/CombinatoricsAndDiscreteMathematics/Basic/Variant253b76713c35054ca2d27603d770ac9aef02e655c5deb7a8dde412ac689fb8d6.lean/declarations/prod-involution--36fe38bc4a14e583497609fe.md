# prod_involution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "575bc03ec07700994450b6ef76c57c227e3ea8e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 647,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/253b76713c35054ca2d27603d770ac9aef02e655c5deb7a8dde412ac689fb8d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2c7bed2-94f1-922d-648c-b9af85c3780b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9e82d01-cc42-26c1-1ea1-bdb274826889",
  "kind": "lemma",
  "lexical_name": "prod_involution",
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
  "slug": "prod-involution--36fe38bc4a14e583497609fe",
  "source": {
    "blob": "575bc03ec07700994450b6ef76c57c227e3ea8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 647,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant253b76713c35054ca2d27603d770ac9aef02e655c5deb7a8dde412ac689fb8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36fe38bc4a14e583497609feaf4e4a53cbb4364e965c7012ed58c092c2b0f50b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant253b76713c35054ca2d27603d770ac9aef02e655c5deb7a8dde412ac689fb8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9e82d01-cc42-26c1-1ea1-bdb274826889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_involution (g : ∀ a ∈ s, ι) (hg₁ : ∀ a ha, f a * f (g a ha) = 1)
    (hg₃ : ∀ a ha, f a ≠ 1 → g a ha ≠ a)
    (g_mem : ∀ a ha, g a ha ∈ s) (hg₄ : ∀ a ha, g (g a ha) (g_mem a ha) = a) :
    ∏ x ∈ s, f x = 1 := by
  classical
  induction s using Finset.strongInduction with | H s ih => ?_
  obtain rfl | ⟨x, hx⟩ := s.eq_empty_or_nonempty
  · simp
  have : {x, g x hx} ⊆ s := by simp [insert_subset_iff, hx, g_mem]
  suffices h : ∏ x ∈ s \ {x, g x hx}, f x = 1 by
    rw [← prod_sdiff this, h, one_mul]
    cases eq_or_ne (g x hx) x with
    | inl hx' => simpa [hx'] using hg₃ x hx
    | inr hx' => rw [prod_pair hx'.symm, hg₁]
  suffices h₃ : ∀ a (ha : a ∈ s \ {x, g x hx}), g a (sdiff_subset ha) ∈ s \ {x, g x hx} from
    ih (s \ {x, g x hx}) (ssubset_iff.2 ⟨x, by simp [insert_subset_iff, hx]⟩) _
      (by simp [hg₁]) (fun _ _ => hg₃ _ _) h₃ (fun _ _ => hg₄ _ _)
  simp only [mem_sdiff, mem_insert, mem_singleton, not_or, g_mem, true_and]
  rintro a ⟨ha₁, ha₂, ha₃⟩
  refine ⟨fun h => by simp [← h, hg₄] at ha₃, fun h => ?_⟩
  have : g (g a ha₁) (g_mem _ _) = g (g x hx) (g_mem _ _) := by simp only [h]
  exact ha₂ (by simpa [hg₄] using this)

/-- The difference with `Finset.prod_involution` is that the involution is a non-dependent function,
rather than being allowed to use membership of the domain of the product. -/
@[to_additive "The difference with `Finset.sum_involution` is that the involution is a non-dependent
function, rather than being allowed to use membership of the domain of the sum."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant253b76713c35054ca2d27603d770ac9aef02e655c5deb7a8dde412ac689fb8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant253b76713c35054ca2d27603d770ac9aef02e655c5deb7a8dde412ac689fb8d6.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `575bc03ec07700994450b6ef76c57c227e3ea8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
