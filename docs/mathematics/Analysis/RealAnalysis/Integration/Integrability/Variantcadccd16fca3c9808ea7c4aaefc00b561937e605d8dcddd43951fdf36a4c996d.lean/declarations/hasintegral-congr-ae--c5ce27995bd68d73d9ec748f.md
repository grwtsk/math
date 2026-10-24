# HasIntegral.congr_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f62a4f-64c7-f2a8-437a-b636c69135ed",
  "kind": "theorem",
  "lexical_name": "HasIntegral.congr_ae",
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
  "slug": "hasintegral-congr-ae--c5ce27995bd68d73d9ec748f",
  "source": {
    "blob": "b73046230ca8be0ac9dc15f8496fada5287e3e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ce27995bd68d73d9ec748f289279fa0fe370293c0e9f6249881221646db34d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f62a4f-64c7-f2a8-437a-b636c69135ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasIntegral.congr_ae {l : IntegrationParams} {I : Box ι} {y : E} {f g : (ι → ℝ) → E}
    {μ : Measure (ι → ℝ)} [IsLocallyFiniteMeasure μ]
    (hf : HasIntegral.{u, v, v} I l f μ.toBoxAdditive.toSMul y) (hfg : f =ᵐ[μ.restrict I] g)
    (hl : l.bRiemann = false) : HasIntegral.{u, v, v} I l g μ.toBoxAdditive.toSMul y := by
  have : g - f =ᵐ[μ.restrict I] 0 := hfg.mono fun x hx => sub_eq_zero.2 hx.symm
  simpa using hf.add (HasIntegral.of_aeEq_zero this hl)

end BoxIntegral

namespace MeasureTheory

namespace SimpleFunc

/-- A simple function is McShane integrable w.r.t. any locally finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b73046230ca8be0ac9dc15f8496fada5287e3e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
