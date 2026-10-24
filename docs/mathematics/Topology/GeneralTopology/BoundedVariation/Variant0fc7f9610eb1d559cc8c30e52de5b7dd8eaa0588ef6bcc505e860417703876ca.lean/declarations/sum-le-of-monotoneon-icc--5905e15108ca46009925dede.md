# sum_le_of_monotoneOn_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e623a3f6-f9a2-7a33-0d98-6ae57d83b1fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33a91843-af71-b350-b8b5-14a8ee32d493",
  "kind": "theorem",
  "lexical_name": "sum_le_of_monotoneOn_Icc",
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
  "slug": "sum-le-of-monotoneon-icc--5905e15108ca46009925dede",
  "source": {
    "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5905e15108ca46009925dede8f9db314775cbe376273e24e9c7c462a7d1ecdf2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33a91843-af71-b350-b8b5-14a8ee32d493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_le_of_monotoneOn_Icc {f : α → E} {s : Set α} {m n : ℕ} {u : ℕ → α}
    (hu : MonotoneOn u (Icc m n)) (us : ∀ i ∈ Icc m n, u i ∈ s) :
    (∑ i ∈ Finset.Ico m n, edist (f (u (i + 1))) (f (u i))) ≤ eVariationOn f s := by
  rcases le_total n m with hnm | hmn
  · simp [Finset.Ico_eq_empty_of_le hnm]
  let π := projIcc m n hmn
  let v i := u (π i)
  calc
    ∑ i ∈ Finset.Ico m n, edist (f (u (i + 1))) (f (u i))
        = ∑ i ∈ Finset.Ico m n, edist (f (v (i + 1))) (f (v i)) :=
      Finset.sum_congr rfl fun i hi ↦ by
        rw [Finset.mem_Ico] at hi
        simp only [v, π, projIcc_of_mem hmn ⟨hi.1, hi.2.le⟩,
          projIcc_of_mem hmn ⟨hi.1.trans i.le_succ, hi.2⟩]
    _ ≤ ∑ i ∈ Finset.range n, edist (f (v (i + 1))) (f (v i)) :=
      Finset.sum_mono_set _ (Nat.Iio_eq_range n ▸ Finset.Ico_subset_Iio_self)
    _ ≤ eVariationOn f s :=
      sum_le (fun i j h ↦ hu (π i).2 (π j).2 (monotone_projIcc hmn h)) fun i ↦ us _ (π i).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
