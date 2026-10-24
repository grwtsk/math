# totalVariation_absolutelyContinuous_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:669b2dbe-887d-8d91-7739-47f434ab12c4",
  "kind": "theorem",
  "lexical_name": "totalVariation_absolutelyContinuous_iff",
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
  "slug": "totalvariation-absolutelycontinuous-iff--c68e739278e9b6606894876a",
  "source": {
    "blob": "42e5696e56e08b68d0754ace40ce7dec5578941a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 508,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c68e739278e9b6606894876af879745c123393cfb56eb81c9ad985a12aa1bd50",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:669b2dbe-887d-8d91-7739-47f434ab12c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totalVariation_absolutelyContinuous_iff (s : SignedMeasure α) (μ : Measure α) :
    s.totalVariation ≪ μ ↔
      s.toJordanDecomposition.posPart ≪ μ ∧ s.toJordanDecomposition.negPart ≪ μ := by
  constructor <;> intro h
  · constructor
    all_goals
      refine Measure.AbsolutelyContinuous.mk fun S _ hS₂ => ?_
      have := h hS₂
      rw [totalVariation, Measure.add_apply, add_eq_zero] at this
    exacts [this.1, this.2]
  · refine Measure.AbsolutelyContinuous.mk fun S _ hS₂ => ?_
    rw [totalVariation, Measure.add_apply, h.1 hS₂, h.2 hS₂, add_zero]

-- TODO: Generalize to vector measures once total variation on vector measures is defined
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant5d050ab5ca37e00293f6e277ee052537293634f0e3bf62c81962055650a16dc0.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e5696e56e08b68d0754ace40ce7dec5578941a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
