# mul_le_mul_iff_of_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e57aec09-7aa7-9233-1066-3d2cede1214a",
  "kind": "lemma",
  "lexical_name": "mul_le_mul_iff_of_ge",
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
  "slug": "mul-le-mul-iff-of-ge--519bde8c210f4bba735adbd2",
  "source": {
    "blob": "9584337874155f8b0b3d61930a857873f57f9622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1151,
    "line": 1135,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:519bde8c210f4bba735adbd20476e0dedf613c53f86d92df0073cd10157fd8cd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e57aec09-7aa7-9233-1066-3d2cede1214a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1135–1151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma mul_le_mul_iff_of_ge [CovariantClass α α (· * ·) (· ≤ ·)]
  [CovariantClass α α (swap (· * ·)) (· ≤ ·)] [CovariantClass α α (· * ·) (· < ·)]
  [CovariantClass α α (swap (· * ·)) (· < ·)] {a₁ a₂ b₁ b₂ : α} (ha : a₁ ≤ a₂) (hb : b₁ ≤ b₂) :
  a₂ * b₂ ≤ a₁ * b₁ ↔ a₁ = a₂ ∧ b₁ = b₂ := by
  refine' ⟨fun h ↦ _, by rintro ⟨rfl, rfl⟩; rfl⟩
  simp only [eq_iff_le_not_lt, ha, hb, true_and]
  refine' ⟨fun ha ↦ h.not_lt _, fun hb ↦ h.not_lt _⟩
  { exact mul_lt_mul_of_lt_of_le ha hb }
  { exact mul_lt_mul_of_le_of_lt ha hb }
#align add_le_add_iff_of_ge add_le_add_iff_of_ge
#align mul_le_mul_iff_of_ge mul_le_mul_iff_of_ge

section Left

variable [CovariantClass α α (· * ·) (· ≤ ·)] {a b : α}

@[to_additive eq_zero_of_add_nonneg_left]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean#L1135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9584337874155f8b0b3d61930a857873f57f9622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
