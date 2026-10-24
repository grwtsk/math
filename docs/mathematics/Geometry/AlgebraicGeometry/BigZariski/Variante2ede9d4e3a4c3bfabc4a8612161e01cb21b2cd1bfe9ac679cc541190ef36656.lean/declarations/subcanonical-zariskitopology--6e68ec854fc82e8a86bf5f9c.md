# subcanonical_zariskiTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c0878a16d4c53ba4b84d6a49c6d5ff7697c3154245751ec07c9eebbb40768ef",
  "kind": "instance",
  "lexical_name": "subcanonical_zariskiTopology",
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
  "slug": "subcanonical-zariskitopology--6e68ec854fc82e8a86bf5f9c",
  "source": {
    "blob": "fb1214b6b3e6ec4848d116f79d33f7c223c9f053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e68ec854fc82e8a86bf5f9cf80167571347958eb288cf17f4aaaa5dfd6c7c2c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c0878a16d4c53ba4b84d6a49c6d5ff7697c3154245751ec07c9eebbb40768ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subcanonical_zariskiTopology : zariskiTopology.Subcanonical := by
  apply GrothendieckTopology.Subcanonical.of_isSheaf_yoneda_obj
  intro X
  rw [Precoverage.isSheaf_toGrothendieck_iff_of_isStableUnderBaseChange]
  rintro Y S hS x hx
  obtain ⟨(𝓤 : OpenCover Y), rfl⟩ := exists_cover_of_mem_pretopology hS
  let e : Y ⟶ X := 𝓤.glueMorphisms (fun j => x (𝓤.f _) (.mk _)) <| by
    intro i j
    apply hx
    exact Limits.pullback.condition
  refine ⟨e, ?_, ?_⟩
  · rintro Z e ⟨j⟩
    dsimp [e]
    rw [𝓤.ι_glueMorphisms]
  · intro e' h
    apply 𝓤.hom_ext
    intro j
    rw [𝓤.ι_glueMorphisms]
    exact h (𝓤.f j) (.mk j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb1214b6b3e6ec4848d116f79d33f7c223c9f053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
