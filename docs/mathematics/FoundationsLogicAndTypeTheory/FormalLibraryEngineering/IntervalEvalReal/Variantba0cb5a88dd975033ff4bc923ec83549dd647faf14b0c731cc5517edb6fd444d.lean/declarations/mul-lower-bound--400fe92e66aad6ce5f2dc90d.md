# mul_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3ccd3ac-52a7-669b-0164-6dedcbdd53d0",
  "kind": "theorem",
  "lexical_name": "mul_lower_bound",
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
  "slug": "mul-lower-bound--400fe92e66aad6ce5f2dc90d",
  "source": {
    "blob": "c2ed4b2f53c2bd84851c3d47a5227de5dc022020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:400fe92e66aad6ce5f2dc90df1402bc729830946e349d55ec170b94de57f0af0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3ccd3ac-52a7-669b-0164-6dedcbdd53d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mul_lower_bound {x y a₁ a₂ b₁ b₂ : ℝ}
    (ha : a₁ ≤ x ∧ x ≤ a₂) (hb : b₁ ≤ y ∧ y ≤ b₂) :
    min (min (a₁ * b₁) (a₁ * b₂)) (min (a₂ * b₁) (a₂ * b₂)) ≤ x * y := by
  have h1 := (mul_mem_endpoints_left (y := y) ha).1
  by_cases! hcmp : a₁ * y ≤ a₂ * y
  · rw [min_eq_left hcmp] at h1
    have h2 := (mul_mem_endpoints_right hb (x := a₁)).1
    calc min (min (a₁ * b₁) (a₁ * b₂)) (min (a₂ * b₁) (a₂ * b₂))
        ≤ min (a₁ * b₁) (a₁ * b₂) := min_le_left _ _
      _ ≤ a₁ * y := h2
      _ ≤ x * y := h1
  · rw [min_eq_right (le_of_lt hcmp)] at h1
    have h2 := (mul_mem_endpoints_right hb (x := a₂)).1
    calc min (min (a₁ * b₁) (a₁ * b₂)) (min (a₂ * b₁) (a₂ * b₂))
        ≤ min (a₂ * b₁) (a₂ * b₂) := min_le_right _ _
      _ ≤ a₂ * y := h2
      _ ≤ x * y := h1

/-- Upper bound: xy ≤ max of corner products -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2ed4b2f53c2bd84851c3d47a5227de5dc022020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
