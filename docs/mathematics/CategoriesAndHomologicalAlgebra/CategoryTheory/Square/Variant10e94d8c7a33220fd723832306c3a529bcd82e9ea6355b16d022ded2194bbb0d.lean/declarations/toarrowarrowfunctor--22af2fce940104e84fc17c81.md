# toArrowArrowFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ac10be229eceabe2418afeb87a0a9dec5c1ff4a62993494569a244721c62401",
  "kind": "def",
  "lexical_name": "toArrowArrowFunctor",
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
  "slug": "toarrowarrowfunctor--22af2fce940104e84fc17c81",
  "source": {
    "blob": "33e1fe1284ece4f6c0ea52618639cd1893874178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant10e94d8c7a33220fd723832306c3a529bcd82e9ea6355b16d022ded2194bbb0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22af2fce940104e84fc17c81a3e1e45e814e70c0396627c7a0b8e879bdd9b308",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant10e94d8c7a33220fd723832306c3a529bcd82e9ea6355b16d022ded2194bbb0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ac10be229eceabe2418afeb87a0a9dec5c1ff4a62993494569a244721c62401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toArrowArrowFunctor : Square C ⥤ Arrow (Arrow C) where
  obj sq := Arrow.mk (Arrow.homMk _ _ sq.fac : Arrow.mk sq.f₁₃ ⟶ Arrow.mk sq.f₂₄)
  map φ := Arrow.homMk (Arrow.homMk _ _ φ.comm₁₃.symm)
    (Arrow.homMk _ _ φ.comm₂₄.symm)

/-- The functor `Arrow (Arrow C) ⥤ Square C` which sends
a morphism `Arrow.mk f ⟶ Arrow.mk g` to the commutative square
with `f` on the left side and `g` on the right side. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant10e94d8c7a33220fd723832306c3a529bcd82e9ea6355b16d022ded2194bbb0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant10e94d8c7a33220fd723832306c3a529bcd82e9ea6355b16d022ded2194bbb0d.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33e1fe1284ece4f6c0ea52618639cd1893874178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
