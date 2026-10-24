# invtRootSubmodule.eq_span_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cd88e9238d2317a31f492366afea9f7bda61786",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bca2379f-db28-b067-3825-eff2053a16e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c7c1456-bf7d-de5c-d0c8-151476b4275e",
  "kind": "lemma",
  "lexical_name": "invtRootSubmodule.eq_span_root",
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
  "slug": "invtrootsubmodule-eq-span-root--7196678b7d599d7d71bbc9a3",
  "source": {
    "blob": "1cd88e9238d2317a31f492366afea9f7bda61786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7196678b7d599d7d71bbc9a33d98a60f283fc207f22bc65e5dfa7d08a1a0941a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c7c1456-bf7d-de5c-d0c8-151476b4275e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma invtRootSubmodule.eq_span_root {K : Type*} [Field K] [NeZero (2 : K)]
    [Module K M] [Module K N] {P : RootPairing ι K M N} [P.IsRootSystem]
    (q : P.invtRootSubmodule) :
    (q : Submodule K M) = span K (P.root '' {i | P.root i ∈ (q : Submodule K M)}) := by
  set Q := (q : Submodule K M)
  have hSQ : span K (P.root '' {i | P.root i ∈ Q}) ≤ Q :=
    span_le.mpr (Set.image_subset_iff.mpr fun _ h => h)
  refine le_antisymm ?_ hSQ
  set S := span K (P.root '' {i | P.root i ∈ Q})
  set T := span K (P.root '' {i | P.root i ∉ Q})
  have h_sup : S ⊔ T = ⊤ := by
    rw [← Submodule.span_union, ← Set.image_union]
    have : {i | P.root i ∈ Q} ∪ {i | P.root i ∉ Q} = Set.univ := by ext; simp [em]
    rw [this, Set.image_univ]
    simp
  intro v hv
  obtain ⟨s, hs, t, ht, rfl⟩ := Submodule.mem_sup.mp (h_sup ▸ Submodule.mem_top (x := v))
  suffices t = 0 by rw [this, add_zero]; exact hs
  have htQ : t ∈ Q := by simpa using Q.sub_mem hv (hSQ hs)
  have h_ker : ∀ k, P.coroot' k t = 0 := by
    intro k
    by_cases hk : P.root k ∈ Q
    · refine LinearMap.mem_ker.mp (span_le.mpr ?_ ht)
      rintro _ ⟨j, hj, rfl⟩
      rw [SetLike.mem_coe, LinearMap.mem_ker, P.root_coroot'_eq_pairing, P.pairing_eq_zero_iff',
        ← P.root_coroot'_eq_pairing]
      exact LinearMap.mem_ker.mp (invtRootSubmodule.le_ker_coroot' q hj hk)
    · exact LinearMap.mem_ker.mp (invtRootSubmodule.le_ker_coroot' q hk htQ)
  exact P.eq_zero_iff_forall_coroot'_eq_zero.mpr h_ker

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Variantb87607ba6d217682d037db78c4482bce852ad5bbe249e207babfdb99f7163e9e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cd88e9238d2317a31f492366afea9f7bda61786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
