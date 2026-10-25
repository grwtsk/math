# exists_superset_subset_encard_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cec26bceeac41d9d40ae1e03384926c2529d3cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:352806ca-a028-a3cd-168c-6d08494d9c10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0986197-214f-d46b-a44f-588ab67b6dfc",
  "kind": "theorem",
  "lexical_name": "exists_superset_subset_encard_eq",
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
  "slug": "exists-superset-subset-encard-eq--1fc0ccc28031bd7523391c26",
  "source": {
    "blob": "6cec26bceeac41d9d40ae1e03384926c2529d3cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 386,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fc0ccc28031bd7523391c264e7150626e192d87b356f9bc6994543d262b9d26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0986197-214f-d46b-a44f-588ab67b6dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_superset_subset_encard_eq {k : ℕ∞}
    (hst : s ⊆ t) (hsk : s.encard ≤ k) (hkt : k ≤ t.encard) :
    ∃ r, s ⊆ r ∧ r ⊆ t ∧ r.encard = k := by
  obtain (hs | hs) := eq_or_ne s.encard ⊤
  · rw [hs, top_le_iff] at hsk; subst hsk; exact ⟨s, Subset.rfl, hst, hs⟩
  obtain ⟨k, rfl⟩ := exists_add_of_le hsk
  obtain ⟨k', hk'⟩ := exists_add_of_le hkt
  have hk : k ≤ encard (t \ s) := by
    rw [← encard_diff_add_encard_of_subset hst, add_comm] at hkt
    exact WithTop.le_of_add_le_add_right hs hkt
  obtain ⟨r', hr', rfl⟩ := exists_subset_encard_eq hk
  refine ⟨s ∪ r', subset_union_left, union_subset hst (hr'.trans diff_subset), ?_⟩
  rw [encard_union_eq (disjoint_of_subset_right hr' disjoint_sdiff_right)]

section Function

variable {s : Set α} {t : Set β} {f : α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cec26bceeac41d9d40ae1e03384926c2529d3cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
