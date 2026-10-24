# linearIndependent_set_iff_affineIndependent_vadd_union_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc7de1d2f2b6e6d2bdc203b9fdec3ae18da1f12a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c033b0d0-90aa-4bb5-d807-2ff65f95cbfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:083ebfe4-cfec-ecaf-1048-051b4c247d5c",
  "kind": "theorem",
  "lexical_name": "linearIndependent_set_iff_affineIndependent_vadd_union_singleton",
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
  "slug": "linearindependent-set-iff-affineindependent-vadd-union-singleton--6aabafd632c97d9f8c75cecf",
  "source": {
    "blob": "bc7de1d2f2b6e6d2bdc203b9fdec3ae18da1f12a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 170,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aabafd632c97d9f8c75cecf771a51ec8850e31a2feb6f045211476fc2ab02ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:083ebfe4-cfec-ecaf-1048-051b4c247d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_set_iff_affineIndependent_vadd_union_singleton {s : Set V}
    (hs : ∀ v ∈ s, v ≠ (0 : V)) (p₁ : P) : LinearIndependent k (fun v => v : s → V) ↔
    AffineIndependent k (fun p => p : ({p₁} ∪ (fun v => v +ᵥ p₁) '' s : Set P) → P) := by
  rw [affineIndependent_set_iff_linearIndependent_vsub k
      (Set.mem_union_left _ (Set.mem_singleton p₁))]
  have h : (fun p => (p -ᵥ p₁ : V)) '' (({p₁} ∪ (fun v => v +ᵥ p₁) '' s) \ {p₁}) = s := by
    simp_rw [Set.union_diff_left, Set.image_diff (vsub_left_injective p₁), Set.image_image,
      Set.image_singleton, vsub_self, vadd_vsub, Set.image_id']
    exact Set.diff_singleton_eq_self fun h => hs 0 h rfl
  rw [h]

/-- A family is affinely independent if and only if any affine
combinations (with sum of weights 1) that evaluate to the same point
have equal `Set.indicator`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant4a5fbe48cf7f236283be58e1d0aecfbfeb15243b2c7a9a443e7a3787b57d314a.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc7de1d2f2b6e6d2bdc203b9fdec3ae18da1f12a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
