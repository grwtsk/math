# epi_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64f602a4a0d1c986d57eb9b0c0150cf687aae242f7647078a8b78675b074e504",
  "kind": "instance",
  "lexical_name": "epi_right",
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
  "slug": "epi-right--7b0b5dfd27d15b1226cc6621",
  "source": {
    "blob": "25adda394af29fc0be5a8d77684f8a4e8c4aaf3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b0b5dfd27d15b1226cc6621c6f05ac29d108b8272514e958d1e0faf6ed8aa10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64f602a4a0d1c986d57eb9b0c0150cf687aae242f7647078a8b78675b074e504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance epi_right [Epi sq] : Epi sq.right where
  left_cancellation {Z} φ ψ h := by
    let aux : (g.right ⟶ Z) → (g ⟶ Arrow.mk (𝟙 Z)) := fun φ =>
      { right := φ
        left := g.hom ≫ φ }
    show (aux φ).right = (aux ψ).right
    congr 1
    rw [← cancel_epi sq]
    apply CommaMorphism.ext
    · rw [Comma.comp_left, Comma.comp_left, Arrow.w_assoc, Arrow.w_assoc, h]
    · exact h
#align category_theory.arrow.epi_right CategoryTheory.Arrow.epi_right

end

/-- Given a square from an arrow `i` to an isomorphism `p`, express the source part of `sq`
in terms of the inverse of `p`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25adda394af29fc0be5a8d77684f8a4e8c4aaf3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
