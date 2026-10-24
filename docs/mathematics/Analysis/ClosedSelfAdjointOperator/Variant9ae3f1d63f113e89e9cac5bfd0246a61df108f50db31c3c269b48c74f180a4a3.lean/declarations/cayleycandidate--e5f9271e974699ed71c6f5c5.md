# cayleyCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e2ccd52a665bfb34382115947be5eff9dd23084766cd203cf3825e45271c941",
  "kind": "def",
  "lexical_name": "cayleyCandidate",
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
  "slug": "cayleycandidate--e5f9271e974699ed71c6f5c5",
  "source": {
    "blob": "2b58eb4b6396c1cc499eaa24df6be77b3cb75d69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 81,
    "path": "GRWTSK/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5f9271e974699ed71c6f5c5a9e6f92a9dc15703adc2b17e6b07cf453c5b2d57",
  "verification": {
    "reference": "docs/verification/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e2ccd52a665bfb34382115947be5eff9dd23084766cd203cf3825e45271c941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cayleyCandidate (A : ClosedSelfAdjointOperator H)
    (R : ResolventAt A (-Complex.I)) : H →L[ℂ] H :=
  1 - (2 * Complex.I) • R.inverse

@[surface_novel, surface_published, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ClosedSelfAdjointOperator/Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b58eb4b6396c1cc499eaa24df6be77b3cb75d69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
