# nonAliasingFejerCenteredAnchorAutocorrelation_le_absoluteLowGCDAggregate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ee704e6-f4ef-3d46-778c-ab534bbece7e",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerCenteredAnchorAutocorrelation_le_absoluteLowGCDAggregate",
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
  "slug": "nonaliasingfejercenteredanchorautocorrelation-le-absolutelowgcdaggregate--6cedabee1e3616791eeeebee",
  "source": {
    "blob": "3850d5ace477943031d8c81a97a8628652b60096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 457,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cedabee1e3616791eeeebee459a1afe43bbf8c80d0e1b9608b5f2bbf8d466ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ee704e6-f4ef-3d46-778c-ab534bbece7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerCenteredAnchorAutocorrelation_le_absoluteLowGCDAggregate
    {X N m Y : ℕ}
    (hY : 1 ≤ Y)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerCenteredAnchorAutocorrelation X N m ≤
      nonAliasingFejerMobiusLogAbsoluteLowGCDAggregate
        X N m Y := by
  unfold nonAliasingFejerCenteredAnchorAutocorrelation
    nonAliasingFejerMobiusLogAbsoluteLowGCDAggregate
    nonAliasingFejerMobiusLogAbsoluteLowGCDShiftCorrelation
  apply Finset.sum_le_sum
  intro h hh
  have hhpos : 0 < h := by
    have hhI := Finset.mem_Icc.mp hh
    omega
  apply Finset.sum_le_sum
  intro n hn
  have hone :=
    one_le_centeredMobiusLogAbsoluteLowGCDPairBlock
      (n := n) hhpos hY
  have hw :=
    nonAliasingFejerShiftWeight_nonnegative
      hreg hm0 hm1 hn
  calc
    nonAliasingFejerShiftWeight X N m h n
      =
      nonAliasingFejerShiftWeight X N m h n * 1 := by ring
    _ ≤
      nonAliasingFejerShiftWeight X N m h n *
        centeredMobiusLogAbsoluteLowGCDPairBlock n h Y := by
          exact mul_le_mul_of_nonneg_left hone hw

/-- Square-root Type I/II boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3850d5ace477943031d8c81a97a8628652b60096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
