# pinnedPrimeWeightRequiredCapacity_le_bertrandMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bb7127e-3e22-14fb-58b3-baa59ddd538b",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightRequiredCapacity_le_bertrandMajorant",
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
  "slug": "pinnedprimeweightrequiredcapacity-le-bertrandmajorant--87a9f5f1ea762b80b7874334",
  "source": {
    "blob": "6bbb0198822ac9d604ab21c4698bb291867603d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 206,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87a9f5f1ea762b80b7874334fc5a7ae7e2e3faac3d2f7145e530b2b3e8b517e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bb7127e-3e22-14fb-58b3-baa59ddd538b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightRequiredCapacity_le_bertrandMajorant
    {X : ℕ} (hX : 0 < X) (v E : ℝ) :
    pinnedPrimeWeightRequiredCapacity X v E ≤
      pinnedPrimeWeightBertrandMajorant X v E := by
  unfold pinnedPrimeWeightRequiredCapacity
    pinnedPrimeWeightBertrandMajorant
  have hnum :
      0 ≤ (X : ℝ) * pinnedPrimeWeightRemainingTarget v E :=
    mul_nonneg (Nat.cast_nonneg X)
      (pinnedPrimeWeightRemainingTarget_nonnegative v E)
  have hfloorSq :
      0 < (pinnedPrimeWeightBertrandFloor X)^2 := by
    positivity [pinnedPrimeWeightBertrandFloor_pos hX]
  exact
    div_le_div_of_nonneg_left hnum hfloorSq
      (pinnedPrimeWeightBertrandFloor_sq_le_amplitude_sq hX)

/-- Under a current-octave envelope, the exact required capacity is at least
the coefficient-mass benchmark. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bbb0198822ac9d604ab21c4698bb291867603d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
