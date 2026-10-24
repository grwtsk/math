# lt_sin_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e776100272383a5bc5e205b786d6fc7110489c59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe3442fa-6832-fcb8-b2b1-79ec97cd7e43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00b583fc-c996-e922-0b0f-65e7b9b2ae19",
  "kind": "theorem",
  "lexical_name": "lt_sin_mul",
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
  "slug": "lt-sin-mul--f61cbbb9168fbcee7242b09d",
  "source": {
    "blob": "e776100272383a5bc5e205b786d6fc7110489c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f61cbbb9168fbcee7242b09d5f274941c744f1ef290e2c0e73059475f991a00a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b583fc-c996-e922-0b0f-65e7b9b2ae19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_sin_mul {x : ℝ} (hx : 0 < x) (hx' : x < 1) : x < sin (π / 2 * x) := by
  simpa [mul_comm x] using
    strictConcaveOn_sin_Icc.2 ⟨le_rfl, pi_pos.le⟩ ⟨pi_div_two_pos.le, half_le_self pi_pos.le⟩
      pi_div_two_pos.ne (sub_pos.2 hx') hx
#align real.lt_sin_mul Real.lt_sin_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e776100272383a5bc5e205b786d6fc7110489c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
