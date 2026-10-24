# approx_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be3ae5ee-f8a9-2de7-ab4c-9de850c2699a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77c09500-a5fb-c847-1b28-96439e74e5da",
  "kind": "theorem",
  "lexical_name": "approx_le_one",
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
  "slug": "approx-le-one--0dc3f70a38947b066a7777c5",
  "source": {
    "blob": "bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dc3f70a38947b066a7777c5add581bff911f263bb1c969c3d6a63b3a6c365c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77c09500-a5fb-c847-1b28-96439e74e5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approx_le_one (c : CU X) (n : ℕ) (x : X) : c.approx n x ≤ 1 := by
  induction' n with n ihn generalizing c
  · exact indicator_apply_le' (fun _ => le_rfl) fun _ => zero_le_one
  · simp only [approx, midpoint_eq_smul_add, invOf_eq_inv, smul_eq_mul, ← div_eq_inv_mul]
    have := add_le_add (ihn (left c)) (ihn (right c))
    norm_num at this
    exact Iff.mpr (div_le_one zero_lt_two) this
#align urysohns.CU.approx_le_one Urysohns.CU.approx_le_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
