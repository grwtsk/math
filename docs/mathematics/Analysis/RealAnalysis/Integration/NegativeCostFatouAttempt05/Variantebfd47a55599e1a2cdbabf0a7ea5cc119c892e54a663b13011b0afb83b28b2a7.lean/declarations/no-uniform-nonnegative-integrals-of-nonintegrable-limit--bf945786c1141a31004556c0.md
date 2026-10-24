# no_uniform_nonnegative_integrals_of_nonintegrable_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed854e2e-d440-ef1c-0149-2a90817e9ddb",
  "kind": "theorem",
  "lexical_name": "no_uniform_nonnegative_integrals_of_nonintegrable_limit",
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
  "slug": "no-uniform-nonnegative-integrals-of-nonintegrable-limit--bf945786c1141a31004556c0",
  "source": {
    "blob": "97d4ea8e6fb82c6f6e5649a012e0be33ab5fdd09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variantebfd47a55599e1a2cdbabf0a7ea5cc119c892e54a663b13011b0afb83b28b2a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf945786c1141a31004556c062d2b0accdc1aa95f4bc26c743d17c40b41cb4a0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variantebfd47a55599e1a2cdbabf0a7ea5cc119c892e54a663b13011b0afb83b28b2a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed854e2e-d440-ef1c-0149-2a90817e9ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_nonnegative_integrals_of_nonintegrable_limit
    {G : ℕ → ℝ → ℝ} {f : ℝ → ℝ} {μ : Measure ℝ}
    (hi : ∀ n, Integrable (G n) μ)
    (hn : ∀ n, ∀ᵐ x ∂μ, 0 ≤ G n x)
    (hl : ∀ᵐ x ∂μ, Tendsto (fun n => G n x) atTop (𝓝 (f x)))
    (hf : ¬ Integrable f μ) :
    ¬ ∃ B : ℝ, ∀ n, (∫ x, G n x ∂μ) ≤ B := by
  rintro ⟨B,hB⟩
  exact hf (integrable_limit_of_nonnegative_uniform_integrals hi hn hB hl)

/-- A positive lower bound on an infinite positive-axis tail excludes genuine L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variantebfd47a55599e1a2cdbabf0a7ea5cc119c892e54a663b13011b0afb83b28b2a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt05/Variantebfd47a55599e1a2cdbabf0a7ea5cc119c892e54a663b13011b0afb83b28b2a7.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d4ea8e6fb82c6f6e5649a012e0be33ab5fdd09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
