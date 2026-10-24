# existsUnique_decoder_of_third_fiber_detection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4c66fdf-0486-a1ff-b29c-0002800df43c",
  "kind": "theorem",
  "lexical_name": "existsUnique_decoder_of_third_fiber_detection",
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
  "slug": "existsunique-decoder-of-third-fiber-detection--c43092163654ffb9258136e4",
  "source": {
    "blob": "2ee4d6d925580960af5e536f7db6aecab1f4a56b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentRepairSufficiency.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c43092163654ffb9258136e4f9e64aa9acd9c4a01f708efcc387b0cdf35d340a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentRepairSufficiency.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4c66fdf-0486-a1ff-b29c-0002800df43c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_decoder_of_third_fiber_detection
    {W : Type u} {Z : Type v}
    (extra : Combination 2 → W)
    (readout : Combination 2 → Z)
    (hthird : ∀ x y : Combination 2,
      bombieriMomentProfile x = bombieriMomentProfile y →
      extra x = extra y →
      thirdCoordinateReadout x = thirdCoordinateReadout y) :
    ∃! decode : Set.range (augmentedProfile bombieriMomentProfile extra) → Z,
      readout = decode ∘
        observedProfile (augmentedProfile bombieriMomentProfile extra) := by
  apply (existsUnique_decoder_observedProfile_iff
    (augmentedProfile bombieriMomentProfile extra) readout).2
  intro x y h
  exact congrArg readout
    (augmented_injective_of_third_fiber_detection extra hthird h)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairSufficiency
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentRepairSufficiency.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentRepairSufficiency.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee4d6d925580960af5e536f7db6aecab1f4a56b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
