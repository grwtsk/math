# Connected.induce_compl_singleton_of_degree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4eb94de2-8fab-50de-1f2a-9f3c56fd1c07",
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
  "slug": "connected-induce-compl-singleton-of-degree-eq-one--7e7a3adc5860e55d9e77a8d2",
  "source": {
    "blob": "ce7a0b545fb79a395061d82f7e312b84ebe085d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 541,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e7a3adc5860e55d9e77a8d27e492a0efac7c15adfa3f8d39c061d7aaacb43c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4eb94de2-8fab-50de-1f2a-9f3c56fd1c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–571.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7a0b545fb79a395061d82f7e312b84ebe085d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
