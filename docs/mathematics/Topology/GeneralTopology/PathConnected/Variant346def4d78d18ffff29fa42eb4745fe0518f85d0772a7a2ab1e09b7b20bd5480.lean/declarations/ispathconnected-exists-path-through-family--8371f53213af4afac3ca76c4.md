# IsPathConnected.exists_path_through_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff5d576f-0e3c-c5e2-7ca1-3cb805da7dce",
  "kind": "theorem",
  "lexical_name": "IsPathConnected.exists_path_through_family",
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
  "slug": "ispathconnected-exists-path-through-family--8371f53213af4afac3ca76c4",
  "source": {
    "blob": "8d20859b5051b57d95ba054c45e88a74298f78da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 545,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8371f53213af4afac3ca76c42363ebff42470f6420c84c30a6033298753c49e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5d576f-0e3c-c5e2-7ca1-3cb805da7dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPathConnected.exists_path_through_family {n : ℕ}
    {s : Set X} (h : IsPathConnected s) (p : Fin (n + 1) → X) (hp : ∀ i, p i ∈ s) :
    ∃ γ : Path (p 0) (p (last n)), range γ ⊆ s ∧ ∀ i, p i ∈ range γ := by
  cases p using snocCases with | _ p x => ?_
  simp only [forall_fin_succ', snoc_castSucc, snoc_last, Path.cast_coe,
    Path.target_mem_range, and_true] at hp ⊢
  obtain ⟨hp, hx⟩ := hp
  induction p using snocInduction generalizing x with
  | elim0 =>
    simp only [snoc_zero]
    use Path.refl x
    simp [hx]
  | @snoc n p y hp₂ =>
    simp only [forall_fin_succ', snoc_castSucc, snoc_last, snoc_apply_zero, Path.cast_coe] at hp ⊢
    obtain ⟨hp, hy⟩ := hp
    specialize hp₂ y hp hy
    obtain ⟨γ₀, hγ₀s, hγ₀p⟩ := hp₂
    obtain ⟨γ₁, hγ₁⟩ := h.joinedIn y hy x hx
    rw [← range_subset_iff] at hγ₁
    use γ₀.trans γ₁
    simp only [Path.trans_range, mem_union, Path.source_mem_range, or_true, and_true,
      union_subset_iff]
    tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d20859b5051b57d95ba054c45e88a74298f78da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
