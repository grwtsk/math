# map_surjective_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40d5fbcf2fa6aed2482a06bd78656b7245562994",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c7a8104-1b3b-c087-140c-e19ae2648d99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcce6996-eeb0-f9ff-25a1-28fc76e198ae",
  "kind": "theorem",
  "lexical_name": "map_surjective_of_surjective",
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
  "slug": "map-surjective-of-surjective--3fa6bde681965e20d23fe4dd",
  "source": {
    "blob": "40d5fbcf2fa6aed2482a06bd78656b7245562994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 283,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fa6bde681965e20d23fe4ddf89c36075e62686f223b207c16c9da153f7a458f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcce6996-eeb0-f9ff-25a1-28fc76e198ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_surjective_of_surjective (M : Subgroup H) [M.Normal] (f : G →* H)
    (hf : Function.Surjective (mk ∘ f : G → H ⧸ M)) (h : N ≤ M.comap f) :
    Function.Surjective (map N M f h) :=
  lift_surjective_of_surjective _ _ hf _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d5fbcf2fa6aed2482a06bd78656b7245562994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
