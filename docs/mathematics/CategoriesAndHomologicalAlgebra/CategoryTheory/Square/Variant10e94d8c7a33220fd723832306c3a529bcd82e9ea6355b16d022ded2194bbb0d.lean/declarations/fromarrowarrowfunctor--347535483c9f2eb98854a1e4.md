# fromArrowArrowFunctor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3c4e73eabb8e2b9853c64e7d2e8047edd96677ac8b94c6a70a87610ab8dfd87",
  "kind": "def",
  "lexical_name": "fromArrowArrowFunctor'",
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
  "slug": "fromarrowarrowfunctor--347535483c9f2eb98854a1e4",
  "source": {
    "blob": "33e1fe1284ece4f6c0ea52618639cd1893874178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant10e94d8c7a33220fd723832306c3a529bcd82e9ea6355b16d022ded2194bbb0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:347535483c9f2eb98854a1e4f0c52ef7ae83cd10076d48049546b83b6dfe6c2c",
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

Occurrence: `declaration:a3c4e73eabb8e2b9853c64e7d2e8047edd96677ac8b94c6a70a87610ab8dfd87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromArrowArrowFunctor' : Arrow (Arrow C) ⥤ Square C where
  obj f := { fac := f.hom.w.symm, .. }
  map φ :=
    { τ₁ := φ.left.left
      τ₂ := φ.left.right
      τ₃ := φ.right.left
      τ₄ := φ.right.right
      comm₁₂ := φ.left.w.symm
      comm₁₃ := Arrow.leftFunc.congr_map φ.w.symm
      comm₂₄ := Arrow.rightFunc.congr_map φ.w.symm
      comm₃₄ := φ.right.w.symm }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The equivalence `Square C ≌ Arrow (Arrow C)` which sends a
commutative square `sq` to the obvious arrow from the top morphism of `sq`
to the bottom morphism of `sq`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant10e94d8c7a33220fd723832306c3a529bcd82e9ea6355b16d022ded2194bbb0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant10e94d8c7a33220fd723832306c3a529bcd82e9ea6355b16d022ded2194bbb0d.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33e1fe1284ece4f6c0ea52618639cd1893874178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
