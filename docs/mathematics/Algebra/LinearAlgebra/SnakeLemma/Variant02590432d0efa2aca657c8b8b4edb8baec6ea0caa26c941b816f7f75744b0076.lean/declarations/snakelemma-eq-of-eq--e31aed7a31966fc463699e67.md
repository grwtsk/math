# SnakeLemma.eq_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "832ed57c3f559ff7c94a27c29a0d9e841b9ba9a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe9e0923-ba46-d0b4-faa5-c9579d80eb0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afde3779-d229-d867-49d0-782a0fd587f9",
  "kind": "lemma",
  "lexical_name": "SnakeLemma.eq_of_eq",
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
  "slug": "snakelemma-eq-of-eq--e31aed7a31966fc463699e67",
  "source": {
    "blob": "832ed57c3f559ff7c94a27c29a0d9e841b9ba9a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e31aed7a31966fc463699e6766aee528df13ecb60b1d2bf34a06b273fa0e5397",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afde3779-d229-d867-49d0-782a0fd587f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma SnakeLemma.eq_of_eq (x : K₃)
    (y₁) (hy₁ : f₂ y₁ = ι₃ x) (z₁) (hz₁ : g₁ z₁ = i₂ y₁)
    (y₂) (hy₂ : f₂ y₂ = ι₃ x) (z₂) (hz₂ : g₁ z₂ = i₂ y₂) : π₁ z₁ = π₁ z₂ := by
  have := sub_eq_zero.mpr (hy₁.trans hy₂.symm)
  rw [← map_sub, hf] at this
  obtain ⟨d, hd⟩ := this
  rw [← eq_sub_iff_add_eq.mp hd, map_add, ← hz₂, ← sub_eq_iff_eq_add, ← map_sub,
    ← i₂.comp_apply, ← h₁, LinearMap.comp_apply,
    (HasLeftInverse.injective ⟨ρ, congr_fun hρ⟩).eq_iff] at hz₁
  rw [← sub_eq_zero, ← map_sub, hz₁, hπ₁]
  exact ⟨_, rfl⟩

/--
**Snake Lemma**
Suppose we have an exact commutative diagram
```
                K₃
                |
                ι₃
                ↓
M₁ -f₁→ M₂ -f₂→ M₃
|       |       |
i₁      i₂      i₃
↓       ↓       ↓
N₁ -g₁→ N₂ -g₂→ N₃
|
π₁
↓
C₁

```
such that `f₂` is surjective with a (set-theoretic) section `σ`, `g₁` is injective with a
(set-theoretic) retraction `ρ`,
then the map `π₁ ∘ ρ ∘ i₂ ∘ σ ∘ ι₃` is a linear map from `K₃` to `C₁`.

Also see `SnakeLemma.δ'` for a noncomputable version
that does not require an explicit section and retraction.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `832ed57c3f559ff7c94a27c29a0d9e841b9ba9a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
