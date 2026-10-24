# toPmf_toMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d7d7955-21b4-4f3a-a4b9-d5e9577835f0",
  "kind": "theorem",
  "lexical_name": "toPmf_toMeasure",
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
  "slug": "topmf-tomeasure--668ace90d95d8b8d31497f67",
  "source": {
    "blob": "77fdf61b2768d6f60544b113b558f182754633f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 365,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668ace90d95d8b8d31497f67eb138b8d33481c4a735d824f900800e2a5915932",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d7d7955-21b4-4f3a-a4b9-d5e9577835f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPmf_toMeasure : μ.toPmf.toMeasure = μ :=
  Measure.ext fun s hs => by
    rw [μ.toPmf.toMeasure_apply s hs, ← μ.tsum_indicator_apply_singleton s hs]
    rfl
#align measure_theory.measure.to_pmf_to_measure MeasureTheory.Measure.toPmf_toMeasure

end Measure

end MeasureTheory

namespace Pmf

open MeasureTheory

/-- The measure associated to a `Pmf` by `toMeasure` is a probability measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77fdf61b2768d6f60544b113b558f182754633f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
