# LeftResolution.opFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4d456a955e9c7ac5f8727a09244ff8f35f972d8b666404089e0651e50e042e3",
  "kind": "def",
  "lexical_name": "LeftResolution.opFunctor",
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
  "slug": "leftresolution-opfunctor--9300ae0c2f010fa1f457c9ed",
  "source": {
    "blob": "dfe745aa46c4aa1da472b26268cb111713a380de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9300ae0c2f010fa1f457c9ed635f1639515b727ada2e91027b675019f755072b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4d456a955e9c7ac5f8727a09244ff8f35f972d8b666404089e0651e50e042e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftResolution.opFunctor (X₂ : C₂) [W₁.IsMultiplicative] :
    (Φ.LeftResolution X₂)ᵒᵖ ⥤ Φ.op.RightResolution (Opposite.op X₂) where
  obj L := L.unop.op
  map φ :=
    { f := φ.unop.f.op
      hf := φ.unop.hf
      comm := Quiver.Hom.unop_inj φ.unop.comm }

/-- The functor `(Φ.op.RightResolution X₂)ᵒᵖ ⥤ Φ.LeftResolution X₂.unop`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe745aa46c4aa1da472b26268cb111713a380de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
