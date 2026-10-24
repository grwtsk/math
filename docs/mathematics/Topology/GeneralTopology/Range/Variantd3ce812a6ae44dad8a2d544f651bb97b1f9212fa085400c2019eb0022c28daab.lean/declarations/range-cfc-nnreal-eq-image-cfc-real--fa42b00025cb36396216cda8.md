# range_cfcₙ_nnreal_eq_image_cfcₙ_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ab62c4a-5ae0-1137-1eed-5c413470704d",
  "kind": "lemma",
  "lexical_name": "range_cfcₙ_nnreal_eq_image_cfcₙ_real",
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
  "slug": "range-cfc-nnreal-eq-image-cfc-real--fa42b00025cb36396216cda8",
  "source": {
    "blob": "436c8ca481110b3a1d8f2a50e84542d25390af67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa42b00025cb36396216cda8d6077e32f11cd5b56fba9288000fb1c82bafe828",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ab62c4a-5ae0-1137-1eed-5c413470704d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_cfcₙ_nnreal_eq_image_cfcₙ_real
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint] (a : A) (ha : 0 ≤ a := by cfc_tac) :
    Set.range (cfcₙ (R := ℝ≥0) · a) = (cfcₙ · a) '' {f | ∀ x ∈ quasispectrum ℝ a, 0 ≤ f x} := by
  ext
  constructor
  · rintro ⟨f, rfl⟩
    simp only [cfcₙ_nnreal_eq_real f a]
    exact ⟨_, fun _ _ ↦ by positivity, rfl⟩
  · rintro ⟨f, hf, rfl⟩
    simp only [cfcₙ_real_eq_nnreal a hf]
    exact ⟨_, rfl⟩

variable [StarModule ℝ A] [ContinuousStar A] [ContinuousConstSMul ℝ A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `436c8ca481110b3a1d8f2a50e84542d25390af67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
