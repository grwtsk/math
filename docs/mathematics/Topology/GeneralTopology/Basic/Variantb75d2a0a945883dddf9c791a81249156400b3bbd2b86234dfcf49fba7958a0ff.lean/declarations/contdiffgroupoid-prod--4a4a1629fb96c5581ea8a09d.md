# contDiffGroupoid_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0c4e007-5d2e-60bf-a5f9-187b47db23e5",
  "kind": "theorem",
  "lexical_name": "contDiffGroupoid_prod",
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
  "slug": "contdiffgroupoid-prod--4a4a1629fb96c5581ea8a09d",
  "source": {
    "blob": "f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 750,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a4a1629fb96c5581ea8a09d32494fe3b361382c02b182b897630d18b0c4fde4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0c4e007-5d2e-60bf-a5f9-187b47db23e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffGroupoid_prod {I : ModelWithCorners 𝕜 E H} {I' : ModelWithCorners 𝕜 E' H'}
    {e : OpenPartialHomeomorph H H} {e' : OpenPartialHomeomorph H' H'}
    (he : e ∈ contDiffGroupoid n I) (he' : e' ∈ contDiffGroupoid n I') :
    e.prod e' ∈ contDiffGroupoid n (I.prod I') := by
  obtain ⟨he, he_symm⟩ := he
  obtain ⟨he', he'_symm⟩ := he'
  constructor <;> simp only [OpenPartialHomeomorph.prod_toPartialHomeomorph,
    contDiffPregroupoid]
  · have h3 := ContDiffOn.prodMap he he'
    rw [← I.image_eq, ← I'.image_eq, prod_image_image_eq] at h3
    rw [← (I.prod I').image_eq]
    exact h3
  · have h3 := ContDiffOn.prodMap he_symm he'_symm
    rw [← I.image_eq, ← I'.image_eq, prod_image_image_eq] at h3
    rw [← (I.prod I').image_eq]
    exact h3

/-- The `C^n` groupoid is closed under restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
