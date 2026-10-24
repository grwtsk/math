# typeEqualizerOfUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6edab372d097c1fe335a64a27be7c818095d415a0f4d18179e37b9130a7b6acf",
  "kind": "def",
  "lexical_name": "typeEqualizerOfUnique",
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
  "slug": "typeequalizerofunique--3f3fcb436b95490f06958a56",
  "source": {
    "blob": "8ea3941e234eaa3cf1c67fb10e55976023ef5e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 480,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f3fcb436b95490f06958a56530e8d3251317d2a5aa01ac058aa2c484c7f6e41",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6edab372d097c1fe335a64a27be7c818095d415a0f4d18179e37b9130a7b6acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def typeEqualizerOfUnique (t : ∀ y : Y, g y = h y → ∃! x : X, f x = y) :
    IsLimit (Fork.ofι _ w) :=
  Fork.IsLimit.mk' _ fun s => by
    refine' ⟨fun i => _, _, _⟩
    · apply Classical.choose (t (s.ι i) _)
      apply congr_fun s.condition i
    · funext i
      exact (Classical.choose_spec (t (s.ι i) (congr_fun s.condition i))).1
    · intro m hm
      funext i
      exact (Classical.choose_spec (t (s.ι i) (congr_fun s.condition i))).2 _ (congr_fun hm i)
#align category_theory.limits.types.type_equalizer_of_unique CategoryTheory.Limits.Types.typeEqualizerOfUnique

/-- The converse of `type_equalizer_of_unique`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant8066f181350cd6ae391c2cc2f9c8031c621573d27321d7165b8f29686c87ff65.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ea3941e234eaa3cf1c67fb10e55976023ef5e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
