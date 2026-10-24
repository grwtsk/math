# FiniteDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fff783f5d1f0704b71808a1d0c49cd6dbf57bc235349fd40be7e7d17e4d3a844",
  "kind": "abbrev",
  "lexical_name": "FiniteDiagram",
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
  "slug": "finitediagram--cfc288b74d3a22f90a13da2c",
  "source": {
    "blob": "5a7493df0c2cfa5c8b11d650b44b0bf08610e728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 59,
    "path": "GRWTSK/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfc288b74d3a22f90a13da2caa5de38325dc2242d3d4c773142ef7a4fa890c5d",
  "verification": {
    "reference": "docs/verification/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fff783f5d1f0704b71808a1d0c49cd6dbf57bc235349fd40be7e7d17e4d3a844`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private abbrev FiniteDiagram (J : Type u) [SmallCategory J] :=
  Σ G : Finset J, Finset (FiniteDiagramArrow G)

/-- Partial sections of a cofiltered limit are sections when restricted to
a finite subset of objects and morphisms of `J`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Konig/Variant736dad22d4bbdaa74b981c206a5d91d84967e5dc304756edd5b0ee11020cae1f.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7493df0c2cfa5c8b11d650b44b0bf08610e728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
