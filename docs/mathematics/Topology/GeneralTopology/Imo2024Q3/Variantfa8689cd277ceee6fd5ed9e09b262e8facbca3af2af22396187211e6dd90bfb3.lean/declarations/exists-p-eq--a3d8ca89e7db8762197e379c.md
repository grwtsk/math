# exists_p_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4230e6f-0b7f-75d6-dbeb-7fb975b58574",
  "kind": "lemma",
  "lexical_name": "exists_p_eq",
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
  "slug": "exists-p-eq--a3d8ca89e7db8762197e379c",
  "source": {
    "blob": "dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 986,
    "line": 964,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3d8ca89e7db8762197e379c40f3af61942e246e429d8265037c07e5ff898bb8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4230e6f-0b7f-75d6-dbeb-7fb975b58574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 964–986.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_p_eq : ∃ b c, ∀ n, b < n → p a (N' a N + 2 * n) = c := by
  let c : ℕ := sSup (Set.range (fun i ↦ p a (N' a N + 2 * (2 + i))))
  have hk : 2 * k a ∈ upperBounds (Set.range (fun i ↦ p a (N' a N + 2 * (2 + i)))) := by
    simp only [mem_upperBounds, Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff]
    exact fun i ↦ hc.p_le_two_mul_k (by lia) (hc.small_apply_N'_add_iff_even.mpr (by simp))
  have hlec : ∀ j ∈ Set.range (fun i ↦ p a (N' a N + 2 * (2 + i))), j ≤ c :=
    fun _ hj ↦ le_csSup ⟨_, hk⟩ hj
  obtain ⟨t, ht⟩ := Set.Nonempty.csSup_mem (Set.range_nonempty _) (BddAbove.finite ⟨2 * k a, hk⟩)
  have heqc (u : ℕ) : p a (N' a N + 2 * (2 + t + u)) = c := by
    induction u with
    | zero => simpa using ht
    | succ u ih =>
      refine le_antisymm ?_ (ih ▸ ?_)
      · simp only [Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff] at hlec
        exact add_assoc _ _ (u + 1) ▸ hlec (t + (u + 1))
      · have hs : Small a (a (N' a N + 2 * (2 + t + u))) := by
          rw [hc.small_apply_N'_add_iff_even]
          simp
        convert! hc.p_apply_le_p_apply_add_two (by lia) hs using 1
  refine ⟨1 + t, c, fun n hn ↦ ?_⟩
  rw [show n = 2 + t + (n - (2 + t)) by lia]
  exact heqc _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean#L964).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
