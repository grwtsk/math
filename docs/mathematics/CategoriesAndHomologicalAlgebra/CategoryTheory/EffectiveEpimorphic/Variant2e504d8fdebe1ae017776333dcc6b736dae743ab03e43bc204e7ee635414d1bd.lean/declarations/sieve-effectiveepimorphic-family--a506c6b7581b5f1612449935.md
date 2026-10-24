# Sieve.effectiveEpimorphic_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e4c355c-41be-ae63-d4c4-f3fbb92c2074",
  "kind": "theorem",
  "lexical_name": "Sieve.effectiveEpimorphic_family",
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
  "slug": "sieve-effectiveepimorphic-family--a506c6b7581b5f1612449935",
  "source": {
    "blob": "73e9cc312d21648807dca50b644523255992edb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 443,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a506c6b7581b5f16124499359c308c5c8b292c0b8af382456947ecd74c737755",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e4c355c-41be-ae63-d4c4-f3fbb92c2074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sieve.effectiveEpimorphic_family {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B)) :
    (Presieve.ofArrows X π).EffectiveEpimorphic ↔ EffectiveEpiFamily X π := by
  constructor
  · intro (h : Nonempty _)
    rw [Sieve.generateFamily_eq] at h
    constructor
    apply Nonempty.map (effectiveEpiFamilyStructOfIsColimit _ _) h
  · rintro ⟨h⟩
    show Nonempty _
    rw [Sieve.generateFamily_eq]
    apply Nonempty.map (isColimitOfEffectiveEpiFamilyStruct _ _) h


section instances

/--
Given an `EffectiveEpiFamily X π` such that the coproduct of `X` exists, `Sigma.desc π` is an
`EffectiveEpi`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73e9cc312d21648807dca50b644523255992edb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
