# eventually_imp_distrib_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ba5d77a5ece360784aa196fe307dc8d885ec517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 650,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37562709-79e1-2ebe-db18-5c2f7e21390e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70d1a60a-c67c-7b06-24ad-ebc867de9274",
  "kind": "theorem",
  "lexical_name": "eventually_imp_distrib_left",
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
  "slug": "eventually-imp-distrib-left--9d063bddc1104bcb8b3286a6",
  "source": {
    "blob": "5ba5d77a5ece360784aa196fe307dc8d885ec517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 650,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d063bddc1104bcb8b3286a670fc60089b4788d8800abaf7d57cfd7c6dda789f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70d1a60a-c67c-7b06-24ad-ebc867de9274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_imp_distrib_left {f : Filter α} {p : Prop} {q : α → Prop} :
    (∀ᶠ x in f, p → q x) ↔ p → ∀ᶠ x in f, q x := by
  simp only [imp_iff_not_or, eventually_or_distrib_left]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba5d77a5ece360784aa196fe307dc8d885ec517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
