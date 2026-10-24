# isoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0229af7bba9985361669fb2defbc4e3f952ca49afd4dba927d66b684540f889b",
  "kind": "def",
  "lexical_name": "isoMk",
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
  "slug": "isomk--cd4aadefb387eadffe3bb4a4",
  "source": {
    "blob": "489d3e03f727738562ad8dfa4794f6d713330a10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd4aadefb387eadffe3bb4a463c76746b0cfc04806d1079ebeb156ff8567208b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0229af7bba9985361669fb2defbc4e3f952ca49afd4dba927d66b684540f889b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoMk {X Y : Comma L₁ R₁} (l : X.left ≅ Y.left) (r : X.right ≅ Y.right)
    (h : L₁.map l.hom ≫ Y.hom = X.hom ≫ R₁.map r.hom := by aesop_cat) : X ≅ Y where
  hom :=
    { left := l.hom
      right := r.hom
      w := h }
  inv :=
    { left := l.inv
      right := r.inv
      w := by
        rw [← L₁.mapIso_inv l, Iso.inv_comp_eq, L₁.mapIso_hom, ← Category.assoc, h,
          Category.assoc, ← R₁.map_comp]
        simp }
#align category_theory.comma.iso_mk CategoryTheory.Comma.isoMk

/-- A natural transformation `L₁ ⟶ L₂` induces a functor `Comma L₂ R ⥤ Comma L₁ R`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `489d3e03f727738562ad8dfa4794f6d713330a10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
