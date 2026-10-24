# summable_norm_of_eventual_geometric_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:254de669-24dd-4b55-4cd4-b70f9b5ce0ed",
  "kind": "theorem",
  "lexical_name": "summable_norm_of_eventual_geometric_bound",
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
  "slug": "summable-norm-of-eventual-geometric-bound--b7a9c972d871183cc8afd9bf",
  "source": {
    "blob": "c3b64a1606dbd10952c6425793c3381bb24c38da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 48,
    "path": "GRWTSK/Analysis/MellinTransform/DyadicBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7a9c972d871183cc8afd9bfde4996247360d12e4ba6708456fa4ffca94b05a4",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:254de669-24dd-4b55-4cd4-b70f9b5ce0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_norm_of_eventual_geometric_bound
    (B : ℕ → ℂ) (C a : ℝ) (hC : 0≤C) (ha : 0<a) (n₀ : ℕ)
    (hbound : ∀ n≥n₀, ‖B n‖≤C*Real.exp (-a*(n:ℝ))) :
    Summable (fun n ↦ ‖B n‖) := by
  apply (summable_nat_add_iff n₀).1
  apply Summable.of_nonneg_of_le (f := fun n : ℕ ↦ C*Real.exp (-a*(n:ℝ)))
    (fun n ↦ norm_nonneg _)
  · intro n
    calc
      ‖B (n+n₀)‖ ≤ C*Real.exp (-a*((n+n₀:ℕ):ℝ)) := hbound _ (by omega)
      _ ≤ C*Real.exp (-a*(n:ℝ)) := by
        apply mul_le_mul_of_nonneg_left _ hC
        apply Real.exp_le_exp.mpr
        push_cast
        nlinarith [Nat.cast_nonneg (α := ℝ) n₀]
  · exact summable_exponential_tail C a ha

/-- Concrete dyadic power written in logarithmic coordinates; no branch choice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/DyadicBounds.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3b64a1606dbd10952c6425793c3381bb24c38da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
