# Poly.denote_eq_cancelAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79480c13b9bfa5b8056b1e35aa7aa1ea2c91f088",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b678dd6f-c3a0-f066-750a-12266148becd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa9ff3db-e9a3-cd89-dba9-fdba97be9a10",
  "kind": "theorem",
  "lexical_name": "Poly.denote_eq_cancelAux",
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
  "slug": "poly-denote-eq-cancelaux--1111c7e4e7d95a9e18b799d4",
  "source": {
    "blob": "79480c13b9bfa5b8056b1e35aa7aa1ea2c91f088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1111c7e4e7d95a9e18b799d46751a39d2f5d35f7026f52bf12b4b6d338b9730c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa9ff3db-e9a3-cd89-dba9-fdba97be9a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denote_eq_cancelAux (ctx : Context) (fuel : Nat) (m₁ m₂ r₁ r₂ : Poly)
    (h : denote_eq ctx (r₁.reverse ++ m₁, r₂.reverse ++ m₂)) : denote_eq ctx (cancelAux fuel m₁ m₂ r₁ r₂) := by
  induction fuel generalizing m₁ m₂ r₁ r₂ with
  | zero => assumption
  | succ fuel ih =>
    simp
    split <;> try (simp at h; try assumption)
    rename_i k₁ v₁ m₁ k₂ v₂ m₂
    by_cases hltv : Nat.blt v₁ v₂ <;> simp [hltv]
    · apply ih; simp [denote_eq] at h |-; assumption
    · by_cases hgtv : Nat.blt v₂ v₁ <;> simp [hgtv]
      · apply ih; simp [denote_eq] at h |-; assumption
      · have heqv : v₁ = v₂ := eq_of_not_blt_eq_true hltv hgtv; subst heqv
        by_cases hltk : Nat.blt k₁ k₂ <;> simp [hltk]
        · apply ih
          simp [denote_eq] at h |-
          have haux : k₁ * Var.denote ctx v₁ ≤ k₂ * Var.denote ctx v₁ := Nat.mul_le_mul_right _ (Nat.le_of_lt (Nat.blt_eq.mp hltk))
          rw [Nat.mul_sub_right_distrib, ← Nat.add_assoc, ← Nat.add_sub_assoc haux]
          apply Eq.symm
          apply Nat.sub_eq_of_eq_add
          simp [h]
        · by_cases hgtk : Nat.blt k₂ k₁ <;> simp [hgtk]
          · apply ih
            simp [denote_eq] at h |-
            have haux : k₂ * Var.denote ctx v₁ ≤ k₁ * Var.denote ctx v₁ := Nat.mul_le_mul_right _ (Nat.le_of_lt (Nat.blt_eq.mp hgtk))
            rw [Nat.mul_sub_right_distrib, ← Nat.add_assoc, ← Nat.add_sub_assoc haux]
            apply Nat.sub_eq_of_eq_add
            simp [h]
          · have heqk : k₁ = k₂ := eq_of_not_blt_eq_true hltk hgtk; subst heqk
            apply ih
            simp [denote_eq] at h |-
            rw [← Nat.add_assoc, ← Nat.add_assoc] at h
            exact Nat.add_right_cancel h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79480c13b9bfa5b8056b1e35aa7aa1ea2c91f088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
