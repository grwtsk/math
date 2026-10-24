# residualMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55c8142a8205457c14a76c7682646dd9e7cf8b3187d14bf9b71824a0ea7d7e65",
  "kind": "def",
  "lexical_name": "residualMap",
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
  "slug": "residualmap--46b787cc150f6da14dfd823a",
  "source": {
    "blob": "3711dd9971d14f4fbc154952618c057feef4811b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46b787cc150f6da14dfd823acd3c77da91b92d80b3efd0115fecc89add47ed96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55c8142a8205457c14a76c7682646dd9e7cf8b3187d14bf9b71824a0ea7d7e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residualMap (P : ProvenanceProjector G) : V →ₗ[ℝ] V :=
  LinearMap.id - P.project

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3711dd9971d14f4fbc154952618c057feef4811b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
