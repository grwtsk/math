# image_positiveHeightHead_eq_negativeHeightHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54f46363-03de-f322-f0d0-90be811e86fb",
  "kind": "theorem",
  "lexical_name": "image_positiveHeightHead_eq_negativeHeightHead",
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
  "slug": "image-positiveheighthead-eq-negativeheighthead--2e25820135dbf6731d21ae40",
  "source": {
    "blob": "306e543adc2f0854b4bf1bcb8eed83664d829b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e25820135dbf6731d21ae40a5303845d6bd0bebe2731016f6e44e4c905e8452",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54f46363-03de-f322-f0d0-90be811e86fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_positiveHeightHead_eq_negativeHeightHead (T : ℝ) :
    (positiveHeightHead T).image conjugated = negativeHeightHead T := by
  classical
  ext z
  constructor
  · intro hz
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hz
    exact conjugated_mem_negativeHeightHead T w hw
  · intro hz
    have hpos := conjugated_mem_positiveHeightHead_of_negative T z hz
    exact Finset.mem_image.mpr ⟨conjugated z, hpos, conjugated_involutive z⟩

/-- Conjugation preserves the complete multiplicity mass of either height sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `306e543adc2f0854b4bf1bcb8eed83664d829b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
