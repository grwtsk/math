# mem_upperBounds_image2_of_mem_lowerBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c24f3bff73e4acdba8edbe356cd509bed4c03ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3d9277c-818a-7004-2b82-47a93886e7f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5666030-61c1-59f4-a8f4-f2d27a544969",
  "kind": "theorem",
  "lexical_name": "mem_upperBounds_image2_of_mem_lowerBounds",
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
  "slug": "mem-upperbounds-image2-of-mem-lowerbounds--f54e12a0ac91bc87d8b795d4",
  "source": {
    "blob": "c24f3bff73e4acdba8edbe356cd509bed4c03ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1469,
    "line": 1465,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f54e12a0ac91bc87d8b795d420e2f283167cb9ee9ea47d3d2f5a2e00cd10a8d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5666030-61c1-59f4-a8f4-f2d27a544969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1465–1469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_upperBounds_image2_of_mem_lowerBounds (ha : a ∈ lowerBounds s)
    (hb : b ∈ lowerBounds t) : f a b ∈ upperBounds (image2 f s t) :=
  forall_image2_iff.2 fun _ hx _ hy => (h₀ _ <| ha hx).trans <| h₁ _ <| hb hy
#align mem_upper_bounds_image2_of_mem_lower_bounds mem_upperBounds_image2_of_mem_lowerBounds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean#L1465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24f3bff73e4acdba8edbe356cd509bed4c03ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
