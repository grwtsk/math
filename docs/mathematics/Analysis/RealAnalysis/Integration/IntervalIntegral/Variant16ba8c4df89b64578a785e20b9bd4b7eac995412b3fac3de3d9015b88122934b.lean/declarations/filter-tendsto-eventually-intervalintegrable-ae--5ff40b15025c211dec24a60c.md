# Filter.Tendsto.eventually_intervalIntegrable_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99e47dc0-db45-6ee6-73e9-b288be614fd2",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.eventually_intervalIntegrable_ae",
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
  "slug": "filter-tendsto-eventually-intervalintegrable-ae--5ff40b15025c211dec24a60c",
  "source": {
    "blob": "1ae36b1e8d39aa18e52042b54d92c73a6275ad51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 418,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff40b15025c211dec24a60c875da5dd61b97f66f1645dac52cc3d40014cd60c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99e47dc0-db45-6ee6-73e9-b288be614fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.eventually_intervalIntegrable_ae {f : ℝ → E} {μ : Measure ℝ}
    {l l' : Filter ℝ} (hfm : StronglyMeasurableAtFilter f l' μ) [TendstoIxxClass Ioc l l']
    [IsMeasurablyGenerated l'] (hμ : μ.FiniteAtFilter l') {c : E} (hf : Tendsto f (l' ⊓ μ.ae) (𝓝 c))
    {u v : ι → ℝ} {lt : Filter ι} (hu : Tendsto u lt l) (hv : Tendsto v lt l) :
    ∀ᶠ t in lt, IntervalIntegrable f μ (u t) (v t) :=
  have := (hf.integrableAtFilter_ae hfm hμ).eventually
  ((hu.Ioc hv).eventually this).and <| (hv.Ioc hu).eventually this
#align filter.tendsto.eventually_interval_integrable_ae Filter.Tendsto.eventually_intervalIntegrable_ae

/-- Let `l'` be a measurably generated filter; let `l` be a of filter such that each `s ∈ l'`
eventually includes `Ioc u v` as both `u` and `v` tend to `l`. Let `μ` be a measure finite at `l'`.

Suppose that `f : ℝ → E` has a finite limit at `l`. Then `f` is interval integrable on `u..v`
provided that both `u` and `v` tend to `l`.

Typeclass instances allow Lean to find `l'` based on `l` but not vice versa, so
`apply tendsto.eventually_interval_integrable_ae` will generate goals `Filter ℝ` and
`tendsto_Ixx_class Ioc ?m_1 l'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae36b1e8d39aa18e52042b54d92c73a6275ad51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
