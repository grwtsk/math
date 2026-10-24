# measurableSet_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11ca29c4-cc9e-c7f6-016b-e9971b246ced",
  "kind": "theorem",
  "lexical_name": "measurableSet_graph",
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
  "slug": "measurableset-graph--99ed7b0c972f53a14a22e309",
  "source": {
    "blob": "c2fc3e1be0ac1e5d3b364d72e0ff978c6dfdb529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 535,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ed7b0c972f53a14a22e30946f7430309b4d957d8c21d4e7a7c8cb1eba0fdb1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11ca29c4-cc9e-c7f6-016b-e9971b246ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_graph (hf : Measurable f) : MeasurableSet { p : α × ℝ | p.snd = f p.fst } :=
  by simpa using measurableSet_region_between_cc hf hf MeasurableSet.univ
#align measurable_set_graph measurableSet_graph

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2fc3e1be0ac1e5d3b364d72e0ff978c6dfdb529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
