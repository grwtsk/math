# edist_le_iff_le_add_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b12de232eec785e363c336ce20e3edb74a56abc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:845f2475-e878-ed60-c4e0-4ee6536632b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a184b1f-2cb3-cd95-a6e0-b88a50bc7e1d",
  "kind": "theorem",
  "lexical_name": "edist_le_iff_le_add_left",
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
  "slug": "edist-le-iff-le-add-left--04166e87da04329e0a0db693",
  "source": {
    "blob": "7b12de232eec785e363c336ce20e3edb74a56abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 283,
    "path": "GRWTSK/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04166e87da04329e0a0db693100a3e525e4407247e35abec9e60a6082a939b18",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a184b1f-2cb3-cd95-a6e0-b88a50bc7e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_le_iff_le_add_left (a b c : ℝ≥0∞) : edist a b ≤ c ↔ a ≤ c + b ∧ b ≤ c + a := by
  simp [edist_eq_max]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b12de232eec785e363c336ce20e3edb74a56abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
