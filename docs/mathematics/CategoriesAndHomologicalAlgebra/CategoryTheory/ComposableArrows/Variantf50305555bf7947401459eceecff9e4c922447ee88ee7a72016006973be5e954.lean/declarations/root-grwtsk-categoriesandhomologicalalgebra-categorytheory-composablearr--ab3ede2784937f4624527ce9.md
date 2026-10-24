# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComposableArrows.Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.Fin.castSuccFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33d31672a59d8129ba0442b581f69b4fb1c660dd3180fdeaccfccff14bfbd928",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComposableArrows.Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.Fin.castSuccFunctor",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-composablearr--ab3ede2784937f4624527ce9",
  "source": {
    "blob": "954ec3bac47998d1bd049f5b16e628065ed79b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 466,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab3ede2784937f4624527ce92656122bb27c6b25db5d11b5555a3a7cba7b2942",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33d31672a59d8129ba0442b581f69b4fb1c660dd3180fdeaccfccff14bfbd928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComposableArrows.Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.Fin.castSuccFunctor (n : ℕ) : Fin n ⥤ Fin (n + 1) where
  obj i := i.castSucc
  map hij := hij

/-- The functor `ComposableArrows C (n + 1) ⥤ ComposableArrows C n` which forgets
the last arrow. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954ec3bac47998d1bd049f5b16e628065ed79b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
