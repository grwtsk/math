# continuous_linear_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49686758-7c1e-ca6e-2a70-f7d980c0f439",
  "kind": "theorem",
  "lexical_name": "continuous_linear_iff",
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
  "slug": "continuous-linear-iff--2be1044daa7dcc0f798f874e",
  "source": {
    "blob": "2daf83aae77c216d122ac4b5c300878d3d06bf95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2be1044daa7dcc0f798f874e1b73c3457e2909d9f4d77f3371731ff189e726ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49686758-7c1e-ca6e-2a70-f7d980c0f439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_linear_iff {f : P →ᵃ[R] Q} : Continuous f.linear ↔ Continuous f := by
  simp only [linear_decomp, Homeomorph.comp_continuous_iff, Homeomorph.comp_continuous_iff']

/-- If `f` is an affine map, then its linear part is an open map iff `f` is an open map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Affine/Variantab2dfdf5f86566f0294a7b4b481f622ad85e05f4d0960bb08e0ecf1d39b82f45.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2daf83aae77c216d122ac4b5c300878d3d06bf95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
