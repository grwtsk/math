# overGrothendieckTopology_eq_toGrothendieck_overPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9b8641b-4239-5069-712a-5daa695cdddf",
  "kind": "lemma",
  "lexical_name": "overGrothendieckTopology_eq_toGrothendieck_overPretopology",
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
  "slug": "overgrothendiecktopology-eq-togrothendieck-overpretopology--34391c3bf93f8f7559f2c0aa",
  "source": {
    "blob": "e399368a2fab93fb2df9b4edff2583ab76dcbd06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 107,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34391c3bf93f8f7559f2c0aa6f56811dbf8aff737c387728c1dda611d65fd09d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b8641b-4239-5069-712a-5daa695cdddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma overGrothendieckTopology_eq_toGrothendieck_overPretopology :
    S.overGrothendieckTopology P = (S.overPretopology P).toGrothendieck := by
  ext X R
  rw [GrothendieckTopology.mem_over_iff, Pretopology.mem_toGrothendieck]
  constructor
  · rintro ⟨T, ⟨𝒰, rfl⟩, hT⟩
    letI (i : 𝒰.J) : (𝒰.obj i).Over S := { hom := 𝒰.map i ≫ X.hom }
    letI : 𝒰.Over S :=
      { over := inferInstance
        isOver_map := fun i ↦ ⟨rfl⟩ }
    use 𝒰.toPresieveOver, ⟨𝒰, inferInstance, rfl⟩
    rwa [Cover.toPresieveOver_le_arrows_iff]
  · rintro ⟨T, ⟨𝒰, h, rfl⟩, hT⟩
    use Presieve.ofArrows 𝒰.obj 𝒰.map, ⟨𝒰, rfl⟩
    rwa [Cover.toPresieveOver_le_arrows_iff] at hT

variable {S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e399368a2fab93fb2df9b4edff2583ab76dcbd06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
