# representableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c703d60ca6cbe0f46949bf81d9a6364e434adf47422c0d0f8bca7bc2e04b7df",
  "kind": "def",
  "lexical_name": "representableBy",
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
  "slug": "representableby--4d0f7fee1ae6842ca9ebe932",
  "source": {
    "blob": "02b938723665cc8281c53000424d702d7504b8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d0f7fee1ae6842ca9ebe9324c736293f9c8f353873dd2a84cc780c48af9bd0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c703d60ca6cbe0f46949bf81d9a6364e434adf47422c0d0f8bca7bc2e04b7df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def representableBy :
    (Subobject.presheaf C).RepresentableBy 𝒞.Ω where
  homEquiv := {
    toFun φ := (Subobject.pullback φ).obj (Subobject.mk 𝒞.truth)
    invFun x := 𝒞.χ x.arrow
    left_inv φ := by simp
    right_inv x := by simp
  }
  homEquiv_comp _ _ := by simp [pullback_comp]

end RepresentableBy

/-! #### From representations to classifiers -/

section FromRepresentation

variable {C : Type u} [Category.{v} C] [HasPullbacks C] (Ω : C)

/-- Abbreviation to enable dot notation on the hypothesis `h` stating that the subobjects presheaf
    is representable by some object `Ω`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b938723665cc8281c53000424d702d7504b8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
