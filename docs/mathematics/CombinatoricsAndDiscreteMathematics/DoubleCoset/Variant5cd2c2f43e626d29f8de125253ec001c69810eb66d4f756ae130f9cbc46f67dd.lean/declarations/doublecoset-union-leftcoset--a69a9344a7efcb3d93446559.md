# doubleCoset_union_leftCoset

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
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:779b1977-4d03-2d9d-43fd-b60a4693d6ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ffe9e49-6574-4d45-86ec-8c3e2b6b3e80",
  "kind": "lemma",
  "lexical_name": "doubleCoset_union_leftCoset",
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
  "slug": "doublecoset-union-leftcoset--a69a9344a7efcb3d93446559",
  "source": {
    "blob": "9ef8107a8cbaa3d9186ecbd0d8e599a183911249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a69a9344a7efcb3d9344655912fa485202e5d3daede2864c0993cf454e482321",
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

Occurrence: `result:6ffe9e49-6574-4d45-86ec-8c3e2b6b3e80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma doubleCoset_union_leftCoset (H K : Subgroup G) (a : G) :
    ⋃ h : H, (h * a : G) • ↑K = doubleCoset a H K := by
  ext x
  simp only [mem_leftCoset_iff, mul_inv_rev, Set.mem_iUnion, mem_doubleCoset]
  constructor
  · rintro ⟨y, h_h⟩
    refine ⟨y, y.2, a⁻¹ * y⁻¹ * x, h_h, ?_⟩
    simp only [← mul_assoc, one_mul, mul_inv_cancel, mul_inv_cancel_right, InvMemClass.coe_inv]
  · rintro ⟨x, hx, y, hy, hxy⟩
    refine ⟨⟨x, hx⟩, ?_⟩
    simp only [hxy, ← mul_assoc, hy, one_mul, inv_mul_cancel, inv_mul_cancel_right]

open Quotient QuotientGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef8107a8cbaa3d9186ecbd0d8e599a183911249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
