# isColimitOf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7295f83fe9765464d7ecac90e1c7fa4c522428c63678e1d16fe8d26ab625816f",
  "kind": "def",
  "lexical_name": "isColimitOf'",
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
  "slug": "iscolimitof--2ae901c6096532bba989ac11",
  "source": {
    "blob": "4cebf179c791dc58c820ce80a4f7ebed23e14273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ae901c6096532bba989ac11fb91c3cb6f6d0a2efd8a3e90ffc83f1da401c19c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7295f83fe9765464d7ecac90e1c7fa4c522428c63678e1d16fe8d26ab625816f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitOf' (t : Cocone F) (hsurj : ∀ x : t.pt, ∃ i xi, x = t.ι.app i xi)
    (hinj : ∀ i x y, t.ι.app i x = t.ι.app i y → ∃ (k : _) (f : i ⟶ k), F.map f x = F.map f y) :
    IsColimit t :=
  isColimitOf _ _ hsurj (fun i j xi xj h ↦ by
    obtain ⟨k, g, hg⟩ := hinj (IsFiltered.max i j) (F.map (IsFiltered.leftToMax i j) xi)
      (F.map (IsFiltered.rightToMax i j) xj) (by simp [FunctorToTypes.naturality, h])
    exact ⟨k, IsFiltered.leftToMax i j ≫ g, IsFiltered.rightToMax i j ≫ g, by simpa using hg⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cebf179c791dc58c820ce80a4f7ebed23e14273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
