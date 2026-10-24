# sameRay_or_sameRay_neg_iff_not_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d11c535796d9554af9f831b7d410a33d61d8a73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9607cbc-49cc-0aab-166b-5fcea3a2cfc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d61ef9a-3732-9b2a-15d7-2ff4f7f0afc1",
  "kind": "theorem",
  "lexical_name": "sameRay_or_sameRay_neg_iff_not_linearIndependent",
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
  "slug": "sameray-or-sameray-neg-iff-not-linearindependent--9b7a75b6c221ba686fef92d4",
  "source": {
    "blob": "0d11c535796d9554af9f831b7d410a33d61d8a73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 507,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b7a75b6c221ba686fef92d4719a933fea26ce7e39b294c5bc017ae099f8ff12",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d61ef9a-3732-9b2a-15d7-2ff4f7f0afc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sameRay_or_sameRay_neg_iff_not_linearIndependent {x y : M} :
    SameRay R x y ∨ SameRay R x (-y) ↔ ¬LinearIndependent R ![x, y] := by
  by_cases hx : x = 0; · simpa [hx] using fun h : LinearIndependent R ![0, y] => h.ne_zero 0 rfl
  by_cases hy : y = 0; · simpa [hy] using fun h : LinearIndependent R ![x, 0] => h.ne_zero 1 rfl
  simp_rw [Fintype.not_linearIndependent_iff]
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rcases h with ((hx0 | hy0 | ⟨r₁, r₂, hr₁, _, h⟩) | (hx0 | hy0 | ⟨r₁, r₂, hr₁, _, h⟩))
    · exact False.elim (hx hx0)
    · exact False.elim (hy hy0)
    · refine ⟨![r₁, -r₂], ?_⟩
      rw [Fin.sum_univ_two, Fin.exists_fin_two]
      simp [h, hr₁.ne.symm]
    · exact False.elim (hx hx0)
    · exact False.elim (hy (neg_eq_zero.1 hy0))
    · refine ⟨![r₁, r₂], ?_⟩
      rw [Fin.sum_univ_two, Fin.exists_fin_two]
      simp [h, hr₁.ne.symm]
  · rcases h with ⟨m, hm, hmne⟩
    rw [Fin.sum_univ_two, add_eq_zero_iff_eq_neg] at hm
    dsimp only [Matrix.cons_val] at hm
    rcases lt_trichotomy (m 0) 0 with (hm0 | hm0 | hm0) <;>
      rcases lt_trichotomy (m 1) 0 with (hm1 | hm1 | hm1)
    · refine
        Or.inr (Or.inr (Or.inr ⟨-m 0, -m 1, Left.neg_pos_iff.2 hm0, Left.neg_pos_iff.2 hm1, ?_⟩))
      linear_combination (norm := module) -hm
    · exfalso
      simp [hm1, hx, hm0.ne] at hm
    · refine Or.inl (Or.inr (Or.inr ⟨-m 0, m 1, Left.neg_pos_iff.2 hm0, hm1, ?_⟩))
      linear_combination (norm := module) -hm
    · exfalso
      simp [hm0, hy, hm1.ne] at hm
    · rw [Fin.exists_fin_two] at hmne
      exact False.elim (not_and_or.2 hmne ⟨hm0, hm1⟩)
    · exfalso
      simp [hm0, hy, hm1.ne.symm] at hm
    · refine Or.inl (Or.inr (Or.inr ⟨m 0, -m 1, hm0, Left.neg_pos_iff.2 hm1, ?_⟩))
      rwa [neg_smul]
    · exfalso
      simp [hm1, hx, hm0.ne.symm] at hm
    · refine Or.inr (Or.inr (Or.inr ⟨m 0, m 1, hm0, hm1, ?_⟩))
      rwa [smul_neg]

/-- Two vectors are in the same ray, or they are nonzero and the first is in the same ray as the
negation of the second, if and only if they are not linearly independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d11c535796d9554af9f831b7d410a33d61d8a73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
