# EssFiniteType.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a57625a143386f5396971d9e49d1e1d5c5dcc9fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1d0873f-2815-bb18-b5a2-eacce04c0ee4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9451f08-35fd-32aa-29e4-db946fc163f2",
  "kind": "lemma",
  "lexical_name": "EssFiniteType.aux",
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
  "slug": "essfinitetype-aux--d2e7d17529a11d6d9d5e39f5",
  "source": {
    "blob": "a57625a143386f5396971d9e49d1e1d5c5dcc9fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 116,
    "path": "GRWTSK/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2e7d17529a11d6d9d5e39f5ec83affd9abe1f7f2ee58e4a24bbe78de1c33b32",
  "verification": {
    "reference": "docs/verification/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9451f08-35fd-32aa-29e4-db946fc163f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EssFiniteType.aux (σ : Subalgebra R S)
    (hσ : ∀ s : S, ∃ t ∈ σ, IsUnit t ∧ s * t ∈ σ)
    (τ : Set T) (t : T) (ht : t ∈ Algebra.adjoin S τ) :
    ∃ s ∈ σ, IsUnit s ∧ s • t ∈ σ.map (IsScalarTower.toAlgHom R S T) ⊔ Algebra.adjoin R τ := by
  refine Algebra.adjoin_induction ?_ ?_ ?_ ?_ ht
  · intro t ht
    exact ⟨1, Subalgebra.one_mem _, isUnit_one,
      (one_smul S t).symm ▸ Algebra.mem_sup_right (Algebra.subset_adjoin ht)⟩
  · intro s
    obtain ⟨s', hs₁, hs₂, hs₃⟩ := hσ s
    refine ⟨_, hs₁, hs₂, Algebra.mem_sup_left ?_⟩
    rw [Algebra.smul_def, ← map_mul, mul_comm]
    exact ⟨_, hs₃, rfl⟩
  · rintro x y - - ⟨sx, hsx, hsx', hsx''⟩ ⟨sy, hsy, hsy', hsy''⟩
    refine ⟨_, σ.mul_mem hsx hsy, hsx'.mul hsy', ?_⟩
    rw [smul_add, mul_smul, mul_smul, Algebra.smul_def sx (sy • y), smul_comm,
      Algebra.smul_def sy (sx • x)]
    apply add_mem (mul_mem _ hsx'') (mul_mem _ hsy'') <;>
      exact Algebra.mem_sup_left ⟨_, ‹_›, rfl⟩
  · rintro x y - - ⟨sx, hsx, hsx', hsx''⟩ ⟨sy, hsy, hsy', hsy''⟩
    refine ⟨_, σ.mul_mem hsx hsy, hsx'.mul hsy', ?_⟩
    rw [mul_smul, ← smul_eq_mul, smul_comm sy x, ← smul_assoc, smul_eq_mul]
    exact mul_mem hsx'' hsy''

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a57625a143386f5396971d9e49d1e1d5c5dcc9fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
