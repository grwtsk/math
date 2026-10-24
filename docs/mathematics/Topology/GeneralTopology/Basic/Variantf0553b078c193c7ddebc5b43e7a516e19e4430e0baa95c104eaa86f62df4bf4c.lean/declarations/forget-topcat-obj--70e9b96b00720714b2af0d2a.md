# forget₂_TopCat_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab431d86c48f7fe7a53b6a53304981ab7a2dbb51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0edcc7e5-611f-3c11-f083-a7fdb24fa572",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db1b3bea-9ce6-04a3-719d-92b6577c0ecc",
  "kind": "lemma",
  "lexical_name": "forget₂_TopCat_obj",
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
  "slug": "forget-topcat-obj--70e9b96b00720714b2af0d2a",
  "source": {
    "blob": "ab431d86c48f7fe7a53b6a53304981ab7a2dbb51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e9b96b00720714b2af0d2ac45d9a1dd89a95448b1935fb926496284d640f91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db1b3bea-9ce6-04a3-719d-92b6577c0ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma forget₂_TopCat_obj {X : TopModuleCat R} : ((forget₂ _ TopCat).obj X : Type _) = X := rfl

open Limits

section Colimit

variable {R}

variable {M : ModuleCat R} {I : Type*} {X : I → TopModuleCat R} (f : ∀ i, (X i).toModuleCat ⟶ M)

/-- The coinduced topology on `M` from a family of continuous linear map into `M`, which is the
finest topology that makes it into a topological module and makes every map continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab431d86c48f7fe7a53b6a53304981ab7a2dbb51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
