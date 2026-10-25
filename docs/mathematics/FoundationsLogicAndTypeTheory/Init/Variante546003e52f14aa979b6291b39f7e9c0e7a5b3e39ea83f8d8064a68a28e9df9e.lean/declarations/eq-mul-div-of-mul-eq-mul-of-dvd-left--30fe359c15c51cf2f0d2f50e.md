# eq_mul_div_of_mul_eq_mul_of_dvd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb55fc31647617a5556331fdc54dcbae5facd9a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58f8da13-514f-a623-c2fa-a63f5eea381f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93f1b81d-601b-ed5f-c1e4-3cbf2e600af7",
  "kind": "lemma",
  "lexical_name": "eq_mul_div_of_mul_eq_mul_of_dvd_left",
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
  "slug": "eq-mul-div-of-mul-eq-mul-of-dvd-left--30fe359c15c51cf2f0d2f50e",
  "source": {
    "blob": "fb55fc31647617a5556331fdc54dcbae5facd9a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30fe359c15c51cf2f0d2f50e38a98bbf2abd59852df572eb4eca7dbe94efef7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93f1b81d-601b-ed5f-c1e4-3cbf2e600af7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_mul_div_of_mul_eq_mul_of_dvd_left (hb : b ≠ 0) (hbc : b ∣ c) (h : b * a = c * d) :
    a = c / b * d := by
  obtain ⟨k, rfl⟩ := hbc
  rw [Int.mul_ediv_cancel_left _ hb]
  rwa [Int.mul_assoc, Int.mul_eq_mul_left_iff hb] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb55fc31647617a5556331fdc54dcbae5facd9a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
