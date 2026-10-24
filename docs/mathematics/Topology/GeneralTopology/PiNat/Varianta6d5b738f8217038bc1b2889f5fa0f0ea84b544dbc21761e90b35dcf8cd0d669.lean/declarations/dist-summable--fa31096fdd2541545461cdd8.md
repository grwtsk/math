# dist_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 924,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ddd4b7d-5d35-05fb-d5af-a0a4781ebbe5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ce35c6b-4db6-0603-80a2-845b648e34a5",
  "kind": "lemma",
  "lexical_name": "dist_summable",
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
  "slug": "dist-summable--fa31096fdd2541545461cdd8",
  "source": {
    "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 924,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa31096fdd2541545461cdd83199e2f3959b499be21c2ac14b9f18b6a486908e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ce35c6b-4db6-0603-80a2-845b648e34a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 924–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_summable (x y : ∀ i, F i) :
    Summable fun i ↦ min (2⁻¹ ^ encode i) (dist (x i) (y i)) := by
  refine .of_nonneg_of_le (fun i => ?_) (fun i => min_le_left _ _) <| by
    simpa [one_div] using summable_geometric_two_encode
  exact le_min (by positivity) dist_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean#L924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9037e11c4d4eeb6bcd61b008be2f6f95426d2181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
