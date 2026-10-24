# u₄_eq_one_or_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6a73389cd2521fd69b81523553518af303cf6b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 660,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6201d300-1b8b-c746-ddac-4ed544cb0dab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:229f9b22-6d58-3a4b-f99c-e27122b465a6",
  "kind": "lemma",
  "lexical_name": "u₄_eq_one_or_neg_one",
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
  "slug": "u-eq-one-or-neg-one--e77e00c3bdc0ed3c86e37245",
  "source": {
    "blob": "e6a73389cd2521fd69b81523553518af303cf6b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 660,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e77e00c3bdc0ed3c86e372457e4d2891cb4408ee33cc8a568e7116b31c8851a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:229f9b22-6d58-3a4b-f99c-e27122b465a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma u₄_eq_one_or_neg_one : S.u₄ = 1 ∨ S.u₄ = -1 := by
  have : λ^2 ∣ λ^4  := ⟨λ^2, by ring⟩
  have h := S.lambda_sq_div_u₅_mul
  apply IsCyclotomicExtension.Rat.Three.eq_one_or_neg_one_of_unit_of_congruent hζ
  rcases h with ⟨X, hX⟩
  rcases lambda_pow_four_dvd_cube_sub_one_or_add_one_of_lambda_not_dvd hζ S.lambda_not_dvd_Y with
    HY | HY <;> rcases lambda_pow_four_dvd_cube_sub_one_or_add_one_of_lambda_not_dvd
      hζ S.lambda_not_dvd_Z with HZ | HZ <;> replace HY := this.trans HY <;> replace HZ :=
      this.trans HZ <;> rcases HY with ⟨Y, hY⟩ <;> rcases HZ with ⟨Z, hZ⟩
  · refine ⟨-1, X-Y-S.u₄*Z, ?_⟩
    rw [show λ^2*(X-Y-S.u₄*Z)=λ^2*X-λ^2*Y-S.u₄*(λ^2*Z) by ring, ← hX, ← hY, ← hZ, ← formula2]
    ring
  · refine ⟨1, -X+Y+S.u₄*Z, ?_⟩
    rw [show λ^2*(-X+Y+S.u₄*Z)=-(λ^2*X-λ^2*Y-S.u₄*(λ^2*Z)) by ring, ← hX, ← hY, ← hZ, ← formula2]
    ring
  · refine ⟨1, X-Y-S.u₄*Z, ?_⟩
    rw [show λ^2*(X-Y-S.u₄*Z)=λ^2*X-λ^2*Y-S.u₄*(λ^2*Z) by ring, ← hX, ← hY, ← hZ, ← formula2]
    ring
  · refine ⟨-1, -X+Y+S.u₄*Z, ?_⟩
    rw [show λ^2*(-X+Y+S.u₄*Z)=-(λ^2*X-λ^2*Y-S.u₄*(λ^2*Z)) by ring, ← hX, ← hY, ← hZ, ← formula2]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6a73389cd2521fd69b81523553518af303cf6b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
