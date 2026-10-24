# nodup_antidiagonalTuple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "588f0ae76d7fb19284088b7e1bdd57144ad254d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dccb4e27-9b03-8859-3d5f-e63ec9affbfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73fc4349-122a-140e-df69-ae423c87f118",
  "kind": "theorem",
  "lexical_name": "nodup_antidiagonalTuple",
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
  "slug": "nodup-antidiagonaltuple--6faf70f1b266f64eeab6f851",
  "source": {
    "blob": "588f0ae76d7fb19284088b7e1bdd57144ad254d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6faf70f1b266f64eeab6f8518de9cfc649dcd286705062d6d030349ecf1fecb3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73fc4349-122a-140e-df69-ae423c87f118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_antidiagonalTuple (k n : ℕ) : List.Nodup (antidiagonalTuple k n) := by
  induction' k with k ih generalizing n
  · cases n
    · simp
    · simp [eq_comm]
  simp_rw [antidiagonalTuple, List.nodup_bind]
  constructor
  · intro i _
    exact (ih i.snd).map (Fin.cons_right_injective (α := fun _ => ℕ) i.fst)
  induction' n with n n_ih
  · exact List.pairwise_singleton _ _
  · rw [List.Nat.antidiagonal_succ]
    refine' List.Pairwise.cons (fun a ha x hx₁ hx₂ => _) (n_ih.map _ fun a b h x hx₁ hx₂ => _)
    · rw [List.mem_map] at hx₁ hx₂ ha
      obtain ⟨⟨a, -, rfl⟩, ⟨x₁, -, rfl⟩, ⟨x₂, -, h⟩⟩ := ha, hx₁, hx₂
      rw [Fin.cons_eq_cons] at h
      injection h.1
    · rw [List.mem_map] at hx₁ hx₂
      obtain ⟨⟨x₁, hx₁, rfl⟩, ⟨x₂, hx₂, h₁₂⟩⟩ := hx₁, hx₂
      dsimp at h₁₂
      rw [Fin.cons_eq_cons, Nat.succ_inj'] at h₁₂
      obtain ⟨h₁₂, rfl⟩ := h₁₂
      rw [h₁₂] at h
      exact h (List.mem_map_of_mem _ hx₁) (List.mem_map_of_mem _ hx₂)
#align list.nat.nodup_antidiagonal_tuple List.Nat.nodup_antidiagonalTuple

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `588f0ae76d7fb19284088b7e1bdd57144ad254d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
