# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fa8203f18d20a8ba4f815e6012c5f7f4a0a7523cff9ccbe4c3c8362636053d8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--97c1db1b06dc41cd9024a094",
  "source": {
    "blob": "5f4cdc13a20ff46bf5d1b40f165842b5c73b398d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97c1db1b06dc41cd9024a094457f000178c1f055853e590abdb58dcf3c993d44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fa8203f18d20a8ba4f815e6012c5f7f4a0a7523cff9ccbe4c3c8362636053d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 50) [SequentialSpace E] [CountablyCompactSpace E] :
    SeqCompactSpace E := by
  -- We prove by contradiction. If `E` is not sequentially compact, then there exists a sequence
  -- `x : ℕ → E` with no convergent subsequence.
  by_contra
  simp only [seqCompactSpace_iff, IsSeqCompact, mem_univ, not_forall,
    true_and, not_exists, not_and, exists_const] at this
  obtain ⟨x, hx⟩ := this
  -- Consider the set `A = ⋃ i, closure {x i}`. It is closed by `isClosed_of_not_tendsto` and thus
  -- countably compact.
  let A := ⋃ i, closure {x i}
  have : IsCountablyCompact A :=
    (isClosed_iUnion_closure_singleton_of_not_tendsto hx).isCountablyCompact
  -- We use the countably compactness of `A` to find a cluster point `a`. Eventually `a` does not
  -- belong to the closure of `{x n}` as `x` has no convergent subsequence, and this contradicts `a`
  -- being a cluster point.
  obtain ⟨a, ha⟩ : ∃ a ∈ A, MapClusterPt a atTop x := by
    refine isCountablyCompact_iff_seq_clusterPt.1 this _ (.of_forall fun n => ?_)
    exact mem_iUnion_of_mem n <| subset_closure <| mem_singleton (x n)
  obtain ⟨k, hk⟩ : ∃ k, ∀ n > k, a ∉ closure {x n} := by
    by_contra!
    obtain ⟨φ, hφ1, hφ2⟩ := Nat.exists_strictMono_subsequence this
    refine hx a φ hφ1 (tendsto_atTop_nhds.2 fun U ha hUo => ⟨0, fun n _ => ?_⟩)
    simpa using mem_closure_iff.1 (hφ2 n) U hUo ha
  have : a ∉ ⋃ i, closure {x (i + (k + 1))} := by
    simpa [← iUnion_ge_eq_iUnion_nat_add (fun n => closure {x n}) (k + 1)] using!
      fun i hi => hk i (Nat.lt_of_lt_of_eq hi rfl)
  apply this
  suffices h : closure (x '' Ici (k + 1)) ⊆ ⋃ i, closure {x (i + (k + 1))} from
    h <| mapClusterPt_atTop_iff_forall_mem_closure.1 ha.2 (k + 1)
  refine (IsClosed.closure_subset_iff
    (isClosed_iUnion_closure_singleton_of_not_tendsto fun l φ hφ => ?_)).2 ?_
  · exact hx l _ ((strictMono_id.add_const _).comp hφ)
  · simp only [image_eq_iUnion, mem_Ici, iUnion_ge_eq_iUnion_nat_add _ (k + 1)]
    exact iUnion_mono fun i => subset_closure

/-- If `f : X → Y` is an inducing map, the image `f '' s` of a set `s` is sequentially compact
  if and only if `s` is sequentially compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4cdc13a20ff46bf5d1b40f165842b5c73b398d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
