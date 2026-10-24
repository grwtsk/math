# indicatorConstLp_disjoint_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d7b59c2-aeb5-6f36-420a-a81c5eda293b",
  "kind": "theorem",
  "lexical_name": "indicatorConstLp_disjoint_union",
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
  "slug": "indicatorconstlp-disjoint-union--8cbd2f61ef3b57be616d0348",
  "source": {
    "blob": "a0838aa4668972c6683ee80323bb6489a4a3732f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cbd2f61ef3b57be616d0348f4d62b8a6e87d2d6ed5a7116ca21263f6ed7babc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d7b59c2-aeb5-6f36-420a-a81c5eda293b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicatorConstLp_disjoint_union {s t : Set α} (hs : MeasurableSet s) (ht : MeasurableSet t)
    (hμs : μ s ≠ ∞) (hμt : μ t ≠ ∞) (hst : Disjoint s t) (c : E) :
    indicatorConstLp p (hs.union ht) (by finiteness) c =
      indicatorConstLp p hs hμs c + indicatorConstLp p ht hμt c := by
  ext1
  grw [Lp.coeFn_add, indicatorConstLp_coeFn, indicatorConstLp_coeFn, indicatorConstLp_coeFn]
  rw [Set.indicator_union_of_disjoint hst, Pi.add_def]
end IndicatorConstLp

section const

variable (μ p)
variable [IsFiniteMeasure μ] (c : E)

/-- Constant function as an element of `MeasureTheory.Lp` for a finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0838aa4668972c6683ee80323bb6489a4a3732f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
