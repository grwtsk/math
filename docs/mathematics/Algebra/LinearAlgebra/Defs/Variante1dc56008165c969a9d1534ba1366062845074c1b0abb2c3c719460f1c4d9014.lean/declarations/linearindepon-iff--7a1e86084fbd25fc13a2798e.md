# linearIndepOn_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65c0f70672df92efe72305f67e696fb08b3d81a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 760,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7c1860b-9aa7-a4b2-4a45-2a11d9ca2136",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78ed3f74-8699-b397-d710-1cf0f913b78f",
  "kind": "lemma",
  "lexical_name": "linearIndepOn_iff'",
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
  "slug": "linearindepon-iff--7a1e86084fbd25fc13a2798e",
  "source": {
    "blob": "65c0f70672df92efe72305f67e696fb08b3d81a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 760,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a1e86084fbd25fc13a2798e670400d9e54de1374a117a21030908f0453a9771",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78ed3f74-8699-b397-d710-1cf0f913b78f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndepOn_iff' : LinearIndepOn R v s ↔ ∀ (t : Finset ι) (g : ι → R), (t : Set ι) ⊆ s →
    ∑ i ∈ t, g i • v i = 0 → ∀ i ∈ t, g i = 0 := by
  classical
  rw [LinearIndepOn, linearIndependent_iff']
  refine ⟨fun h t g hts h0 i hit ↦ ?_, fun h t g h0 i hit ↦ ?_⟩
  · refine h (t.preimage _ Subtype.val_injective.injOn) (fun i ↦ g i) ?_ ⟨i, hts hit⟩ (by simpa)
    rwa [t.sum_preimage ((↑) : s → ι) Subtype.val_injective.injOn (fun i ↦ g i • v i)]
    simp only [Subtype.range_coe_subtype, setOf_mem_eq, smul_eq_zero]
    exact fun x hxt hxs ↦ (hxs (hts hxt)) |>.elim
  replace h : ∀ i (hi : i ∈ s), ⟨i, hi⟩ ∈ t → ∀ (h : i ∈ s), g ⟨i, h⟩ = 0 := by
    simpa [h0] using h (t.image (↑)) (fun i ↦ if hi : i ∈ s then g ⟨i, hi⟩ else 0)
  apply h _ _ hit

/-- A version of `linearIndepOn_iff` where the linear combination is a `Finset` sum
of a function with support contained in the `Finset`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c0f70672df92efe72305f67e696fb08b3d81a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
