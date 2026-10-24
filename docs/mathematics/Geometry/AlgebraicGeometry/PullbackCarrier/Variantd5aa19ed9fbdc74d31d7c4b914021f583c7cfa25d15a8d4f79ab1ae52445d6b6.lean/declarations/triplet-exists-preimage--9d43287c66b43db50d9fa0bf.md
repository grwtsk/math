# Triplet.exists_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5fd49d784d6617cd0f916ec886ef77fff4919f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75e577c0-e067-8673-0773-4ebffd7efedb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0316bc0-356e-333d-4b49-92e52acd524b",
  "kind": "lemma",
  "lexical_name": "Triplet.exists_preimage",
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
  "slug": "triplet-exists-preimage--9d43287c66b43db50d9fa0bf",
  "source": {
    "blob": "e5fd49d784d6617cd0f916ec886ef77fff4919f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 281,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d43287c66b43db50d9fa0bfe6cac90dad895758feb4db07f58563def9fa27a5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0316bc0-356e-333d-4b49-92e52acd524b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Triplet.exists_preimage (T : Triplet f g) :
    ∃ t : ↑(pullback f g),
    (pullback.fst f g).base t = T.x ∧ (pullback.snd f g).base t = T.y :=
  ⟨carrierEquiv.symm ⟨T, Nonempty.some inferInstance⟩, by simp⟩

/--
If `f : X ⟶ S` and `g : Y ⟶ S` are morphisms of schemes and `x : X` and `y : Y` are points such
that `f x = g y`, then there exists `z : X ×[S] Y` lying above `x` and `y`.

In other words, the map from the underlying topological space of `X ×[S] Y` to the fiber product
of the underlying topological spaces of `X` and `Y` over `S` is surjective.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5fd49d784d6617cd0f916ec886ef77fff4919f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
