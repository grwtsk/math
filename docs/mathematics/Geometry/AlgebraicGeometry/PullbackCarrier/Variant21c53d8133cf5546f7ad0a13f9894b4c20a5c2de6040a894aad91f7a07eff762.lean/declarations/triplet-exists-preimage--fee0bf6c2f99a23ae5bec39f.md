# Triplet.exists_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23a554fa-fe65-d1ad-d234-988611cafa14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:263850bd-14e9-5bbe-9b96-5d3b020c3876",
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
  "slug": "triplet-exists-preimage--fee0bf6c2f99a23ae5bec39f",
  "source": {
    "blob": "3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 293,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fee0bf6c2f99a23ae5bec39f940ac67cf048f6226bf83b3e4c9a2468e2b16f7e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:263850bd-14e9-5bbe-9b96-5d3b020c3876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Triplet.exists_preimage (T : Triplet f g) :
    ∃ t : ↑(pullback f g), pullback.fst f g t = T.x ∧ pullback.snd f g t = T.y :=
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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
