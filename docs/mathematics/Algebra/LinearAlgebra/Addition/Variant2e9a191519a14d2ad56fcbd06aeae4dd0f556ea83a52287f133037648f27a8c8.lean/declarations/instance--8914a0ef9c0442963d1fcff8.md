# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01b2d11f407a717593570e88ac3e0fa395bd546736c04c50b62e314f985ac09a",
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
  "slug": "instance--8914a0ef9c0442963d1fcff8",
  "source": {
    "blob": "18df37a1959f44e5f27f35dca1f2d12e49049f71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 476,
    "path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant2e9a191519a14d2ad56fcbd06aeae4dd0f556ea83a52287f133037648f27a8c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8914a0ef9c0442963d1fcff820ccba4e4dde02f5b79a3cb0e4ea2349bc6d9ea7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Addition/Variant2e9a191519a14d2ad56fcbd06aeae4dd0f556ea83a52287f133037648f27a8c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01b2d11f407a717593570e88ac3e0fa395bd546736c04c50b62e314f985ac09a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [SMul R S] [IsScalarTower R S V] : IsScalarTower R S V⟦Γ⟧ :=
  ⟨fun r s a => by
    ext
    simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Addition/Variant2e9a191519a14d2ad56fcbd06aeae4dd0f556ea83a52287f133037648f27a8c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Addition/Variant2e9a191519a14d2ad56fcbd06aeae4dd0f556ea83a52287f133037648f27a8c8.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18df37a1959f44e5f27f35dca1f2d12e49049f71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
