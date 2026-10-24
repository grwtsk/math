# adjoint_apply_of_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3b6fd5f-cbd0-c7dd-612f-1c365cf66014",
  "kind": "theorem",
  "lexical_name": "adjoint_apply_of_dense",
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
  "slug": "adjoint-apply-of-dense--33240aefcd552eccefd9f63a",
  "source": {
    "blob": "50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33240aefcd552eccefd9f63af73adc18ce620143888d8aebac0c718d15417198",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b6fd5f-cbd0-c7dd-612f-1c365cf66014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoint_apply_of_dense (y : T†.domain) : T† y = adjointAux hT y := by
  classical
  change (if hT : Dense (T.domain : Set E) then adjointAux hT else 0) y = _
  simp only [hT, dite_eq_left]

include hT in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variant946206e3b9a95f9726e1e87eefa3b9382efa10c3be68ec7e246281713427920d.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f779fc52ac4d50d98dec46ec3cbd4bdd3108d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
