# IsStableUnderCobaseChange.hasOfPrecompProperty_epimorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2296148b330ae30b24101371a1da4543e3b7fc3cbd5e789fe456b65e049b0c3",
  "kind": "instance",
  "lexical_name": "IsStableUnderCobaseChange.hasOfPrecompProperty_epimorphisms",
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
  "slug": "isstableundercobasechange-hasofprecompproperty-epimorphisms--6fe5e6a3dc7342a98a112f2a",
  "source": {
    "blob": "77f54e7d4cc8c64d4b48438051af40817a1f4b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 395,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fe5e6a3dc7342a98a112f2abda8a746e9a0de6c4c647fb4bcbceca2b38ad17d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2296148b330ae30b24101371a1da4543e3b7fc3cbd5e789fe456b65e049b0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsStableUnderCobaseChange.hasOfPrecompProperty_epimorphisms
    [P.IsStableUnderCobaseChange] : P.HasOfPrecompProperty (MorphismProperty.epimorphisms C) where
  of_precomp {X Y Z} f g (hf : Epi f) hcomp := by
    have : g = pushout.inr (f ≫ g) f ≫ (asIso (pushout.inl (f ≫ g) f)).inv := by
      rw [asIso_inv, IsIso.eq_comp_inv, ← cancel_epi f, ← pushout.condition, assoc]
    rw [this, cancel_right_of_respectsIso (P := P)]
    exact P.pushout_inr _ _ hcomp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f54e7d4cc8c64d4b48438051af40817a1f4b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
