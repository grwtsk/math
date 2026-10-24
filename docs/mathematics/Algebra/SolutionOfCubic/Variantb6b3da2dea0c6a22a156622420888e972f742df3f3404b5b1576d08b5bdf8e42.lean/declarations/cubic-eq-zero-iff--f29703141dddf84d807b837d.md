# cubic_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a374bcd-b3f6-9928-fc7b-e0b9226b0d0a",
  "kind": "theorem",
  "lexical_name": "cubic_eq_zero_iff",
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
  "slug": "cubic-eq-zero-iff--f29703141dddf84d807b837d",
  "source": {
    "blob": "762b295e629f38ece18f8adb87b8c10afd858e7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 105,
    "path": "GRWTSK/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29703141dddf84d807b837d0cdacc9d8b3bf69dd8360b10e71dc34633df35c1",
  "verification": {
    "reference": "docs/verification/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a374bcd-b3f6-9928-fc7b-e0b9226b0d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_eq_zero_iff (ha : a ≠ 0) (hω : IsPrimitiveRoot ω 3)
    (hp : p = (3 * a * c - b ^ 2) / (9 * a ^ 2)) (hp_nonzero : p ≠ 0)
    (hq : q = (9 * a * b * c - 2 * b ^ 3 - 27 * a ^ 2 * d) / (54 * a ^ 3))
    (hr : r ^ 2 = q ^ 2 + p ^ 3) (hs3 : s ^ 3 = q + r) (ht : t * s = p) (x : K) :
    a * x ^ 3 + b * x ^ 2 + c * x + d = 0 ↔
      x = s - t - b / (3 * a) ∨
        x = s * ω - t * ω ^ 2 - b / (3 * a) ∨ x = s * ω ^ 2 - t * ω - b / (3 * a) := by
  have hi2 : (2 : K) ≠ 0 := nonzero_of_invertible _
  have hi3 : (3 : K) ≠ 0 := nonzero_of_invertible _
  have h9 : (9 : K) = 3 ^ 2 := by norm_num
  have h54 : (54 : K) = 2 * 3 ^ 3 := by norm_num
  have h₁ : a * x ^ 3 + b * x ^ 2 + c * x + d = a * (x ^ 3 + b / a * x ^ 2 + c / a * x + d / a) :=
    by field_simp; ring
  have h₂ : ∀ x, a * x = 0 ↔ x = 0 := by intro x; simp [ha]
  have hp' : p = (3 * (c / a) - (b / a) ^ 2) / 9 := by field_simp [hp, h9]; ring_nf
  have hq' : q = (9 * (b / a) * (c / a) - 2 * (b / a) ^ 3 - 27 * (d / a)) / 54 := by
    field_simp [hq, h54]; ring_nf
  rw [h₁, h₂, cubic_monic_eq_zero_iff (b / a) (c / a) (d / a) hω hp' hp_nonzero hq' hr hs3 ht x]
  have h₄ :=
    calc
      b / a / 3 = b / (a * 3) := by field_simp [ha]
      _ = b / (3 * a) := by rw [mul_comm]
  rw [h₄]
#align theorems_100.cubic_eq_zero_iff Theorems100.cubic_eq_zero_iff

/-- the solution of the cubic equation when p equals zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SolutionOfCubic/Variantb6b3da2dea0c6a22a156622420888e972f742df3f3404b5b1576d08b5bdf8e42.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `762b295e629f38ece18f8adb87b8c10afd858e7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
