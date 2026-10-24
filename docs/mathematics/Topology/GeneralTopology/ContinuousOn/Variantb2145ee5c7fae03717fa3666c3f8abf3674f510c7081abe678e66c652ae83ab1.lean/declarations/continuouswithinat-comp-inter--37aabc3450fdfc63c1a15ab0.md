# ContinuousWithinAt.comp_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "873802fa283da8722f1cb0d4ac5e2e73cda916f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65c6ce10-7b8a-dd22-5e01-a01f54fbbdd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9d6fab7-aa56-52d9-01e8-bd2f04eeb45f",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.comp_inter",
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
  "slug": "continuouswithinat-comp-inter--37aabc3450fdfc63c1a15ab0",
  "source": {
    "blob": "873802fa283da8722f1cb0d4ac5e2e73cda916f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 464,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37aabc3450fdfc63c1a15ab06ad5046bdae6e887829ba001d53002127fc7e2a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9d6fab7-aa56-52d9-01e8-bd2f04eeb45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousWithinAt.comp_inter {g : β → γ} {t : Set β}
    (hg : ContinuousWithinAt g t (f x)) (hf : ContinuousWithinAt f s x) :
    ContinuousWithinAt (g ∘ f) (s ∩ f ⁻¹' t) x :=
  hg.comp (hf.mono inter_subset_left) inter_subset_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `873802fa283da8722f1cb0d4ac5e2e73cda916f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
