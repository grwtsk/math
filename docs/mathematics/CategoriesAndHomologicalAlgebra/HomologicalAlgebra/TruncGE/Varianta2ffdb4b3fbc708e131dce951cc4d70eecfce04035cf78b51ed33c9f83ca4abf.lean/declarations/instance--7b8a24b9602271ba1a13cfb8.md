# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f4c531979300dc652254b56b488c471ed5a7f86b73ebe2edb1e84a0040cef98",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7b8a24b9602271ba1a13cfb8",
  "source": {
    "blob": "a52a44c7a71d2419f996af373f41bd194773a471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 328,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b8a24b9602271ba1a13cfb8b04212f2a80d67d140de4160f774f8ca81ab2456",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f4c531979300dc652254b56b488c471ed5a7f86b73ebe2edb1e84a0040cef98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [K.IsStrictlySupported e] (i : ι) :
    IsIso ((K.restrictionToTruncGE' e).f i) := by
  by_cases hi : e.BoundaryGE i
  · rw [K.restrictionToTruncGE'_f_eq_iso_hom_pOpcycles_iso_inv e rfl hi]
    have : IsIso (K.pOpcycles (e.f i)) := K.isIso_pOpcycles _ _ rfl (by
      obtain ⟨hi₁, hi₂⟩ := hi
      apply IsZero.eq_of_src (K.isZero_X_of_isStrictlySupported e _
        (fun j hj ↦ hi₂ j (by simpa only [hj] using hi₁))))
    infer_instance
  · rw [K.restrictionToTruncGE'_f_eq_iso_hom_iso_inv e rfl hi]
    infer_instance

section

variable [HasZeroObject C]

/-- The canonical morphism `K ⟶ K.truncGE e` when `e` is an embedding of complex
shapes which satisfy `e.IsTruncGE`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Varianta2ffdb4b3fbc708e131dce951cc4d70eecfce04035cf78b51ed33c9f83ca4abf.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52a44c7a71d2419f996af373f41bd194773a471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
