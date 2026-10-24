# ι_sndSigmaMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51b865a3857eb101b9f2e061725c09d39ac4d45f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3727120ae0a39d5f68c5e06a2f7ad5c9668cd9f5c071f3add7bb1d11890e5410.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b82b67e-f452-1046-2b9b-604f099501a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a69500d3-ac38-d663-e169-b955fc447dcd",
  "kind": "theorem",
  "lexical_name": "ι_sndSigmaMap",
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
  "slug": "sndsigmamap--16fb4de8486358fc87d2172f",
  "source": {
    "blob": "51b865a3857eb101b9f2e061725c09d39ac4d45f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 304,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3727120ae0a39d5f68c5e06a2f7ad5c9668cd9f5c071f3add7bb1d11890e5410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16fb4de8486358fc87d2172f7e6a93c9b0b88ac4ca9bc46dc43c6915d4607a56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3727120ae0a39d5f68c5e06a2f7ad5c9668cd9f5c071f3add7bb1d11890e5410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a69500d3-ac38-d663-e169-b955fc447dcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_sndSigmaMap (b) : Sigma.ι I.left b ≫ I.sndSigmaMap = I.snd b ≫ Sigma.ι I.right _ := by
  simp [sndSigmaMap]
#align category_theory.limits.multispan_index.ι_snd_sigma_map CategoryTheory.Limits.MultispanIndex.ι_sndSigmaMap

/--
Taking the multicoequalizer over the multispan index is equivalent to taking the coequalizer over
the two morphsims `∐ I.left ⇉ ∐ I.right`. This is the diagram of the latter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3727120ae0a39d5f68c5e06a2f7ad5c9668cd9f5c071f3add7bb1d11890e5410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3727120ae0a39d5f68c5e06a2f7ad5c9668cd9f5c071f3add7bb1d11890e5410.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b865a3857eb101b9f2e061725c09d39ac4d45f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
