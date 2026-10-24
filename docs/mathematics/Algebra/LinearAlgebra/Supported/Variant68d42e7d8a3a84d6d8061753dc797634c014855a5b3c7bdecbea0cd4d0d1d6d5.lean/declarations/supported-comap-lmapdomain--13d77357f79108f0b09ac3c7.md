# supported_comap_lmapDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0ea0fa9818c060c8c9b6d401d846896a6c0fe4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2aff42f-23e5-c119-3e04-f9a9a7313c03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a16fdf4-ce7d-0579-9013-4cf5596e4989",
  "kind": "theorem",
  "lexical_name": "supported_comap_lmapDomain",
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
  "slug": "supported-comap-lmapdomain--13d77357f79108f0b09ac3c7",
  "source": {
    "blob": "c0ea0fa9818c060c8c9b6d401d846896a6c0fe4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d77357f79108f0b09ac3c7add6a8574bc4691d8a51fed2cc98befdc03cd9ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a16fdf4-ce7d-0579-9013-4cf5596e4989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_comap_lmapDomain (f : α → α') (s : Set α') :
    supported M R (f ⁻¹' s) ≤ (supported M R s).comap (lmapDomain M R f) := by
  classical
  intro l (hl : (l.support : Set α) ⊆ f ⁻¹' s)
  show ↑(mapDomain f l).support ⊆ s
  rw [← Set.image_subset_iff, ← Finset.coe_image] at hl
  exact Set.Subset.trans mapDomain_support hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0ea0fa9818c060c8c9b6d401d846896a6c0fe4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
