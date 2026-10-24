# map_inf_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a77c46d9fd3c0a1f786a861aa9687a5198caf1d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 605,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d0c6518-c532-82df-c728-c1420ed70b94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56249da2-25f8-b0b1-cb2f-fd095d70750d",
  "kind": "lemma",
  "lexical_name": "map_inf_eq",
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
  "slug": "map-inf-eq--f0a6405b3ad3ea67bc12aa72",
  "source": {
    "blob": "a77c46d9fd3c0a1f786a861aa9687a5198caf1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 605,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a6405b3ad3ea67bc12aa72db45b00d364f71c76c7b4f479b97b867803b67d6",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56249da2-25f8-b0b1-cb2f-fd095d70750d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 605–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_inf_eq (hf : Function.Injective f) (s₁ s₂ : AffineSubspace k P₁) :
    (s₁ ⊓ s₂).map f = s₁.map f ⊓ s₂.map f := by
  ext p
  simp [mem_inf_iff]
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean#L605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a77c46d9fd3c0a1f786a861aa9687a5198caf1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
