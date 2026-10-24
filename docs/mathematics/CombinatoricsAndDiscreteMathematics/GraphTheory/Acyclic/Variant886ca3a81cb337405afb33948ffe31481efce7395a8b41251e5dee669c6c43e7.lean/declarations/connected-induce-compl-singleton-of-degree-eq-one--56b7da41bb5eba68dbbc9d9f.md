# Connected.induce_compl_singleton_of_degree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa7c3170-6239-8b85-c19b-715a56c8d8c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0f0dd21-3d87-f04b-b4c2-2c17f564d62d",
  "kind": "lemma",
  "lexical_name": "Connected.induce_compl_singleton_of_degree_eq_one",
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
  "slug": "connected-induce-compl-singleton-of-degree-eq-one--56b7da41bb5eba68dbbc9d9f",
  "source": {
    "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 533,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56b7da41bb5eba68dbbc9d9f7f0d04776d354f0c64e4e1f327609d05a57f2e63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f0dd21-3d87-f04b-b4c2-2c17f564d62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Connected.induce_compl_singleton_of_degree_eq_one (hconn : G.Connected) {v : V}
    [Fintype ↑(G.neighborSet v)] (hdeg : G.degree v = 1) : (G.induce {v}ᶜ).Connected := by
  obtain ⟨u, adj_vu, hu⟩ := degree_eq_one_iff_existsUnique_adj.mp hdeg
  refine (connected_iff _).mpr ⟨?_, u, by aesop⟩
  /- There exists a walk between any two vertices w and x in G.induce {v}ᶜ
  via the unique vertex u adjacent to vertex v. -/
  intro w x
  obtain ⟨pwu, hpwu⟩ := hconn.exists_isPath w u
  obtain ⟨pux, hpux⟩ := hconn.exists_isPath u x
  rw [Reachable, ← exists_true_iff_nonempty]
  classical
  use ((pwu.append pux).toPath.val.induce {v}ᶜ ?_).copy (SetCoe.ext rfl) (SetCoe.ext rfl)
  /- Each path between vertex u and another vertex in G.induce {v}ᶜ
  is contained in G.induce {v}ᶜ. -/
  intro z hz
  rw [Set.mem_compl_iff, Set.mem_singleton_iff]
  obtain ⟨pwz, pzx, p_eq_pwzx⟩ := mem_support_iff_exists_append.mp hz
  /- Prove vertex v is not in the path formed from the concatenated walks
  by showing that vertex u must then be passed twice. -/
  by_contra
  subst_vars
  refine List.nodup_iff_forall_not_duplicate.mp (pwu.append pux).toPath.nodup_support u ?_
  rw [p_eq_pwzx, support_append, List.duplicate_iff_two_le_count, List.count_append]
  have := List.one_le_count_iff.mpr (pwz.getVert_mem_support (pwz.length - 1))
  simp only [hu _ (pwz.adj_penultimate (not_nil_of_ne (by aesop))).symm] at this
  have := List.one_le_count_iff.mpr (pzx.snd_mem_tail_support (not_nil_of_ne (by aesop)))
  rw [hu _ (pzx.adj_snd (not_nil_of_ne (by aesop)))] at this
  lia

/-- A finite nontrivial connected graph contains a vertex that leaves the graph connected if
removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a803b1ac3276ace8b346d0663ff9401e2940094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
