# Nat.range_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e29ffc15e22165fea673f25ce8c171a1cf8c14c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:246e1d67-fae3-c11d-47cb-434f602d7b5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a308fbce-ae0d-d166-dedd-a4114535745e",
  "kind": "lemma",
  "lexical_name": "Nat.range_mul_add",
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
  "slug": "nat-range-mul-add--dffa88140550d6dbcb5a9d27",
  "source": {
    "blob": "0e29ffc15e22165fea673f25ce8c171a1cf8c14c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1299,
    "line": 1287,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dffa88140550d6dbcb5a9d271b85a1fd5a7124e22e1856aa3641468f85d2d9af",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a308fbce-ae0d-d166-dedd-a4114535745e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1287–1299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.range_mul_add (m k : ℕ) :
    Set.range (fun n : ℕ ↦ m * n + k) = {n : ℕ | (n : ZMod m) = k ∧ k ≤ n} := by
  ext n
  simp only [Set.mem_range, Set.mem_ofPred_eq]
  conv => enter [1, 1, y]; rw [add_comm, eq_comm]
  refine ⟨fun ⟨a, ha⟩ ↦ ⟨?_, le_iff_exists_add.mpr ⟨_, ha⟩⟩, fun ⟨H₁, H₂⟩ ↦ ?_⟩
  · simpa using congr_arg ((↑) : ℕ → ZMod m) ha
  · obtain ⟨a, ha⟩ := le_iff_exists_add.mp H₂
    simp only [ha, Nat.cast_add, add_eq_left, ZMod.natCast_eq_zero_iff] at H₁
    obtain ⟨b, rfl⟩ := H₁
    exact ⟨b, ha⟩

/-- Equivalence between `ℕ` and `ZMod N × ℕ`, sending `n` to `(n mod N, n / N)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean#L1287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e29ffc15e22165fea673f25ce8c171a1cf8c14c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
