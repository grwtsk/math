# exists_mem_stabilizer_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8a8d377fd703de2e88b733fc1ec376a693e1fae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51fd1534-2d7c-a303-1356-c5362cd782ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08bd09f7-a9cf-4ce7-f3ad-50da1ab1c8db",
  "kind": "theorem",
  "lexical_name": "exists_mem_stabilizer_smul_eq",
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
  "slug": "exists-mem-stabilizer-smul-eq--d22c11ff1e7753a34b52aa71",
  "source": {
    "blob": "b8a8d377fd703de2e88b733fc1ec376a693e1fae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 149,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d22c11ff1e7753a34b52aa71b78504188a8ae08fd3b9dbbf603f8cec494b1aff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08bd09f7-a9cf-4ce7-f3ad-50da1ab1c8db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_stabilizer_smul_eq (hα : 4 ≤ Nat.card α) {t : Set α} :
    ∀ a ∈ t, ∀ b ∈ t, ∃ g ∈ stabilizer (alternatingGroup α) t, g • a = b := by
  intro a ha b hb
  by_cases hab : a = b
  · use 1
    simpa
  by_cases ht : 2 < t.ncard
  · rw [← Set.ncard_pair hab] at ht
    replace ht := Set.sdiff_nonempty_of_ncard_lt_ncard ht
    obtain ⟨c, hct, hc⟩ := ht
    simp only [mem_insert_iff, not_or] at hc
    refine ⟨⟨swap c a * swap a b, by simp [hab, hc.1]⟩, ?_, ?_⟩
    · simp only [mem_stabilizer_set' t.toFinite, Subgroup.mk_smul, Perm.smul_def, coe_mul]
      grind
    · simp only [Subgroup.mk_smul, Perm.smul_def, coe_mul]
      grind
  · have := ncard_add_ncard_compl t
    obtain ⟨c, d, hc, hd, hcd⟩ := (one_lt_ncard_iff tᶜ.toFinite).mp (by grind)
    refine ⟨⟨swap a b * swap c d, by simp [hab, hcd]⟩, ?_, ?_⟩
    · simp only [mem_stabilizer_set' t.toFinite, Subgroup.mk_smul, Perm.smul_def, coe_mul]
      grind
    · simp only [Subgroup.smul_def, Perm.smul_def, Perm.coe_mul]
      grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a8d377fd703de2e88b733fc1ec376a693e1fae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
