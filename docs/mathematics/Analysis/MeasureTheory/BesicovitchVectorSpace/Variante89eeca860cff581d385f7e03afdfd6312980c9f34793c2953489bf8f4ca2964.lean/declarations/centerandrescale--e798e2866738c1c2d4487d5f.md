# centerAndRescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:717968aaca98dc6d7bbd10d8edeb7a2988a07a70b1ebc9f6f1e6e17f8cc88019",
  "kind": "def",
  "lexical_name": "centerAndRescale",
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
  "slug": "centerandrescale--e798e2866738c1c2d4487d5f",
  "source": {
    "blob": "33e6f5d60ba8766924c7b6d592a9c97a6e3c9a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e798e2866738c1c2d4487d5fa8f0c1d24bbbb311a5cd435896e3d5b444910eab",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:717968aaca98dc6d7bbd10d8edeb7a2988a07a70b1ebc9f6f1e6e17f8cc88019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def centerAndRescale : SatelliteConfig E N τ where
  c i := (a.r (last N))⁻¹ • (a.c i - a.c (last N))
  r i := (a.r (last N))⁻¹ * a.r i
  rpos i := by positivity
  h i j hij := by
    simp (disch := positivity) only [dist_smul₀, dist_sub_right, mul_left_comm τ,
      Real.norm_of_nonneg]
    rcases a.h hij with (⟨H₁, H₂⟩ | ⟨H₁, H₂⟩) <;> [left; right] <;> constructor <;> gcongr
  hlast i hi := by
    simp (disch := positivity) only [dist_smul₀, dist_sub_right, mul_left_comm τ,
      Real.norm_of_nonneg]
    have ⟨H₁, H₂⟩ := a.hlast i hi
    constructor <;> gcongr
  inter i hi := by
    simp (disch := positivity) only [dist_smul₀, ← mul_add, dist_sub_right, Real.norm_of_nonneg]
    gcongr
    exact a.inter i hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variante89eeca860cff581d385f7e03afdfd6312980c9f34793c2953489bf8f4ca2964.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33e6f5d60ba8766924c7b6d592a9c97a6e3c9a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
