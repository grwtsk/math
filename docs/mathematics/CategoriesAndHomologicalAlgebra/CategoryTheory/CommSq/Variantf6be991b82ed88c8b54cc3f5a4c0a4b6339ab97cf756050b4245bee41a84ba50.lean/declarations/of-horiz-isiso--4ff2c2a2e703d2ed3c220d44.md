# of_horiz_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69421759-fffd-37f9-240c-7194b722814e",
  "kind": "theorem",
  "lexical_name": "of_horiz_isIso",
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
  "slug": "of-horiz-isiso--4ff2c2a2e703d2ed3c220d44",
  "source": {
    "blob": "81ee2692793fc4480da730ceddae3eb654b7daa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1203,
    "line": 1196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ff2c2a2e703d2ed3c220d448ad9a3d58db39b52fd678ab37a459e9a8411829c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69421759-fffd-37f9-240c-7194b722814e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1196–1203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_horiz_isIso [IsIso f] [IsIso inr] (sq : CommSq f g inl inr) : IsPushout f g inl inr :=
  of_isColimit' sq
    (by
      refine
        PushoutCocone.IsColimit.mk _ (fun s => inv inr ≫ s.inr) (fun s => ?_)
          (by simp) (by simp)
      simp only [← cancel_epi f, s.condition, sq.w_assoc, IsIso.hom_inv_id_assoc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantf6be991b82ed88c8b54cc3f5a4c0a4b6339ab97cf756050b4245bee41a84ba50.lean#L1196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ee2692793fc4480da730ceddae3eb654b7daa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
