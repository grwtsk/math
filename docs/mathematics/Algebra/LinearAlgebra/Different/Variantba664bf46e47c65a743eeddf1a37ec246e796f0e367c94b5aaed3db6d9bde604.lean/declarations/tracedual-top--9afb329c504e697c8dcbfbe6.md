# traceDual_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e112b0f-eb5c-81d9-a6d5-29bd3398bc5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8a607fe-ef63-3502-c2dc-bda2a2733891",
  "kind": "lemma",
  "lexical_name": "traceDual_top'",
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
  "slug": "tracedual-top--9afb329c504e697c8dcbfbe6",
  "source": {
    "blob": "3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9afb329c504e697c8dcbfbe692cce4cbe502fad8326af70af1c67b29daa9a090",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8a607fe-ef63-3502-c2dc-bda2a2733891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceDual_top' :
    (⊤ : Submodule B L)ᵛ =
      if ((LinearMap.range (Algebra.trace K L)).restrictScalars A ≤ 1) then ⊤ else ⊥ := by
  classical
  split_ifs with h
  · rw [_root_.eq_top_iff]
    exact fun _ _ _ _ ↦ h ⟨_, rfl⟩
  · simp only [SetLike.le_def, restrictScalars_mem, LinearMap.mem_range, mem_one,
      forall_exists_index, forall_apply_eq_imp_iff, not_forall, not_exists] at h
    obtain ⟨b, hb⟩ := h
    simp_rw [eq_bot_iff, SetLike.le_def, mem_bot, mem_traceDual, mem_top, true_implies,
      traceForm_apply, RingHom.mem_range]
    contrapose! hb with hx'
    obtain ⟨c, hc, hc0⟩ := hx'
    simpa [hc0] using hc (c⁻¹ * b)

variable [IsDomain A] [IsFractionRing A K] [FiniteDimensional K L] [Algebra.IsSeparable K L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
