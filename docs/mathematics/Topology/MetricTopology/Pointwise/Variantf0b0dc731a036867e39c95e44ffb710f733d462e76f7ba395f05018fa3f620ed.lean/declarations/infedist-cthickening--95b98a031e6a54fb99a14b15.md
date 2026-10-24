# infEdist_cthickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6525eb6-6061-019e-27c7-d86707cc430e",
  "kind": "theorem",
  "lexical_name": "infEdist_cthickening",
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
  "slug": "infedist-cthickening--95b98a031e6a54fb99a14b15",
  "source": {
    "blob": "8d5475f5b8aa812720c499ff5b0479122ce5f9ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 300,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95b98a031e6a54fb99a14b15210dfdccdcc33788e264011dd4e21cd5c66b4edc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6525eb6-6061-019e-27c7-d86707cc430e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infEdist_cthickening (δ : ℝ) (s : Set E) (x : E) :
    infEdist x (cthickening δ s) = infEdist x s - ENNReal.ofReal δ := by
  obtain hδ | hδ := le_or_lt δ 0
  · rw [cthickening_of_nonpos hδ, infEdist_closure, ofReal_of_nonpos hδ, tsub_zero]
  · rw [← closure_thickening hδ, infEdist_closure, infEdist_thickening hδ]
#align inf_edist_cthickening infEdist_cthickening

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5475f5b8aa812720c499ff5b0479122ce5f9ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
