# IsSFiniteKernel.withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e661c51-d3f4-687c-b37b-055210d67959",
  "kind": "theorem",
  "lexical_name": "IsSFiniteKernel.withDensity",
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
  "slug": "issfinitekernel-withdensity--61c4be8a87df58ada72607cc",
  "source": {
    "blob": "9dcc1ebc4bb291faa18110c44a97b0eaefdb8726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c4be8a87df58ada72607cc27db6a51efa26df35985670023824017bf114cae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e661c51-d3f4-687c-b37b-055210d67959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsSFiniteKernel.withDensity (κ : kernel α β) [IsSFiniteKernel κ]
    (hf_ne_top : ∀ a b, f a b ≠ ∞) : IsSFiniteKernel (withDensity κ f) := by
  have h_eq_sum : withDensity κ f = kernel.sum fun i => withDensity (seq κ i) f := by
    rw [← withDensity_kernel_sum _ _]
    congr
    exact (kernel_sum_seq κ).symm
  rw [h_eq_sum]
  exact isSFiniteKernel_sum fun n =>
    isSFiniteKernel_withDensity_of_isFiniteKernel (seq κ n) hf_ne_top
#align probability_theory.kernel.is_s_finite_kernel.with_density ProbabilityTheory.kernel.IsSFiniteKernel.withDensity

/-- For an s-finite kernel `κ` and a function `f : α → β → ℝ≥0`, `withDensity κ f` is s-finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcc1ebc4bb291faa18110c44a97b0eaefdb8726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
