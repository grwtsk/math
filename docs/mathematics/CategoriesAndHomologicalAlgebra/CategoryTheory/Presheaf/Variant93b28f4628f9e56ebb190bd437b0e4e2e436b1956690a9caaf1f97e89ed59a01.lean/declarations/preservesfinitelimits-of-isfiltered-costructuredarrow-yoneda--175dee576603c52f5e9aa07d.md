# preservesFiniteLimits_of_isFiltered_costructuredArrow_yoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72cca3c7-b157-032f-22e9-1554e7853d13",
  "kind": "lemma",
  "lexical_name": "preservesFiniteLimits_of_isFiltered_costructuredArrow_yoneda",
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
  "slug": "preservesfinitelimits-of-isfiltered-costructuredarrow-yoneda--175dee576603c52f5e9aa07d",
  "source": {
    "blob": "279c7c6e5dfa696ff836d456006bcdcd2b414de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:175dee576603c52f5e9aa07df4de8f3c0ab4825d42f542eee1ca143456bdc054",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72cca3c7-b157-032f-22e9-1554e7853d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteLimits_of_isFiltered_costructuredArrow_yoneda
    [IsFiltered (CostructuredArrow yoneda A)] : PreservesFiniteLimits A where
  preservesFiniteLimits _ _ _ := ⟨fun {_} => preservesLimit_of_isIso_post _ _⟩

/-- If `C` is a small finitely cocomplete category and `A : Cᵒᵖ ⥤ Type u` is a presheaf, then
`CostructuredArrow yoneda A` is filtered if and only if `A` preserves finite limits.

Proposition 3.3.13 of [Kashiwara2006].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `279c7c6e5dfa696ff836d456006bcdcd2b414de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
