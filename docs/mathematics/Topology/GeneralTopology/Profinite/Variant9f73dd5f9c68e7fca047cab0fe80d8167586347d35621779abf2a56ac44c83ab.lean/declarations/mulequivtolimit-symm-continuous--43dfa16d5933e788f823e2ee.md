# mulEquivToLimit_symm_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98372cc718b11d7a6fb37c36e84f8c25d91de54f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f73446ca-e25e-498e-efae-441661ebf313",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ebbd0ab-0fd2-e6db-caca-d4c49a11835b",
  "kind": "lemma",
  "lexical_name": "mulEquivToLimit_symm_continuous",
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
  "slug": "mulequivtolimit-symm-continuous--43dfa16d5933e788f823e2ee",
  "source": {
    "blob": "98372cc718b11d7a6fb37c36e84f8c25d91de54f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43dfa16d5933e788f823e2ee267e703ff6cfa23c4ccdf2fdc8162a847bf5f90a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ebbd0ab-0fd2-e6db-caca-d4c49a11835b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulEquivToLimit_symm_continuous [IsGalois k K] : Continuous (mulEquivToLimit k K).symm := by
  apply continuous_of_continuousAt_one _ (continuousAt_def.mpr _ )
  simp only [map_one, krullTopology_mem_nhds_one_iff_of_isGalois, ← MulEquiv.coe_toEquiv_symm,
    ← MulEquiv.toEquiv_eq_coe, ← (mulEquivToLimit k K).image_eq_preimage]
  intro H ⟨L, le⟩
  rw [mem_nhds_iff]
  use mulEquivToLimit k K '' L.1.fixingSubgroup
  simp only [isOpen_mulEquivToLimit_image_fixingSubgroup L]
  simpa [one_mem] using Set.image_subset_iff.mp (Set.image_mono le)

variable (k K)

/-- The `ContinuousMulEquiv` between `K ≃ₐ[k] K` and `lim Gal(L/k)` where `L` is a
  `FiniteGaloisIntermediateField` ordered by inverse inclusion, obtained
  from `InfiniteGalois.mulEquivToLimit` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98372cc718b11d7a6fb37c36e84f8c25d91de54f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
