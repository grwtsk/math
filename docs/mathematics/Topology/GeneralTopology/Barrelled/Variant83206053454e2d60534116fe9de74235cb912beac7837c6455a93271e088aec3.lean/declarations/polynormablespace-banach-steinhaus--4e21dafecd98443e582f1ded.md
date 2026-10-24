# PolynormableSpace.banach_steinhaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18976c7bce32f7468baef765dfe98dc1d30a080e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b641a161-6ba5-86a6-3d54-45ecd2b19b0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48771e67-998b-f2b2-768f-30317fdf4bf6",
  "kind": "theorem",
  "lexical_name": "PolynormableSpace.banach_steinhaus",
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
  "slug": "polynormablespace-banach-steinhaus--4e21dafecd98443e582f1ded",
  "source": {
    "blob": "18976c7bce32f7468baef765dfe98dc1d30a080e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e21dafecd98443e582f1ded9509c239f0b718a0f0f0cb5f7b4354194851fc84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48771e67-998b-f2b2-768f-30317fdf4bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem PolynormableSpace.banach_steinhaus
    (H : ∀ x, IsVonNBounded 𝕜₂ (range fun i ↦ 𝓕 i x)) :
    UniformEquicontinuous ((↑) ∘ 𝓕) := by
  have hp := PolynormableSpace.withSeminorms 𝕜₂ F
  refine hp.banach_steinhaus ?_
  simp_rw [hp.isVonNBounded_iff_seminorm_bddAbove, ← range_comp] at H
  exact fun q x ↦ H x q

variable [ContinuousSMul 𝕜₂ F]

/-- Given a sequence of continuous linear maps which converges pointwise and for which the
domain is barrelled, the Banach-Steinhaus theorem is used to guarantee that the limit map
is a *continuous* linear map as well.

This actually works for any *countably generated* filter instead of `atTop : Filter ℕ`,
but the proof ultimately goes back to sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18976c7bce32f7468baef765dfe98dc1d30a080e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
