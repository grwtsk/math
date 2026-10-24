# residual_orthogonal_project

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f0b4e0-5730-ee7c-b627-571ef12a270f",
  "kind": "theorem",
  "lexical_name": "residual_orthogonal_project",
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
  "slug": "residual-orthogonal-project--a5a1efd8ce57aea61f3dc8ee",
  "source": {
    "blob": "d47ce7c3f3e75e6e7aaa1871def70edca7ebfc33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a1efd8ce57aea61f3dc8ee2d079b2b8c50701f77569c001ab9d673d2873896",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8f0b4e0-5730-ee7c-b627-571ef12a270f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_orthogonal_project (P : ProvenanceProjector G) (x y : V) :
    G.form (P.residualMap x) (P.project y) = 0 := by
  rw [G.symmetric]
  exact P.project_orthogonal_residual y x

/-- The positive form splits exactly into provenance and autonomous residual
energies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d47ce7c3f3e75e6e7aaa1871def70edca7ebfc33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
