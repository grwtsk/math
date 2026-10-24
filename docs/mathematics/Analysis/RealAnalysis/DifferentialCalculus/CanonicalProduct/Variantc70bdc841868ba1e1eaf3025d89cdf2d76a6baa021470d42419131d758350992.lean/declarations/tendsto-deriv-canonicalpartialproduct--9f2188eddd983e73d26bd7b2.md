# tendsto_deriv_canonicalPartialProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4134ef3-ae39-f4eb-20db-d59b32ecc7da",
  "kind": "theorem",
  "lexical_name": "tendsto_deriv_canonicalPartialProduct",
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
  "slug": "tendsto-deriv-canonicalpartialproduct--9f2188eddd983e73d26bd7b2",
  "source": {
    "blob": "dd51e178629114f53ab5abb18060d931b1bade00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 206,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2188eddd983e73d26bd7b286c411c3a27007d505f39b3e6d62e51fe5e352f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4134ef3-ae39-f4eb-20db-d59b32ecc7da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tendsto_deriv_canonicalPartialProduct {m : ℕ} {a : ℕ → ℂ}
    (h_sum : Summable (fun n : ℕ => ‖a n‖⁻¹ ^ (m + 1))) (h_nonzero : ∀ n, a n ≠ 0) (n : ℕ) :
    Tendsto (fun N ↦ deriv (fun z ↦ ∏ k ∈ Finset.range N, weierstrassFactor m (z / a k)) (a n))
      Filter.atTop
      (𝓝 (deriv (canonicalProduct m a) (a n))) := by
  have hloc :=
    HasProdLocallyUniformlyOn.tendstoLocallyUniformlyOn_finsetRange
      (hasProdLocallyUniformlyOn_weierstrassFactor_div_of_summable_inv_pow
        (m := m) (a := a) h_sum h_nonzero)
  have hpartial :
      ∀ᶠ N in Filter.atTop,
        DifferentiableOn ℂ
          (fun z ↦ ∏ k ∈ Finset.range N, weierstrassFactor m (z / a k)) Set.univ := by
    filter_upwards with N
    exact differentiableOn_canonicalPartialProduct m a N
  simpa [canonicalProduct] using
    (hloc.deriv hpartial isOpen_univ).tendsto_at (by simp)

/-- The zero set of the canonical product is exactly `Set.range a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd51e178629114f53ab5abb18060d931b1bade00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
