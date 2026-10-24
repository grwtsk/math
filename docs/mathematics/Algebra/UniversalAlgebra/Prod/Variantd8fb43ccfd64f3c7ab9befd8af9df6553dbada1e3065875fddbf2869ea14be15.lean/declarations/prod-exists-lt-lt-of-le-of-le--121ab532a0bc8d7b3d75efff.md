# prod_exists_lt_lt_of_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73a0e74a-e685-5c13-fac1-4c38959c2bcf",
  "kind": "lemma",
  "lexical_name": "prod_exists_lt_lt_of_le_of_le",
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
  "slug": "prod-exists-lt-lt-of-le-of-le--121ab532a0bc8d7b3d75efff",
  "source": {
    "blob": "6e987d03fdf02c9aa6c299db506b672719a0f0f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 38,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantd8fb43ccfd64f3c7ab9befd8af9df6553dbada1e3065875fddbf2869ea14be15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:121ab532a0bc8d7b3d75efff276b0cd4fbba3d08360d109de7acb888df3764f0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Prod/Variantd8fb43ccfd64f3c7ab9befd8af9df6553dbada1e3065875fddbf2869ea14be15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73a0e74a-e685-5c13-fac1-4c38959c2bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma prod_exists_lt_lt_of_le_of_le
    (k₀ k₂ : Fin p × Fin q) (h₀₂ : k₀ ≤ k₂)
    (h : k₀.1.val + k₀.2.val + 2 ≤ k₂.1.val + k₂.2.val) :
    ∃ k₁, k₀ < k₁ ∧ k₁ < k₂ := by
  obtain ⟨p, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (n := p) (by grind)
  obtain ⟨q, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (n := q) (by grind)
  obtain ⟨x₀, y₀⟩ := k₀
  obtain ⟨x₂, y₂⟩ := k₂
  simp only [Prod.le_def] at h₀₂ h
  obtain ⟨hx, hy⟩ := h₀₂
  obtain hx' | rfl := hx.lt_or_eq
  · obtain hy' | rfl := hy.lt_or_eq
    · exact ⟨⟨x₀, y₂⟩, by aesop⟩
    · obtain ⟨x₂', rfl⟩ := x₂.eq_succ_of_ne_zero (Fin.ne_zero_of_lt hx')
      refine ⟨⟨x₂'.castSucc, y₀⟩, ?_⟩
      rw [Fin.val_succ] at h
      simp [Fin.lt_def]
      grind
  · obtain ⟨y₂', rfl⟩ := y₂.eq_succ_of_ne_zero (by grind)
    refine ⟨⟨x₀, y₂'.castSucc⟩, ?_⟩
    rw [Fin.val_succ] at h
    simp [Fin.lt_def]
    lia

end Fin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Prod/Variantd8fb43ccfd64f3c7ab9befd8af9df6553dbada1e3065875fddbf2869ea14be15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prod/Variantd8fb43ccfd64f3c7ab9befd8af9df6553dbada1e3065875fddbf2869ea14be15.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e987d03fdf02c9aa6c299db506b672719a0f0f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
