# basicOpen_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca0011ea-4335-84da-a922-12c262992047",
  "kind": "theorem",
  "lexical_name": "basicOpen_le",
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
  "slug": "basicopen-le--b10c4a2adad523d6dca81b4a",
  "source": {
    "blob": "2e2437950591d8597a199a7ff6dcee555cb86b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 176,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b10c4a2adad523d6dca81b4afb7b9496540a6335fab166ec229caa831ecb9a2a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca0011ea-4335-84da-a922-12c262992047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_le {U : Opens X} (f : X.presheaf.obj (op U)) : X.basicOpen f ≤ U := by
  rintro _ ⟨x, _, rfl⟩; exact x.2
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.RingedSpace.basic_open_le AlgebraicGeometry.RingedSpace.basicOpen_le

/-- The restriction of a section `f` to the basic open of `f` is a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RingedSpace/Variant0d7e4480eb735ec32d377c3b715aa3cce7b5655b937ed392c862ea6e8ae38f0c.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2437950591d8597a199a7ff6dcee555cb86b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
