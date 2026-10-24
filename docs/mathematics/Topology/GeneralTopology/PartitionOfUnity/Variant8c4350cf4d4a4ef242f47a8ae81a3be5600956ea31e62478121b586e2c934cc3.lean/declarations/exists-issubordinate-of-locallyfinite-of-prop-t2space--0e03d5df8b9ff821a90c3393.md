# exists_isSubordinate_of_locallyFinite_of_prop_t2space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6176447c20a96de754c80bb6fa5b6e87cf521b06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f85c182d-e291-355a-509e-c8ab3b0cd739",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88801cd5-f106-c2ba-b825-b1d2fb462a8a",
  "kind": "theorem",
  "lexical_name": "exists_isSubordinate_of_locallyFinite_of_prop_t2space",
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
  "slug": "exists-issubordinate-of-locallyfinite-of-prop-t2space--0e03d5df8b9ff821a90c3393",
  "source": {
    "blob": "6176447c20a96de754c80bb6fa5b6e87cf521b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 441,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e03d5df8b9ff821a90c33938b82e67498574f9867e25cb60f433afc0f46ce96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88801cd5-f106-c2ba-b825-b1d2fb462a8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isSubordinate_of_locallyFinite_of_prop_t2space [LocallyCompactSpace X] [T2Space X]
    (p : (X → ℝ) → Prop) (h01 : ∀ s t, IsClosed s → IsCompact t → Disjoint s t → ∃ f : C(X, ℝ),
    p f ∧ EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1)
    (hs : IsCompact s) (U : ι → Set X) (ho : ∀ i, IsOpen (U i)) (hf : LocallyFinite U)
    (hU : s ⊆ ⋃ i, U i) :
    ∃ f : BumpCovering ι X s, (∀ i, p (f i)) ∧ f.IsSubordinate U ∧
      ∀ i, HasCompactSupport (f i) := by
  rcases exists_subset_iUnion_closure_subset_t2space hs ho (fun x _ => hf.point_finite x) hU with
    ⟨V, hsV, hVo, hVU, hcp⟩
  have hVU' i : V i ⊆ U i := subset_closure.trans (hVU i)
  rcases exists_subset_iUnion_closure_subset_t2space hs hVo
    (fun x _ => (hf.subset hVU').point_finite x) hsV with ⟨W, hsW, hWo, hWV, hWc⟩
  choose f hfp hf0 hf1 hf01 using fun i =>
    h01 _ _ (isClosed_compl_iff.2 <| hVo i) (hWc i)
      (disjoint_right.2 fun x hx => Classical.not_not.2 (hWV i hx))
  have hsupp i : support (f i) ⊆ V i := support_subset_iff'.2 (hf0 i)
  refine ⟨⟨f, hf.subset fun i => Subset.trans (hsupp i) (hVU' i), fun i x => (hf01 i x).1,
      fun i x => (hf01 i x).2, fun x hx => ?_⟩,
    hfp, fun i => Subset.trans (closure_mono (hsupp i)) (hVU i),
    fun i => IsCompact.of_isClosed_subset (hcp i) isClosed_closure <| closure_mono (hsupp i)⟩
  rcases mem_iUnion.1 (hsW hx) with ⟨i, hi⟩
  exact ⟨i, ((hf1 i).mono subset_closure).eventuallyEq_of_mem ((hWo i).mem_nhds hi)⟩

/-- If `X` is a normal topological space and `U i`, `i : ι`, is a locally finite open covering of a
closed set `s`, then there exists a `BumpCovering ι X s` that is subordinate to `U`. If `X` is a
paracompact space, then the assumption `hf : LocallyFinite U` can be omitted, see
`BumpCovering.exists_isSubordinate`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6176447c20a96de754c80bb6fa5b6e87cf521b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
