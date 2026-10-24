# log_intCast_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ed3c957d0d1f37094a8da10e42e6d2c2807e7be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb7af50f-6a0a-5f43-99f6-ca3d522ccfc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4da1db64-f833-b617-3088-aa884dbc3ad2",
  "kind": "theorem",
  "lexical_name": "log_intCast_nonneg",
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
  "slug": "log-intcast-nonneg--303d991d7868011cb6ddc71a",
  "source": {
    "blob": "0ed3c957d0d1f37094a8da10e42e6d2c2807e7be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:303d991d7868011cb6ddc71ab668841007568a77d706f4226bcfaf8d491e2a9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4da1db64-f833-b617-3088-aa884dbc3ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_intCast_nonneg (n : ℤ) : 0 ≤ log n := by
  cases lt_trichotomy 0 n with
  | inl hn =>
      have : (1 : ℝ) ≤ n := mod_cast hn
      exact log_nonneg this
  | inr hn =>
      cases hn with
      | inl hn => simp [hn.symm]
      | inr hn =>
          have : (1 : ℝ) ≤ -n := by rw [← neg_zero, ← lt_neg] at hn; exact mod_cast hn
          rw [← log_neg_eq_log]
          exact log_nonneg this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed3c957d0d1f37094a8da10e42e6d2c2807e7be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
