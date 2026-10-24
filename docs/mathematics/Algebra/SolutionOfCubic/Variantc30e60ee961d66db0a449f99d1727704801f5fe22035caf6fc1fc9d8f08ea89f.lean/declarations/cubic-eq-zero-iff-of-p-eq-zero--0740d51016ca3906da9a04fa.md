# cubic_eq_zero_iff_of_p_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6bec6210ab3f543f469d14133abd5a25a46f48f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80e694e1-4236-346d-99bf-7c7c909e19fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b65aba31-e962-025f-a4f8-f4a3a1687a60",
  "kind": "theorem",
  "lexical_name": "cubic_eq_zero_iff_of_p_eq_zero",
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
  "slug": "cubic-eq-zero-iff-of-p-eq-zero--0740d51016ca3906da9a04fa",
  "source": {
    "blob": "d6bec6210ab3f543f469d14133abd5a25a46f48f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 123,
    "path": "GRWTSK/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0740d51016ca3906da9a04fad59bcbc381bce9ce1116072994f8793960b40102",
  "verification": {
    "reference": "docs/verification/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b65aba31-e962-025f-a4f8-f4a3a1687a60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_eq_zero_iff_of_p_eq_zero (ha : a ≠ 0) (hω : IsPrimitiveRoot ω 3)
    (hpz : 3 * a * c - b ^ 2 = 0)
    (hq : q = (9 * a * b * c - 2 * b ^ 3 - 27 * a ^ 2 * d) / (54 * a ^ 3)) (hs3 : s ^ 3 = 2 * q)
    (x : K) :
    a * x ^ 3 + b * x ^ 2 + c * x + d = 0 ↔
      x = s - b / (3 * a) ∨ x = s * ω - b / (3 * a) ∨ x = s * ω ^ 2 - b / (3 * a) := by
  have h₁ : ∀ x a₁ a₂ a₃ : K, x = a₁ ∨ x = a₂ ∨ x = a₃ ↔ (x - a₁) * (x - a₂) * (x - a₃) = 0 := by
    intros; simp only [mul_eq_zero, sub_eq_zero, or_assoc]
  have hi2 : (2 : K) ≠ 0 := nonzero_of_invertible _
  have hi3 : (3 : K) ≠ 0 := nonzero_of_invertible _
  have h54 : (54 : K) = 2 * 3 ^ 3 := by norm_num
  have hb2 : b ^ 2 = 3 * a * c := by rw [sub_eq_zero] at hpz; rw [hpz]
  have hb3 : b ^ 3 = 3 * a * b * c := by rw [pow_succ, hb2]; ring
  have h₂ :=
    calc
      a * x ^ 3 + b * x ^ 2 + c * x + d =
          a * (x + b / (3 * a)) ^ 3 + (c - b ^ 2 / (3 * a)) * x + (d - b ^ 3 * a / (3 * a) ^ 3) :=
        by field_simp; ring
      _ = a * (x + b / (3 * a)) ^ 3 + (d - (9 * a * b * c - 2 * b ^ 3) * a / (3 * a) ^ 3) := by
        simp only [hb2, hb3]; field_simp; ring
      _ = a * ((x + b / (3 * a)) ^ 3 - s ^ 3) := by rw [hs3, hq]; field_simp [h54]; ring
  have h₃ : ∀ x, a * x = 0 ↔ x = 0 := by intro x; simp [ha]
  have h₄ : ∀ x : K, x ^ 3 - s ^ 3 = (x - s) * (x - s * ω) * (x - s * ω ^ 2) := by
    intro x
    calc
      x ^ 3 - s ^ 3 = (x - s) * (x ^ 2 + x * s + s ^ 2) := by ring
      _ = (x - s) * (x ^ 2 - (ω + ω ^ 2) * x * s + (1 + ω + ω ^ 2) * x * s + s ^ 2) := by ring
      _ = (x - s) * (x ^ 2 - (ω + ω ^ 2) * x * s + ω ^ 3 * s ^ 2) := by
        rw [hω.pow_eq_one, cube_root_of_unity_sum hω]; simp
      _ = (x - s) * (x - s * ω) * (x - s * ω ^ 2) := by ring
  rw [h₁, h₂, h₃, h₄ (x + b / (3 * a))]
  ring_nf
#align theorems_100.cubic_eq_zero_iff_of_p_eq_zero Theorems100.cubic_eq_zero_iff_of_p_eq_zero

end Field

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bec6210ab3f543f469d14133abd5a25a46f48f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
