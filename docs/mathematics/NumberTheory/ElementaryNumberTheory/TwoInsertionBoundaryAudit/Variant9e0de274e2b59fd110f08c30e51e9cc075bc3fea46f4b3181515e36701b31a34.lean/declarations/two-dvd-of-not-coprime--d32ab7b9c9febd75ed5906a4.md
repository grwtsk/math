# two_dvd_of_not_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5baf7f2512cbbc739d764c03e884e1ef9b34f8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0f1aebd-aaac-76c3-c1d6-9a6b8472473b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcaf0811-eb7f-f32d-1a0c-b3a424c03804",
  "kind": "theorem",
  "lexical_name": "two_dvd_of_not_coprime",
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
  "slug": "two-dvd-of-not-coprime--d32ab7b9c9febd75ed5906a4",
  "source": {
    "blob": "e5baf7f2512cbbc739d764c03e884e1ef9b34f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 132,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d32ab7b9c9febd75ed5906a432c9ba2808baff148af480bdee35e0fedeb11f36",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcaf0811-eb7f-f32d-1a0c-b3a424c03804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem two_dvd_of_not_coprime (d : ℕ) (hd : ¬Nat.Coprime d 2) : 2 ∣ d :=
  Nat.prime_two.dvd_iff_not_coprime.mpr (fun h ↦ hd h.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5baf7f2512cbbc739d764c03e884e1ef9b34f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
