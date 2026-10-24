# add_eq_univ_of_one_le_schirelmannDensity_add_schnirelmannDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5c5972424d93a43008c64807b91b2f8755c4aa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9171db24-d3da-6e2b-11ec-ebf345a3f5bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95dc5717-8f29-96b9-c061-1ed5c29ceb6b",
  "kind": "theorem",
  "lexical_name": "add_eq_univ_of_one_le_schirelmannDensity_add_schnirelmannDensity",
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
  "slug": "add-eq-univ-of-one-le-schirelmanndensity-add-schnirelmanndensity--17bc325d8638f654efaa7bc5",
  "source": {
    "blob": "f5c5972424d93a43008c64807b91b2f8755c4aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17bc325d8638f654efaa7bc5b32fda8ec46920ceb5ea08146a443b482d39e0ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95dc5717-8f29-96b9-c061-1ed5c29ceb6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_eq_univ_of_one_le_schirelmannDensity_add_schnirelmannDensity {A B : Set ℕ}
    [DecidablePred (· ∈ A)] [DecidablePred (· ∈ B)] (hA : 0 ∈ A) (hB : 0 ∈ B)
    (h : 1 ≤ schnirelmannDensity A + schnirelmannDensity B) : A + B = .univ := by
  rw [Set.eq_univ_iff_forall]
  rintro (_ | m)
  · exact ⟨0, hA, 0, ⟨hB, rfl⟩⟩
  set n := m + 1
  by_cases hnA : n ∈ A
  · exact ⟨n, by simp [hnA], 0, ⟨hB, rfl⟩⟩
  by_cases hnB : n ∈ B
  · exact ⟨0, hA, n, ⟨hnB, by simp⟩⟩
  let f : ℕ ⊕ ℕ → ℕ
    | .inl x => x
    | .inr y => n - y
  let sA := {a ∈ Ioc 0 n | a ∈ A}
  let sB := {b ∈ Ioc 0 n | b ∈ B}
  have hc : #(image f (disjSum sA sB)) < #(disjSum sA sB) := calc
    #(image f (disjSum sA sB)) ≤ #(Ioo 0 n) := by gcongr; grind [mem_disjSum]
    _ < n := by simp [Nat.card_Ioo, n]
    _ ≤ #(disjSum sA sB) := by
      rw [card_disjSum]
      rify
      nlinarith [@schnirelmannDensity_mul_le_card_filter A _ n,
        @schnirelmannDensity_mul_le_card_filter B _ n]
  obtain ⟨a | b, ha, a | b, hb, _, hxy⟩ := exists_ne_map_eq_of_card_image_lt hc <;>
  simp only [sA, sB, inl_mem_disjSum, mem_filter, mem_Ioc, inr_mem_disjSum] at ha hb <;>
  first | grind [inr_mem_disjSum] | exact ⟨a, by simp [*], b, by simp [*], by grind⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variant1da36a463bc5a71ecbeb8dac2d988fb8baa2d5e215f8caeff64831bcd9f4b617.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c5972424d93a43008c64807b91b2f8755c4aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
