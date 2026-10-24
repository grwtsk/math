# sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e3df557-631a-6868-9f87-9300a5039453",
  "kind": "theorem",
  "lexical_name": "sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare",
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
  "slug": "sum-sq-integercoordinateamplitude-eq-variance-add-meansquare--8994f4d1e73df94fb11991d8",
  "source": {
    "blob": "86aee0d7b10b468badc8e0f46d5d369e33c3f66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8994f4d1e73df94fb11991d86f06b8c8041402894d5b417a87488f4b3c16e32e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e3df557-631a-6868-9f87-9300a5039453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare
    (b r : ℕ) (H : Finset ℕ) :
    (∑ c ∈ Finset.range (b + 1),
      parityCenteredIntegerCoordinateAmplitude b r H c ^ 2) =
      parityCenteredIntegerCoordinateVariance b r H +
        parityHalfIndexCenteredPairMass b r H ^ 2 /
          ((b + 1 : ℕ) : ℝ) := by
  classical
  have hN : (((b + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  unfold parityCenteredIntegerCoordinateVariance parityCenteredIntegerCoordinateMean
  simp only [sub_sq, Finset.sum_add_distrib, Finset.sum_sub_distrib,
    ← Finset.mul_sum, ← Finset.sum_mul, Finset.sum_const, nsmul_eq_mul,
    Finset.card_range]
  rw [sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass]
  field_simp [hN]
  ring

/-- The existing zero-winding fiber energy is four times the integer-center
second moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86aee0d7b10b468badc8e0f46d5d369e33c3f66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
