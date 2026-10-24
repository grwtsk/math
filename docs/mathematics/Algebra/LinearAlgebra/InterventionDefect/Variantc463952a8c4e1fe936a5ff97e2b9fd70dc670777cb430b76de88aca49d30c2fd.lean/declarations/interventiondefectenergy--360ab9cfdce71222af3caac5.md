# interventionDefectEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d465eb52a449bf40a5b1ee23156f518d9f8d4f55c7d24b261e340f02a35083df",
  "kind": "def",
  "lexical_name": "interventionDefectEnergy",
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
  "slug": "interventiondefectenergy--360ab9cfdce71222af3caac5",
  "source": {
    "blob": "644d44ca969e9e34d21dfd82538241ed110afcf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/InterventionDefect/Variantc463952a8c4e1fe936a5ff97e2b9fd70dc670777cb430b76de88aca49d30c2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:360ab9cfdce71222af3caac5e5ed08931e2fbc5d32975e6426b9d4eb9c74e7d4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InterventionDefect/Variantc463952a8c4e1fe936a5ff97e2b9fd70dc670777cb430b76de88aca49d30c2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d465eb52a449bf40a5b1ee23156f518d9f8d4f55c7d24b261e340f02a35083df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def interventionDefectEnergy
    (I : LinearIntervention X V) (x : X) : ℝ :=
  (C.interventionDefectGeometry I).form x x

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InterventionDefect/Variantc463952a8c4e1fe936a5ff97e2b9fd70dc670777cb430b76de88aca49d30c2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InterventionDefect/Variantc463952a8c4e1fe936a5ff97e2b9fd70dc670777cb430b76de88aca49d30c2fd.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644d44ca969e9e34d21dfd82538241ed110afcf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
