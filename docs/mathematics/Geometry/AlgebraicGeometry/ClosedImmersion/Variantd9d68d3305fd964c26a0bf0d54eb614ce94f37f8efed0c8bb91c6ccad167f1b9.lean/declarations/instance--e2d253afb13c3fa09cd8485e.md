# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fa2aaf7c2245f76c4e1ed7ccbaed0cf5642bac5337e3d6eb60319112d3cae35",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e2d253afb13c3fa09cd8485e",
  "source": {
    "blob": "810bc26c212f7c9ed955175928497008c0b9c6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 88,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2d253afb13c3fa09cd8485ea3c48d8358db7a6b6562f1da9c5936852ec3e262",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fa2aaf7c2245f76c4e1ed7ccbaed0cf5642bac5337e3d6eb60319112d3cae35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MorphismProperty.IsMultiplicative @IsClosedImmersion where
  id_mem _ := inferInstance
  comp_mem _ _ hf hg := ⟨hg.base_closed.comp hf.base_closed⟩

/-- Composition of closed immersions is a closed immersion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810bc26c212f7c9ed955175928497008c0b9c6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
