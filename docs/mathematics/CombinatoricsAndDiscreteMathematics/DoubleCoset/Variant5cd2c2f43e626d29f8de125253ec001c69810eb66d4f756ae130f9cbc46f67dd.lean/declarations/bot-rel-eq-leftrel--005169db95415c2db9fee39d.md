# bot_rel_eq_leftRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef8107a8cbaa3d9186ecbd0d8e599a183911249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5731a12-d825-8fd3-894e-c47ec19f8357",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09d11993-503a-a28f-9be3-0f679a7b67e9",
  "kind": "lemma",
  "lexical_name": "bot_rel_eq_leftRel",
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
  "slug": "bot-rel-eq-leftrel--005169db95415c2db9fee39d",
  "source": {
    "blob": "9ef8107a8cbaa3d9186ecbd0d8e599a183911249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:005169db95415c2db9fee39de3c946a29d4cdb613cca0a7b94aa2e005b1f8656",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09d11993-503a-a28f-9be3-0f679a7b67e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bot_rel_eq_leftRel (H : Subgroup G) :
    ⇑(setoid ↑(⊥ : Subgroup G) ↑H) = ⇑(QuotientGroup.leftRel H) := by
  ext a b
  rw [rel_iff, QuotientGroup.leftRel_apply]
  constructor
  · rintro ⟨a, rfl : a = 1, b, hb, rfl⟩
    rwa [one_mul, inv_mul_cancel_left]
  · rintro (h : a⁻¹ * b ∈ H)
    exact ⟨1, rfl, a⁻¹ * b, h, by rw [one_mul, mul_inv_cancel_left]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef8107a8cbaa3d9186ecbd0d8e599a183911249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
