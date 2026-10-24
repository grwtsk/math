# isIso_toPlus_of_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d57e4fa0-90b1-e706-06d3-811611d4bae0",
  "kind": "theorem",
  "lexical_name": "isIso_toPlus_of_isSheaf",
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
  "slug": "isiso-toplus-of-issheaf--8b02f1ddda5b2b63deb68bbd",
  "source": {
    "blob": "fafeb60fe7732457faa5fee9b1c62f986cc3b6c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b02f1ddda5b2b63deb68bbd4dd8a9e393b4da25483d3f66e730982599578adb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d57e4fa0-90b1-e706-06d3-811611d4bae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_toPlus_of_isSheaf (hP : Presheaf.IsSheaf J P) : IsIso (J.toPlus P) := by
  rw [Presheaf.isSheaf_iff_multiequalizer] at hP
  suffices ∀ X, IsIso ((J.toPlus P).app X) from NatIso.isIso_of_isIso_app _
  intro X
  refine IsIso.comp_isIso' inferInstance ?_
  suffices ∀ (S T : (J.Cover X.unop)ᵒᵖ) (f : S ⟶ T), IsIso ((J.diagram P X.unop).map f) from
    isIso_ι_of_isInitial (initialOpOfTerminal isTerminalTop) _
  intro S T e
  have : S.unop.toMultiequalizer P ≫ (J.diagram P X.unop).map e = T.unop.toMultiequalizer P :=
    Multiequalizer.hom_ext _ _ _ (fun II => by dsimp; simp)
  have :
    (J.diagram P X.unop).map e = inv (S.unop.toMultiequalizer P) ≫ T.unop.toMultiequalizer P := by
    simp [← this]
  rw [this]
  infer_instance

/-- The natural isomorphism between `P` and `P⁺` when `P` is a sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variantd4eb25aaabfa38359eb5941b28e632e2db9f39a447b41e3f083b0f3adab0da08.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fafeb60fe7732457faa5fee9b1c62f986cc3b6c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
