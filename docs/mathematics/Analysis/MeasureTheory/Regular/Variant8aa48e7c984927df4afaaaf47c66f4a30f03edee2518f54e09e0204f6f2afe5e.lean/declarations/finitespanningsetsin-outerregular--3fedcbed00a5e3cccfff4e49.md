# FiniteSpanningSetsIn.outerRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b81c41f-c23c-7dec-5dea-bbed08e15c8e",
  "kind": "theorem",
  "lexical_name": "FiniteSpanningSetsIn.outerRegular",
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
  "slug": "finitespanningsetsin-outerregular--3fedcbed00a5e3cccfff4e49",
  "source": {
    "blob": "f6e69fa585aaaf73abedd816c6839719a3c4b77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 450,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fedcbed00a5e3cccfff4e4927faa894ad13fd295d8156857fb2b36dc3ce0ed8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b81c41f-c23c-7dec-5dea-bbed08e15c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem FiniteSpanningSetsIn.outerRegular
    [TopologicalSpace α] [OpensMeasurableSpace α] {μ : Measure α}
    (s : μ.FiniteSpanningSetsIn { U | IsOpen U ∧ OuterRegular (μ.restrict U) }) :
    OuterRegular μ :=
  OuterRegular.of_restrict (s := fun n ↦ s.set n) (fun n ↦ (s.set_mem n).2)
    (fun n ↦ (s.set_mem n).1) s.spanning.symm.subset

namespace InnerRegularWRT

variable {p : Set α → Prop}

/-- If the restrictions of a measure to a monotone sequence of sets covering the space are
inner regular for some property `p` and all measurable sets, then the measure itself is
inner regular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variant8aa48e7c984927df4afaaaf47c66f4a30f03edee2518f54e09e0204f6f2afe5e.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6e69fa585aaaf73abedd816c6839719a3c4b77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
