# dist_pi_le_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27d029ee8e68efb7a99c2399e7cd2678bd5d7889",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e811717-3e6c-4b91-850c-9671dd804a74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a70beace-dec7-9632-d068-4b8846b053a7",
  "kind": "lemma",
  "lexical_name": "dist_pi_le_iff'",
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
  "slug": "dist-pi-le-iff--281a9d28920ed7ab26a57b12",
  "source": {
    "blob": "27d029ee8e68efb7a99c2399e7cd2678bd5d7889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281a9d28920ed7ab26a57b1211da537928022cc00c7817a67d4a4039e301c499",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a70beace-dec7-9632-d068-4b8846b053a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_pi_le_iff' [Nonempty β] {f g : ∀ b, X b} {r : ℝ} :
    dist f g ≤ r ↔ ∀ b, dist (f b) (g b) ≤ r := by
  by_cases hr : 0 ≤ r
  · exact dist_pi_le_iff hr
  · exact iff_of_false (fun h => hr <| dist_nonneg.trans h) fun h =>
      hr <| dist_nonneg.trans <| h <| Classical.arbitrary _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d029ee8e68efb7a99c2399e7cd2678bd5d7889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
