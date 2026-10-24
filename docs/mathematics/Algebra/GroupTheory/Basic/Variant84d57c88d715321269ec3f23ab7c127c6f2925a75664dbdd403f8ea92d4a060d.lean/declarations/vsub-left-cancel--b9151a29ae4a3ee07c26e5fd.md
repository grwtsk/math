# vsub_left_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2c8a0406a07fb87f2405802d0a67ef8b6986873",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6116e0d-c30c-98fd-633c-1fd4b3673cdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f920ea0-81c8-06d8-61f1-16b6476cb3b2",
  "kind": "theorem",
  "lexical_name": "vsub_left_cancel",
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
  "slug": "vsub-left-cancel--b9151a29ae4a3ee07c26e5fd",
  "source": {
    "blob": "f2c8a0406a07fb87f2405802d0a67ef8b6986873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9151a29ae4a3ee07c26e5fd1c50a753f9b89c618a71b077ccc689f2da1607d7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f920ea0-81c8-06d8-61f1-16b6476cb3b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vsub_left_cancel {p₁ p₂ p : P} (h : p₁ -ᵥ p = p₂ -ᵥ p) : p₁ = p₂ := by
  rwa [← sub_eq_zero, vsub_sub_vsub_cancel_right, vsub_eq_zero_iff_eq] at h

/-- The same point subtracted from two points produces equal results
if and only if those points are equal. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant84d57c88d715321269ec3f23ab7c127c6f2925a75664dbdd403f8ea92d4a060d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c8a0406a07fb87f2405802d0a67ef8b6986873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
