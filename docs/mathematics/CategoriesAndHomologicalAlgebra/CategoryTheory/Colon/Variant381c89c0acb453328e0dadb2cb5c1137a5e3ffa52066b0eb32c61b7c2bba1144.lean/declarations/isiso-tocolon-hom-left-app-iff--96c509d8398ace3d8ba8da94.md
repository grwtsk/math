# isIso_toColon_hom_left_app_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50568d1a-7483-df2a-1dfa-8aa74639dd04",
  "kind": "theorem",
  "lexical_name": "isIso_toColon_hom_left_app_iff",
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
  "slug": "isiso-tocolon-hom-left-app-iff--96c509d8398ace3d8ba8da94",
  "source": {
    "blob": "81dfd65da8e6b7e420d262d4acd6f8c69c2343d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colon/Variant381c89c0acb453328e0dadb2cb5c1137a5e3ffa52066b0eb32c61b7c2bba1144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96c509d8398ace3d8ba8da94a605fff7ebcb593055b704790450bbfe7a1fb7ee",
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

Occurrence: `result:50568d1a-7483-df2a-1dfa-8aa74639dd04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_toColon_hom_left_app_iff {Φ Ψ : Preradical C} {X : C} :
    IsIso ((toColon Φ Ψ).hom.left.app X) ↔ IsZero (Ψ.r.obj (Φ.quotient.obj X)) := by
  constructor <;> intro h
  · exact IsZero.of_epi_eq_zero ((colonπ Φ Ψ).app X)
      (zero_of_epi_comp ((toColon Φ Ψ).hom.left.app X) (by simp))
  · obtain ⟨inv, hinv⟩ :=
      KernelFork.IsLimit.lift' (Φ.isLimitKernelForkObj X) ((colon Φ Ψ).ι.app X) (by
        rw [colon_ι_app_π_app, h.eq_zero_of_tgt ((colonπ Φ Ψ).app X), zero_comp])
    dsimp at hinv
    refine ⟨inv, ?_, ?_⟩
    · simp [← cancel_mono (Φ.ι.app X), hinv]
    · simp [← cancel_mono ((Φ.colon Ψ).ι.app X), hinv]

/-- The morphism `(toColon Φ Ψ)` is an isomorphism if and only if `Φ.quotient ⋙ Ψ.r` is the zero
object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colon/Variant381c89c0acb453328e0dadb2cb5c1137a5e3ffa52066b0eb32c61b7c2bba1144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colon/Variant381c89c0acb453328e0dadb2cb5c1137a5e3ffa52066b0eb32c61b7c2bba1144.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81dfd65da8e6b7e420d262d4acd6f8c69c2343d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
