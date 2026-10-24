# Module.exists_isPrincipal_quotient_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a22021a-fe81-5fa8-c905-fbb9ba5995a1",
  "kind": "lemma",
  "lexical_name": "Module.exists_isPrincipal_quotient_of_finite",
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
  "slug": "module-exists-isprincipal-quotient-of-finite--663cd6cbc20a86101caf0f4b",
  "source": {
    "blob": "e61ba2fdd336c4e6ce4799224c21446ee1e63c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:663cd6cbc20a86101caf0f4bf2f41e8a45f0cfa7fb0f27a7c4a1b118303ef633",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a22021a-fe81-5fa8-c905-fbb9ba5995a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.exists_isPrincipal_quotient_of_finite :
    ∃ N : Submodule R M, N ≠ ⊤ ∧ Submodule.IsPrincipal (⊤ : Submodule R (M ⧸ N)) := by
  obtain ⟨n, f, hf⟩ := @Module.Finite.exists_fin R M _ _ _ _
  let s := { m : ℕ | Submodule.span R (f '' Fin.val ⁻¹' Set.Iio m) ≠ ⊤ }
  have hns : ∀ x ∈ s, x < n := by
    refine fun x hx ↦ lt_iff_not_ge.mpr fun e ↦ ?_
    have : (Fin.val ⁻¹' Set.Iio x : Set (Fin n)) = Set.univ := by ext y; simpa using y.2.trans_le e
    simp [s, this, hf] at hx
  have hs₁ : s.Nonempty := ⟨0, by simp [s]⟩
  have hs₂ : BddAbove s := ⟨n, fun x hx ↦ (hns x hx).le⟩
  have hs := Nat.sSup_mem hs₁ hs₂
  refine ⟨_, hs, ⟨⟨Submodule.mkQ _ (f ⟨_, hns _ hs⟩), ?_⟩⟩⟩
  have := not_not.mp (notMem_of_csSup_lt (Order.lt_succ _) hs₂)
  rw [← Set.image_singleton, ← Submodule.map_span,
    ← (Submodule.comap_injective_of_surjective (Submodule.mkQ_surjective _)).eq_iff,
    Submodule.comap_map_eq, Submodule.ker_mkQ, Submodule.comap_top, ← this, ← Submodule.span_union,
    Order.Iio_succ_eq_insert (sSup s), ← Set.union_singleton, Set.preimage_union, Set.image_union,
    ← @Set.image_singleton _ _ f, Set.union_comm]
  congr!
  ext
  simp [Fin.ext_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e61ba2fdd336c4e6ce4799224c21446ee1e63c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
