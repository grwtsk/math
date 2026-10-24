# commute_of_normal_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f469b22d27bfa6ed9d1ad66f8ae918334433da91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3645,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f388d964-6820-6536-afa5-3ca446cdab40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:588f32cc-c07d-858e-0f35-af5ca5f7af21",
  "kind": "theorem",
  "lexical_name": "commute_of_normal_of_disjoint",
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
  "slug": "commute-of-normal-of-disjoint--404df8c9f7cb22d17aafb753",
  "source": {
    "blob": "f469b22d27bfa6ed9d1ad66f8ae918334433da91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3666,
    "line": 3645,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:404df8c9f7cb22d17aafb753fd5f081c3ba1f61a62b835d2e97f4944e596fcf6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:588f32cc-c07d-858e-0f35-af5ca5f7af21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3645–3666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_of_normal_of_disjoint (H₁ H₂ : Subgroup G) (hH₁ : H₁.Normal) (hH₂ : H₂.Normal)
    -- Porting note: Goal was `Commute x y`. Removed ambiguity.
    (hdis : Disjoint H₁ H₂) (x y : G) (hx : x ∈ H₁) (hy : y ∈ H₂) : Commute x y := by
  suffices x * y * x⁻¹ * y⁻¹ = 1 by
    show x * y = y * x
    · rw [mul_assoc, mul_eq_one_iff_eq_inv] at this
      -- Porting note: Previous code was:
      -- simpa
      simp only [this, mul_inv_rev, inv_inv]
  apply hdis.le_bot
  constructor
  · suffices x * (y * x⁻¹ * y⁻¹) ∈ H₁ by simpa [mul_assoc]
    exact H₁.mul_mem hx (hH₁.conj_mem _ (H₁.inv_mem hx) _)
  · show x * y * x⁻¹ * y⁻¹ ∈ H₂
    apply H₂.mul_mem _ (H₂.inv_mem hy)
    apply hH₂.conj_mem _ hy
#align subgroup.commute_of_normal_of_disjoint Subgroup.commute_of_normal_of_disjoint
#align add_subgroup.commute_of_normal_of_disjoint AddSubgroup.commute_of_normal_of_disjoint

end SubgroupNormal

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean#L3645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f469b22d27bfa6ed9d1ad66f8ae918334433da91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
