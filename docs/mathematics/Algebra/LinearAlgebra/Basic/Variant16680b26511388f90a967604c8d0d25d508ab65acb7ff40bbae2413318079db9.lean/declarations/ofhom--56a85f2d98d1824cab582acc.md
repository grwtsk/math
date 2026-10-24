# ofHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6973c861043053622722556f9c50f9f0d27d63dd2c180bd5f1b05ddffb5ae35c",
  "kind": "def",
  "lexical_name": "ofHom",
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
  "slug": "ofhom--56a85f2d98d1824cab582acc",
  "source": {
    "blob": "2b2fac58019452528badbce552d8c63318a9254f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 168,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56a85f2d98d1824cab582acc58bde6170de38566af157f415b8c26bebe59fd1b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6973c861043053622722556f9c50f9f0d27d63dd2c180bd5f1b05ddffb5ae35c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofHom {R : Type u} [Ring R] {X Y : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y]
    [Module R Y] (f : X →ₗ[R] Y) : of R X ⟶ of R Y :=
  f
#align Module.of_hom ModuleCat.ofHom

@[simp 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant16680b26511388f90a967604c8d0d25d508ab65acb7ff40bbae2413318079db9.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2fac58019452528badbce552d8c63318a9254f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
