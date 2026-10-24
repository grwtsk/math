# sum_le_of_monotoneOn_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2410dfa2-4395-2f96-c38a-d1df3e71ca69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07b29af7-7338-54bc-c36d-5d57c1dec319",
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
  "slug": "sum-le-of-monotoneon-icc--50275923eb4b3623482d0af3",
  "source": {
    "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50275923eb4b3623482d0af39ac287a2d79b70e42813402296a8b31f81c99104",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07b29af7-7338-54bc-c36d-5d57c1dec319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_le_of_monotoneOn_Icc (f : α → E) {s : Set α} {m n : ℕ} {u : ℕ → α}
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
      Finset.sum_mono_set _ (Nat.Iio_eq_range ▸ Finset.Ico_subset_Iio_self)
    _ ≤ eVariationOn f s :=
      sum_le _ _ (fun i j h ↦ hu (π i).2 (π j).2 (monotone_projIcc hmn h)) fun i ↦ us _ (π i).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d28797699551140f9f7b377513cb20df5c6f1bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
