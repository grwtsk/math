# bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b63ed27-1211-6e0b-7f83-de503f0f2058",
  "kind": "theorem",
  "lexical_name": "bound",
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
  "slug": "bound--5cbf9b533dcd3ef05ed3f43a",
  "source": {
    "blob": "d910f7f98fa1877caa1d5349d4748b33d2328eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2c2dd5f359b62965088f836b8d6412881900409adc3c8e97f79f195fe9095ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cbf9b533dcd3ef05ed3f43a7b813b122eae6ae3d0a69aa9e54695e8524e81ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2c2dd5f359b62965088f836b8d6412881900409adc3c8e97f79f195fe9095ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b63ed27-1211-6e0b-7f83-de503f0f2058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound (f : E [⋀^ι]→L[𝕜] F) : ∃ (C : ℝ), 0 < C ∧ (∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) :=
  f.toContinuousMultilinearMap.bound

/-- Continuous alternating maps form a seminormed additive commutative group.
We override projection to `PseudoMetricSpace` to ensure that instances commute
in `with_reducible_and_instances`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2c2dd5f359b62965088f836b8d6412881900409adc3c8e97f79f195fe9095ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2c2dd5f359b62965088f836b8d6412881900409adc3c8e97f79f195fe9095ff.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d910f7f98fa1877caa1d5349d4748b33d2328eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
