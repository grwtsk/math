# IsUltra.finsetSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac968bd123099b154885ed6bf1ffeebaf356a99c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83ed37e2-d601-182a-2075-60fbb7a4982d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdc3812d-8e57-25cc-eb6c-a017c34ea3ec",
  "kind": "lemma",
  "lexical_name": "IsUltra.finsetSup",
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
  "slug": "isultra-finsetsup--2b491569a0d5199f8714171b",
  "source": {
    "blob": "ac968bd123099b154885ed6bf1ffeebaf356a99c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b491569a0d5199f8714171bf9ede155ef44dca83485899ae789cef604a2cb0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdc3812d-8e57-25cc-eb6c-a017c34ea3ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUltra.finsetSup {Y : Type*} [AddCommMonoid R] [LinearOrder R] [AddLeftStrictMono R]
    [IsOrderedAddMonoid R] {f : Y → PseudoMetric X R} {s : Finset Y} (h : ∀ d ∈ s, IsUltra (f d)) :
    IsUltra (s.sup f) := by
  constructor
  intro x y z
  rcases s.eq_empty_or_nonempty with rfl | hs
  · simp
  simp_rw [finsetSup_apply hs]
  apply Finset.sup'_le
  simp only [le_sup_iff, Finset.le_sup'_iff]
  intro i hi
  have h := (h i hi).le_sup' x y z
  simp only [le_sup_iff] at h
  refine h.imp ?_ ?_ <;>
  intro H <;>
  exact ⟨i, hi, H⟩

end IsUltra

section ball

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac968bd123099b154885ed6bf1ffeebaf356a99c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
