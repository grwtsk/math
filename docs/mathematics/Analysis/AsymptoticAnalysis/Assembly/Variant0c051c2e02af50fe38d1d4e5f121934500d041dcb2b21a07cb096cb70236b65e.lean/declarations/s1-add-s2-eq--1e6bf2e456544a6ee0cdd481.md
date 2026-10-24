# s1_add_s2_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a770f904-2d2a-7201-5de3-072198519d36",
  "kind": "theorem",
  "lexical_name": "s1_add_s2_eq",
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
  "slug": "s1-add-s2-eq--1e6bf2e456544a6ee0cdd481",
  "source": {
    "blob": "3469a865bcf135c2b08ee407b8cc36179ab7deac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 982,
    "line": 959,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6bf2e456544a6ee0cdd48148890d5a8c61695e2dec0034039b1906550fb67b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a770f904-2d2a-7201-5de3-072198519d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem s1_add_s2_eq : Z.s1 T + Z.s2 T = Z.N0star (T - D0 T) (2 * T + D0 T) := by
  unfold ZeroConfig.s1 ZeroConfig.s2 ZeroConfig.N0star
  have hfin : (Z.ZIprime T ∩ ZeroConfig.onLine).Finite :=
    (Z.window_finite _ _).subset inter_subset_left
  have hdisj : Disjoint (Z.S1 T) (Z.S2 T) := by
    rw [Set.disjoint_left]
    rintro ρ ⟨_, h1⟩ ⟨_, h2⟩
    simp only [ZeroConfig.simple, mem_setOf_eq] at h1 h2
    omega
  have hunion : Z.S1 T ∪ Z.S2 T = Z.ZIprime T ∩ ZeroConfig.onLine := by
    ext ρ
    simp only [ZeroConfig.S1, ZeroConfig.S2, ZeroConfig.simple, mem_union, mem_inter_iff, mem_setOf_eq]
    constructor
    · rintro (⟨h, _⟩ | ⟨h, _⟩) <;> exact h
    · rintro ⟨h1, h2⟩
      have : 1 ≤ Z.mult ρ := Z.one_le_mult ρ (Z.window_subset_carrier _ _ h1)
      rcases this.eq_or_lt with h | h
      · exact Or.inl ⟨⟨h1, h2⟩, h.symm⟩
      · exact Or.inr ⟨⟨h1, h2⟩, h⟩
  rw [← Set.ncard_union_eq hdisj (hfin.subset (hunion ▸ subset_union_left))
    (hfin.subset (hunion ▸ subset_union_right)), hunion]
  rfl

/-- "`s₁ + s₂ ≤ N₀*(T,2T) + N(I′∖I)`" (proof of prop:zeroside-rank). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3469a865bcf135c2b08ee407b8cc36179ab7deac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
