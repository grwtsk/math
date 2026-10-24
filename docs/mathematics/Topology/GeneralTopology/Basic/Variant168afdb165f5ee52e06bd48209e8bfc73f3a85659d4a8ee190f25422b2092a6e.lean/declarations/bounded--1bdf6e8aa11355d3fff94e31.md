# bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6111223-d7a0-2c05-29eb-90c7d45f5f4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27a147ac-32d7-a8a8-d321-0ec5d314a061",
  "kind": "lemma",
  "lexical_name": "bounded",
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
  "slug": "bounded--1bdf6e8aa11355d3fff94e31",
  "source": {
    "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bdf6e8aa11355d3fff94e315caee05969c7806dd47fe3893f9ea4b8f57a7b50",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27a147ac-32d7-a8a8-d321-0ec5d314a061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bounded (hf : IsCauSeq abv f) : ∃ r, ∀ i, abv (f i) < r := by
  obtain ⟨i, h⟩ := hf _ zero_lt_one
  set R : ℕ → α := @Nat.rec (fun _ => α) (abv (f 0)) fun i c => max c (abv (f i.succ)) with hR
  have : ∀ i, ∀ j ≤ i, abv (f j) ≤ R i := by
    refine Nat.rec (by simp [hR]) ?_
    rintro i hi j (rfl | hj)
    · simp [R]
    · exact (hi j hj).trans (le_max_left _ _)
  refine ⟨R i + 1, fun j ↦ ?_⟩
  obtain hji | hij := le_total j i
  · exact (this i _ hji).trans_lt (lt_add_one _)
  · simpa using (abv_add abv _ _).trans_lt <| add_lt_add_of_le_of_lt (this i _ le_rfl) (h _ hij)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
