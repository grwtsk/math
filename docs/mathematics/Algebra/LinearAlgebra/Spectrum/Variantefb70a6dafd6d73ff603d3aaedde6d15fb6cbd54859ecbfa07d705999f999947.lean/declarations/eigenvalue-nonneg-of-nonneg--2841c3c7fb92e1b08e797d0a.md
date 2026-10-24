# eigenvalue_nonneg_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:024c4a41-01a0-ba39-db8f-7dd7568c2912",
  "kind": "theorem",
  "lexical_name": "eigenvalue_nonneg_of_nonneg",
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
  "slug": "eigenvalue-nonneg-of-nonneg--2841c3c7fb92e1b08e797d0a",
  "source": {
    "blob": "5d0619128c3d660acee3b829519fbf12d8e1a748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 417,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2841c3c7fb92e1b08e797d0aa57a31222eb05797a14dfa8bc3dd62636cd20bac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:024c4a41-01a0-ba39-db8f-7dd7568c2912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvalue_nonneg_of_nonneg {μ : ℝ} {T : E →ₗ[𝕜] E} (hμ : HasEigenvalue T μ)
    (hnn : ∀ x, 0 ≤ RCLike.re ⟪x, T x⟫) : 0 ≤ μ := by
  obtain ⟨v, hv₁, hv₂⟩ := hμ.exists_hasEigenvector
  have hpos : 0 < ‖v‖ ^ 2 := by simpa only [sq_pos_iff, norm_ne_zero_iff] using hv₂
  simp only [mem_genEigenspace_one] at hv₁
  have : RCLike.re ⟪v, T v⟫ = μ * ‖v‖ ^ 2 :=
    mod_cast congr_arg RCLike.re (inner_product_apply_eigenvector hv₁)
  exact (mul_nonneg_iff_of_pos_right hpos).mp (this ▸ hnn v)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0619128c3d660acee3b829519fbf12d8e1a748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
