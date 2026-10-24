# image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401335acc20513c7b7978d5906ce04219756037c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7c6e01b-ebb8-a14a-e87e-3fb30ffd094d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a89b921-1582-0112-52d4-183cca674c89",
  "kind": "theorem",
  "lexical_name": "image",
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
  "slug": "image--a3f48ddf7b501a916ba92eb6",
  "source": {
    "blob": "401335acc20513c7b7978d5906ce04219756037c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 80,
    "path": "GRWTSK/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3f48ddf7b501a916ba92eb605cb2e1375dac389332b7a5ce933600abe5437a5",
  "verification": {
    "reference": "docs/verification/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a89b921-1582-0112-52d4-183cca674c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image {s : Set E} (h : AmpleSet s) (L : E ≃ᴬ[ℝ] F) :
    AmpleSet (L '' s) := forall_mem_image.mpr fun x hx ↦
  calc (convexHull ℝ) (connectedComponentIn (L '' s) (L x))
    _ = (convexHull ℝ) (L '' (connectedComponentIn s x)) :=
          .symm <| congrArg _ <| L.toHomeomorph.image_connectedComponentIn hx
    _ = L '' (convexHull ℝ (connectedComponentIn s x)) :=
          .symm <| L.toAffineMap.image_convexHull _
    _ = univ := by rw [h x hx, image_univ, L.surjective.range_eq]

/-- A set is ample iff its image under a continuous affine equivalence is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401335acc20513c7b7978d5906ce04219756037c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
