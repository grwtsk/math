# uniformSpace_eq_of_hasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b01d3ed48beab7bf04f75e1ee7cf23030bbe059",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0356e570-dca0-5138-7170-c8766a1beaee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a17172d-7e54-c37f-c545-bd86abbb42d6",
  "kind": "lemma",
  "lexical_name": "uniformSpace_eq_of_hasBasis",
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
  "slug": "uniformspace-eq-of-hasbasis--de51be6af71a9b3d4ab575c3",
  "source": {
    "blob": "0b01d3ed48beab7bf04f75e1ee7cf23030bbe059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1173,
    "line": 1158,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de51be6af71a9b3d4ab575c3f46cc9f7544ef3f3152fe9d0a455246fdd992dce",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a17172d-7e54-c37f-c545-bd86abbb42d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1158–1173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniformSpace_eq_of_hasBasis
    {ι} [UniformSpace E] [IsUniformAddGroup E] [ContinuousConstSMul 𝕜 E]
    {p' : ι → Prop} {s : ι → Set E} (p : Seminorm 𝕜 E) (hb : (𝓝 0 : Filter E).HasBasis p' s)
    (h₁ : ∃ r, p.closedBall 0 r ∈ 𝓝 0) (h₂ : ∀ i, p' i → ∃ r > 0, p.ball 0 r ⊆ s i) :
    ‹UniformSpace E› = p.toAddGroupSeminorm.toSeminormedAddGroup.toUniformSpace := by
  refine IsUniformAddGroup.ext ‹_›
    p.toAddGroupSeminorm.toSeminormedAddCommGroup.to_isUniformAddGroup ?_
  apply le_antisymm
  · rw [← @comap_norm_nhds_zero E p.toAddGroupSeminorm.toSeminormedAddGroup, ← tendsto_iff_comap]
    suffices Continuous p from this.tendsto' 0 _ (map_zero p)
    rcases h₁ with ⟨r, hr⟩
    exact p.continuous' hr
  · rw [(@NormedAddCommGroup.nhds_zero_basis_norm_lt E
      p.toAddGroupSeminorm.toSeminormedAddGroup).le_basis_iff hb]
    simpa only [subset_def, mem_ball_zero] using h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean#L1158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b01d3ed48beab7bf04f75e1ee7cf23030bbe059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
