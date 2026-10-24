# exists_affineCombination_eq_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c91fb216f35797286e7fc3ae0ad8d9b1106588aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8930ad86-df55-2ef7-8a49-1c342c28cf4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6936d4f1-eb2e-c052-8e2f-fae1e42d6ca5",
  "kind": "lemma",
  "lexical_name": "exists_affineCombination_eq_smul_eq",
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
  "slug": "exists-affinecombination-eq-smul-eq--356ab8e58f69487e9c5dc8ea",
  "source": {
    "blob": "c91fb216f35797286e7fc3ae0ad8d9b1106588aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:356ab8e58f69487e9c5dc8ea6e7eadb8788a10582f17bcdfd767abe89fbe6051",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6936d4f1-eb2e-c052-8e2f-fae1e42d6ca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_affineCombination_eq_smul_eq {p : ι → P} (hp : AffineIndependent k p) {s : Set ι}
    (hs : s.Nonempty) {fs : s → Finset ι} {w : s → ι → k} (hw : ∀ i, ∑ j ∈ fs i, w i j = 1) {p' : P}
    (hp' : ∀ i : s, p' ∈ line[k, p i, (fs i).affineCombination k p (w i)]) :
    ∃ (w' : ι → k) (fs' : Finset ι), (∑ j ∈ fs', w' j = 1) ∧ fs'.affineCombination k p w' = p' ∧
      ∀ i : s, ∃ r, ∀ j, r * Set.indicator ((fs i : Set ι) \ {(i : ι)}) (w i) j =
        Set.indicator ((fs' : Set ι) \ {(i : ι)}) w' j := by
  classical
  let fsx : s → Finset ι := fun i ↦ insert (i : ι) (fs i)
  have hfsx : ∀ i, (i : ι) ∈ fsx i := by simp [fsx]
  let wx : s → ι → k := fun i ↦ Set.indicator (fs i) (w i)
  have hwx : ∀ i, ∑ j ∈ fsx i, wx i j = 1 := by
    intro i
    simp_rw [← hw i, fsx, wx]
    by_cases hi : (i : ι) ∈ fs i <;> simpa [hi] using Finset.sum_congr rfl (by aesop)
  have hp'x : ∀ i : s, p' ∈ line[k, p i, (fsx i).affineCombination k p (wx i)] := by
    intro i
    convert! hp' i using 4
    simp_rw [fsx, wx]
    exact (Finset.affineCombination_indicator_subset _ _ (by simp)).symm
  obtain ⟨w', fs', h⟩ := hp.exists_affineCombination_eq_smul_eq_aux hs hfsx hwx hp'x
  refine ⟨w', fs', h.1, h.2.1, fun i ↦ ?_⟩
  obtain ⟨r, hr⟩ := h.2.2 i
  refine ⟨r, fun j ↦ ?_⟩
  convert! hr j using 2
  simp only [Set.indicator_apply, Set.mem_sdiff, SetLike.mem_coe, Set.mem_singleton_iff,
    Finset.coe_insert, Set.insert_sdiff_of_mem, fsx, wx]
  grind

/-- A version of **Ceva's theorem** for a finite indexed affinely independent family of points:
consider some lines, each through one of the points and an affine combination of the points, and
suppose they concur at `p'`; then `p'` is an affine combination of the points with weights
proportional to those in the respective affine combinations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c91fb216f35797286e7fc3ae0ad8d9b1106588aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
