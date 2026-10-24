# tendsto_mul_right_of_forall_nonneg_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9247cd48596becdf6465ea1c472dc8a7869ed8e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:911d1afa-ad7a-10b1-a7b9-c9ce1e03fd4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d12672eb-c31e-bf17-1e4f-02ce7ad5d6c6",
  "kind": "lemma",
  "lexical_name": "tendsto_mul_right_of_forall_nonneg_tendsto",
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
  "slug": "tendsto-mul-right-of-forall-nonneg-tendsto--d1fa6ae2b082876c32d7aa91",
  "source": {
    "blob": "9247cd48596becdf6465ea1c472dc8a7869ed8e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1fa6ae2b082876c32d7aa91a309d16ba0c7710cb116f4bf911eb8ab34b1484e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d12672eb-c31e-bf17-1e4f-02ce7ad5d6c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_mul_right_of_forall_nonneg_tendsto {l : Filter A}
    (h : ∀ m, 0 ≤ m → ‖m‖ < 1 → Tendsto (· * m) l (𝓝 m)) (m : A) :
    Tendsto (· * m) l (𝓝 m) := by
  have : m ∈ span ℂ ({x | 0 ≤ x} ∩ ball 0 1) := by simp [span_nonneg_inter_unitBall]
  obtain ⟨n, c, x, rfl⟩ := mem_span_set'.mp this
  simp_rw [Finset.mul_sum]
  refine tendsto_finsetSum _ fun i _ ↦ ?_
  simp_rw [mul_smul_comm]
  exact tendsto_const_nhds.smul <| h (x i) (x i).2.1 <| by simpa using (x i).2.2

omit [PartialOrder A] in
/-- Multiplication on the left by `m` tends to `𝓝 m` if and only if multiplication on the right
does, provided the elements are eventually selfadjoint along the filter `l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9247cd48596becdf6465ea1c472dc8a7869ed8e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
