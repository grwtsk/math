# Diffeomorph.preimage_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10033b25-cae9-3c2b-4364-87c1f3211578",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecd17d99-1d44-c149-2074-bc04e56b9651",
  "kind": "lemma",
  "lexical_name": "Diffeomorph.preimage_boundary",
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
  "slug": "diffeomorph-preimage-boundary--9c5c02b47f319a2e23c68282",
  "source": {
    "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 425,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c5c02b47f319a2e23c6828210d0fbae281071ca66aa5ab5c602e2474362521a",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecd17d99-1d44-c149-2074-bc04e56b9651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Diffeomorph.preimage_boundary (hn : n ≠ 0) (Φ : M ≃ₘ^n⟮I, I'⟯ N) :
    Φ ⁻¹' I'.boundary N = I.boundary M :=
  Φ.isLocalDiffeomorph.preimage_boundary hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e44227a5404371d3fbe4b9cdd473abc69f26c393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
