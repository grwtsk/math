# ofSheafForgetLightProfinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f919d47b91d2ff5cf655b4d0b134e92650390778fe2a1337f92299ed5fda8c22",
  "kind": "def",
  "lexical_name": "ofSheafForgetLightProfinite",
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
  "slug": "ofsheafforgetlightprofinite--b9276db315f1e2dd120503c4",
  "source": {
    "blob": "1441969f65112c09e34d60b5c9f9ff4aa9155dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant772a6859bdb2dd588ca6d4f8a2b6e6feb2900610c485f2e2097b1850bf35343f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9276db315f1e2dd120503c467d7b232aea495f2e6d7247dd158de2be1db4db4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant772a6859bdb2dd588ca6d4f8a2b6e6feb2900610c485f2e2097b1850bf35343f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f919d47b91d2ff5cf655b4d0b134e92650390778fe2a1337f92299ed5fda8c22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofSheafForgetLightProfinite
    [HasForget A] [ReflectsFiniteLimits (CategoryTheory.forget A)]
    (F : LightProfinite.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts (F ⋙ CategoryTheory.forget A)]
    (hF : EqualizerCondition (F ⋙ CategoryTheory.forget A)) : LightCondensed A where
  val := F
  cond := by
    apply isSheaf_coherent_of_hasPullbacks_of_comp F (CategoryTheory.forget A)
    rw [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition]
    exact ⟨⟨fun _ ↦ inferInstance⟩, hF⟩

/-- A light condensed object satisfies the equalizer condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant772a6859bdb2dd588ca6d4f8a2b6e6feb2900610c485f2e2097b1850bf35343f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant772a6859bdb2dd588ca6d4f8a2b6e6feb2900610c485f2e2097b1850bf35343f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1441969f65112c09e34d60b5c9f9ff4aa9155dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
