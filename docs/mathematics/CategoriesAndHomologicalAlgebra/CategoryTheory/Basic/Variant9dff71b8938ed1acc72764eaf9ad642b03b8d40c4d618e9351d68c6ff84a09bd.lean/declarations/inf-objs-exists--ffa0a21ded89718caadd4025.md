# inf_objs_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d20e1a23-3566-4140-91dd-04094fb8c8c0",
  "kind": "theorem",
  "lexical_name": "inf_objs_exists",
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
  "slug": "inf-objs-exists--ffa0a21ded89718caadd4025",
  "source": {
    "blob": "c891fe6e95a4d22625d5806faf9b94a2c6d485fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 671,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffa0a21ded89718caadd4025acc690e3ee5ffd9ebe3c6f98a7a5270833a5ed4a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d20e1a23-3566-4140-91dd-04094fb8c8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_objs_exists (O : Finset C) : ∃ S : C, ∀ {X}, X ∈ O → Nonempty (S ⟶ X) := by
  classical
  induction' O using Finset.induction with X O' nm h
  · exact ⟨Classical.choice IsCofiltered.nonempty, by intro; simp⟩
  · obtain ⟨S', w'⟩ := h
    use min X S'
    rintro Y mY
    obtain rfl | h := eq_or_ne Y X
    · exact ⟨minToLeft _ _⟩
    · exact ⟨minToRight _ _ ≫ (w' (Finset.mem_of_mem_insert_of_ne mY h)).some⟩

variable (O : Finset C) (H : Finset (Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y))

/-- Given any `Finset` of objects `{X, ...}` and
indexed collection of `Finset`s of morphisms `{f, ...}` in `C`,
there exists an object `S`, with a morphism `T X : S ⟶ X` from each `X`,
such that the triangles commute: `T X ≫ f = T Y`, for `f : X ⟶ Y` in the `Finset`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c891fe6e95a4d22625d5806faf9b94a2c6d485fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
