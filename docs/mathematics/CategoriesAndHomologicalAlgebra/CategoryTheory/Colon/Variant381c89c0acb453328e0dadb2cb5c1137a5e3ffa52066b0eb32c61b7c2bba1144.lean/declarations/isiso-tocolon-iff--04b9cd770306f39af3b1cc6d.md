# isIso_toColon_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62c367af-f8c7-3d60-f437-5f0848796eb5",
  "kind": "theorem",
  "lexical_name": "isIso_toColon_iff",
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
  "slug": "isiso-tocolon-iff--04b9cd770306f39af3b1cc6d",
  "source": {
    "blob": "81dfd65da8e6b7e420d262d4acd6f8c69c2343d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colon/Variant381c89c0acb453328e0dadb2cb5c1137a5e3ffa52066b0eb32c61b7c2bba1144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b9cd770306f39af3b1cc6dec044b409dc48c5cc863ec8c78ce8660771b0a87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colon/Variant381c89c0acb453328e0dadb2cb5c1137a5e3ffa52066b0eb32c61b7c2bba1144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62c367af-f8c7-3d60-f437-5f0848796eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_toColon_iff {Φ Ψ : Preradical C} :
    IsIso (toColon Φ Ψ) ↔ IsZero (Φ.quotient ⋙ Ψ.r) := by
  simpa [MonoOver.isIso_iff_isIso_hom_left, isZero_iff (Φ.quotient ⋙ Ψ.r),
    NatTrans.isIso_iff_isIso_app] using forall_congr' fun x ↦ isIso_toColon_hom_left_app_iff

end Preradical

end CategoryTheory.Abelian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colon/Variant381c89c0acb453328e0dadb2cb5c1137a5e3ffa52066b0eb32c61b7c2bba1144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colon/Variant381c89c0acb453328e0dadb2cb5c1137a5e3ffa52066b0eb32c61b7c2bba1144.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81dfd65da8e6b7e420d262d4acd6f8c69c2343d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
