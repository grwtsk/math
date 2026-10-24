# lieQuotientHasBracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:911f4d96ce336b4adc198ab2f5434553bcf448bf8ad7f489dac5a7ea7a8f1842",
  "kind": "instance",
  "lexical_name": "lieQuotientHasBracket",
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
  "slug": "liequotienthasbracket--d0653464a6c64c1a1ffde78a",
  "source": {
    "blob": "9743601e0cebb9ad0bfd043f7195660de91b70b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0653464a6c64c1a1ffde78ac026626a902a889177dff9e1fc1aec020ab49126",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:911f4d96ce336b4adc198ab2f5434553bcf448bf8ad7f489dac5a7ea7a8f1842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lieQuotientHasBracket : Bracket (L ⧸ I) (L ⧸ I) :=
  ⟨by
    intro x y
    apply Quotient.liftOn₂' x y fun x' y' => mk ⁅x', y'⁆
    intro x₁ x₂ y₁ y₂ h₁ h₂
    apply (Submodule.Quotient.eq I.toSubmodule).2
    rw [Submodule.quotientRel_def] at h₁ h₂
    have h : ⁅x₁, x₂⁆ - ⁅y₁, y₂⁆ = ⁅x₁, x₂ - y₂⁆ + ⁅x₁ - y₁, y₂⁆ := by
      simp [-lie_skew, sub_eq_add_neg, add_assoc]
    rw [h]
    apply Submodule.add_mem
    · apply lie_mem_right R L I x₁ (x₂ - y₂) h₂
    · apply lie_mem_left R L I (x₁ - y₁) y₂ h₁⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant706dfb81e356c95079cf3b9bd0fe5b404a21cb4c58463aed66b7a8d34559664a.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9743601e0cebb9ad0bfd043f7195660de91b70b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
