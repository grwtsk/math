# chainComplexMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0b61dbc2d478b87368a01635c391beb48a64c9be405e17f4c16fd7166520d60",
  "kind": "abbrev",
  "lexical_name": "chainComplexMap",
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
  "slug": "chaincomplexmap--eb9bbf36df49801dbee8ee70",
  "source": {
    "blob": "93c5c477d3afa4b973820a29ae5c54e7b15f44cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 206,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb9bbf36df49801dbee8ee70b10718fce479d0ecf44ee5564eb928f9d2322608",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0b61dbc2d478b87368a01635c391beb48a64c9be405e17f4c16fd7166520d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev chainComplexMap : P.chainComplex R ⟶ P'.chainComplex R :=
  ((SSetPair.chainComplexFunctor C).obj R).map f

/-- Given a pair of simplicial sets `i : X ⟶ Y` (with `i` a monomorphism),
this is the morphism from the chain complex of `Y` to the
chain complex of the pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Relative/Variantda3d1f8efab6d5c5978e74d6de2f89b23c1afc75554e1b2b2cc3de5a719aef3e.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c5c477d3afa4b973820a29ae5c54e7b15f44cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
