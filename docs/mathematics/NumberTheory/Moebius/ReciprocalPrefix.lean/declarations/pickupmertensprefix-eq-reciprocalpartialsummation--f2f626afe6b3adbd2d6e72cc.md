# pickupMertensPrefix_eq_reciprocalPartialSummation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76ecf00f-1b76-1533-63c7-d328cc9acce8",
  "kind": "theorem",
  "lexical_name": "pickupMertensPrefix_eq_reciprocalPartialSummation",
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
  "slug": "pickupmertensprefix-eq-reciprocalpartialsummation--f2f626afe6b3adbd2d6e72cc",
  "source": {
    "blob": "9014c091e12c7104e8087204b2aa12552b6a7afa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f626afe6b3adbd2d6e72cc3d14fe7d424132abf7e898084dfc96dde2b7e19e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76ecf00f-1b76-1533-63c7-d328cc9acce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupMertensPrefix_eq_reciprocalPartialSummation (N : ℕ) :
    pickupMertensPrefix N =
      (N : ℝ) * pickupReciprocalPrefix N -
        ∑ k ∈ Finset.range N, pickupReciprocalPrefix k := by
  induction N with
  | zero => simp [pickupMertensPrefix]
  | succ N ih =>
      rw [show N + 1 = Nat.succ N by rfl, pickupMertensPrefix_succ,
        pickupReciprocalPrefix_succ, Finset.sum_range_succ, ih]
      have hne : ((N + 1 : ℕ) : ℝ) ≠ 0 := by positivity
      field_simp [hne]
      norm_num [Nat.cast_succ]
      ring

/-- Taking absolute values exposes the exact endpoint and accumulated-history
costs.  In particular, a uniform bound for the reciprocal prefix gives only a
linear allowance unless additional decay or cancellation is proved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9014c091e12c7104e8087204b2aa12552b6a7afa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
