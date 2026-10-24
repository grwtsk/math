# intro'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f48cf836ec24a68fecf934c50fbd911d75023df9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c32687bd-cc85-a576-53f5-37b9de01aec8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2f8817d-9fd8-7da9-d750-7a4f0b7f5e2a",
  "kind": "theorem",
  "lexical_name": "intro'",
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
  "slug": "intro--cebf6c1e57af68bfbac169eb",
  "source": {
    "blob": "f48cf836ec24a68fecf934c50fbd911d75023df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cebf6c1e57af68bfbac169ebdb6446a35a1ad32846106bcdd435fcbafae7f6d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f8817d-9fd8-7da9-d750-7a4f0b7f5e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intro' {K : Set α} (hK : IsCompact K) (h'K : IsClosed K)
    (hfK : ∀ x, x ∉ K → f x = 1) : HasCompactMulSupport f := by
  have : mulTSupport f ⊆ K := by
    rw [← h'K.closure_eq]
    apply closure_mono (mulSupport_subset_iff'.2 hfK)
  exact IsCompact.of_isClosed_subset hK ( isClosed_mulTSupport f) this

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48cf836ec24a68fecf934c50fbd911d75023df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
