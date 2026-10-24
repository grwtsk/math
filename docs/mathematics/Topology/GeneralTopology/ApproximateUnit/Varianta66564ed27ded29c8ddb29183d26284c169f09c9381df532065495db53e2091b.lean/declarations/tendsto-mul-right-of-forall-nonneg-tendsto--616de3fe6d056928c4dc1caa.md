# tendsto_mul_right_of_forall_nonneg_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d874507c98db41ac7cc14f01676e2d6a52fdee7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6f0e8d4-4c89-56d1-abd5-c5dcf77f6a22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c551da74-94ed-709b-ef4e-2ce380a8f25a",
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
  "slug": "tendsto-mul-right-of-forall-nonneg-tendsto--616de3fe6d056928c4dc1caa",
  "source": {
    "blob": "3d874507c98db41ac7cc14f01676e2d6a52fdee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:616de3fe6d056928c4dc1caa790b32839817ba3898657547c52be16a9aa3fcef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c551da74-94ed-709b-ef4e-2ce380a8f25a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_mul_right_of_forall_nonneg_tendsto {l : Filter A}
    (h : ∀ m, 0 ≤ m → ‖m‖ < 1 → Tendsto (· * m) l (𝓝 m)) (m : A) :
    Tendsto (· * m) l (𝓝 m) := by
  obtain ⟨n, c, x, rfl⟩ := mem_span_set'.mp <| by
    show m ∈ span ℂ ({x | 0 ≤ x} ∩ ball 0 1)
    simp [span_nonneg_inter_unitBall]
  simp_rw [Finset.mul_sum]
  refine tendsto_finset_sum _ fun i _ ↦ ?_
  simp_rw [mul_smul_comm]
  exact tendsto_const_nhds.smul <| h (x i) (x i).2.1 <| by simpa using (x i).2.2

omit [PartialOrder A] in
/-- Multiplication on the left by `m` tends to `𝓝 m` if and only if multiplication on the right
does, provided the elements are eventually selfadjoint along the filter `l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d874507c98db41ac7cc14f01676e2d6a52fdee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
