# mem_εClosure_iff_exists_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67cd55d2-3518-18be-a4e7-b9ccadb6188f",
  "kind": "theorem",
  "lexical_name": "mem_εClosure_iff_exists_path",
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
  "slug": "mem-closure-iff-exists-path--79e6c321377ffafe93260c8d",
  "source": {
    "blob": "b067fe8080cd161b9bda38a2777062ab3f2a8310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 232,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79e6c321377ffafe93260c8d705cd89a097bc84034600aa1e717577b3f3a83b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67cd55d2-3518-18be-a4e7-b9ccadb6188f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_εClosure_iff_exists_path {s₁ s₂ : σ} :
    s₂ ∈ M.εClosure {s₁} ↔ ∃ n, M.IsPath s₁ s₂ (.replicate n none) where
  mp h := by
    induction h using εClosure_induction with
    | base t =>
      use 0
      subst t
      apply IsPath.nil
    | step _ _ _ _ ih =>
      obtain ⟨n, _⟩ := ih
      use n + 1
      rw [List.replicate_add, isPath_append]
      tauto
  mpr := by
    intro ⟨n, h⟩
    induction n generalizing s₂
    · rw [List.replicate_zero] at h
      apply IsPath.eq_of_nil at h
      solve_by_elim
    · simp_rw [List.replicate_add, isPath_append, List.replicate_one, isPath_singleton] at h
      obtain ⟨t, _, _⟩ := h
      solve_by_elim [mem_εClosure_of_mem_step]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EpsilonNFA/Variantbb2d8f676f5fa385c815c5ff5568c8c247cf235032735218bb7079ac240be642.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b067fe8080cd161b9bda38a2777062ab3f2a8310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
