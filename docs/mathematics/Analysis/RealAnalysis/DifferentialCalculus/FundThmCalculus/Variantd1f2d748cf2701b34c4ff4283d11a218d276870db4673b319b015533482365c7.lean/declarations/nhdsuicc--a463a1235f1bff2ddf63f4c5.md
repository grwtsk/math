# nhdsUIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c5fba085b5fc9b318c6ff89b19c4faea3eae4ff58ec557fc89d4941420c8718",
  "kind": "instance",
  "lexical_name": "nhdsUIcc",
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
  "slug": "nhdsuicc--a463a1235f1bff2ddf63f4c5",
  "source": {
    "blob": "fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a463a1235f1bff2ddf63f4c5dde43e6b8e1f12a810a85847eca9cef8ec483a98",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c5fba085b5fc9b318c6ff89b19c4faea3eae4ff58ec557fc89d4941420c8718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nhdsUIcc {x a b : ℝ} [h : Fact (x ∈ [[a, b]])] :
    FTCFilter x (𝓝[[[a, b]]] x) (𝓝[[[a, b]]] x) :=
  .nhdsIcc (h := h)

end FTCFilter

section

variable {f : ℝ → E} {a b : ℝ} {c ca cb : E} {l l' la la' lb lb' : Filter ℝ} {lt : Filter ι}
  {μ : Measure ℝ} {u v ua va ub vb : ι → ℝ}

/-- **Fundamental theorem of calculus-1**, local version for any measure.
Let filters `l` and `l'` be related by `TendstoIxxClass Ioc`.
If `f` has a finite limit `c` at `l' ⊓ ae μ`, where `μ` is a measure
finite at `l'`, then `∫ x in u..v, f x ∂μ = ∫ x in u..v, c ∂μ + o(∫ x in u..v, 1 ∂μ)` as both
`u` and `v` tend to `l`.

See also `measure_integral_sub_linear_isLittleO_of_tendsto_ae` for a version assuming
`[intervalIntegral.FTCFilter a l l']` and `[MeasureTheory.IsLocallyFiniteMeasure μ]`. If `l` is one
of `𝓝[≥] a`, `𝓝[≤] a`, `𝓝 a`, then it's easier to apply the non-primed version.  The primed version
also works, e.g., for `l = l' = atTop`.

We use integrals of constants instead of measures because this way it is easier to formulate
a statement that works in both cases `u ≤ v` and `v ≤ u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
