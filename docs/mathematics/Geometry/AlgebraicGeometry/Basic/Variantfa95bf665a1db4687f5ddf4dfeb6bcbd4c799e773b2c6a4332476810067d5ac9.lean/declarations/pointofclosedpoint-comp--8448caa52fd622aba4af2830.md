# pointOfClosedPoint_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04c97fa16bb2ee2a6150c72577e486ff0dd2d668",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa95bf665a1db4687f5ddf4dfeb6bcbd4c799e773b2c6a4332476810067d5ac9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d33e667b-3a82-1bc8-f6de-8b0898e3f905",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75b00b3c-6d19-788a-2bc4-4f525eb6a4cf",
  "kind": "lemma",
  "lexical_name": "pointOfClosedPoint_comp",
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
  "slug": "pointofclosedpoint-comp--8448caa52fd622aba4af2830",
  "source": {
    "blob": "04c97fa16bb2ee2a6150c72577e486ff0dd2d668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 56,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantfa95bf665a1db4687f5ddf4dfeb6bcbd4c799e773b2c6a4332476810067d5ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8448caa52fd622aba4af2830c4ea9c150f16994afc73b0a793967ba7d83be4be",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantfa95bf665a1db4687f5ddf4dfeb6bcbd4c799e773b2c6a4332476810067d5ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75b00b3c-6d19-788a-2bc4-4f525eb6a4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pointOfClosedPoint_comp : pointOfClosedPoint f x hx ≫ f = 𝟙 _ := by
  simp [pointOfClosedPoint, ← SpecMap_residueFieldIsoBase_inv, ← Spec.map_comp]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantfa95bf665a1db4687f5ddf4dfeb6bcbd4c799e773b2c6a4332476810067d5ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantfa95bf665a1db4687f5ddf4dfeb6bcbd4c799e773b2c6a4332476810067d5ac9.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c97fa16bb2ee2a6150c72577e486ff0dd2d668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
