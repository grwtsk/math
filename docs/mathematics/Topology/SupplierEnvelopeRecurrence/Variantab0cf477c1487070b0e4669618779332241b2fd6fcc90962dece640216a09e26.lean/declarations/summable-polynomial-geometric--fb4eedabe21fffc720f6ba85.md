# summable_polynomial_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d601e9f9-7fc6-f605-2f26-26862bb6d566",
  "kind": "theorem",
  "lexical_name": "summable_polynomial_geometric",
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
  "slug": "summable-polynomial-geometric--fb4eedabe21fffc720f6ba85",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 339,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb4eedabe21fffc720f6ba857b36359f817c929daee5d20c4b8cca9c21c4a546",
  "verification": {
    "reference": "docs/verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d601e9f9-7fc6-f605-2f26-26862bb6d566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_polynomial_geometric {ρ : ℝ} (hρ₀ : 0 < ρ) (hρ : ρ < 1) (q : ℕ) :
    Summable (fun j : ℕ => ρ ^ j * (1 + (j : ℝ)) ^ q) := by
  have hnorm : ‖ρ‖ < 1 := by simpa [Real.norm_eq_abs, abs_of_pos hρ₀] using hρ
  have hbase := summable_pow_mul_geometric_of_norm_lt_one q hnorm
  have hshift : Summable (fun j : ℕ => ((j + 1 : ℕ) : ℝ) ^ q * ρ ^ (j + 1)) :=
    (summable_nat_add_iff 1).mpr hbase
  apply (hshift.div_const ρ).congr
  intro j
  simp only [Nat.cast_add, Nat.cast_one, pow_succ]
  rw [← mul_assoc, mul_div_cancel_right₀ _ hρ₀.ne']
  ring

/-- The accumulated polynomial cost is bounded uniformly at every real
starting time. Geometric compression is confined to the additive cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
