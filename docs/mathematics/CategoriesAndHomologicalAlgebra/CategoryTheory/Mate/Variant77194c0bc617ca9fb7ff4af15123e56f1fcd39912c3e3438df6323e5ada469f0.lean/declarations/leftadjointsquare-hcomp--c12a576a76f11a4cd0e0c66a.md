# leftAdjointSquare.hcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7f8c0327c9eabf557dda0787f9ba7e1e5db0a75ed5d45a7a472e25dc4b04966",
  "kind": "def",
  "lexical_name": "leftAdjointSquare.hcomp",
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
  "slug": "leftadjointsquare-hcomp--c12a576a76f11a4cd0e0c66a",
  "source": {
    "blob": "2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c12a576a76f11a4cd0e0c66a2329266cc3f7e1dad3b87f2328d95f3908aadbbf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7f8c0327c9eabf557dda0787f9ba7e1e5db0a75ed5d45a7a472e25dc4b04966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftAdjointSquare.hcomp (α : g ≫ l₂ ⟶ l₁ ≫ h) (β : h ≫ l₄ ⟶ l₃ ≫ k) :
    g ≫ (l₂ ≫ l₄) ⟶ (l₁ ≫ l₃) ≫ k :=
  (α_ _ _ _).inv ≫ α ▷ l₄ ≫ (α_ _ _ _).hom ≫ l₁ ◁ β ≫ (α_ _ _ _).inv

/-- Squares between right adjoints can be composed "horizontally" by pasting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
