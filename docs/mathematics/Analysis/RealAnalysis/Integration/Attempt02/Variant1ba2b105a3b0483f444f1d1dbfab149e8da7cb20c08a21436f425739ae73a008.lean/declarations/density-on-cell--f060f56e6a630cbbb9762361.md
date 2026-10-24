# density_on_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e442c3-ffe6-ed75-3368-017043ffab9b",
  "kind": "theorem",
  "lexical_name": "density_on_cell",
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
  "slug": "density-on-cell--f060f56e6a630cbbb9762361",
  "source": {
    "blob": "dd190a7af9808534fd44fa1f33d4c6245d418190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant1ba2b105a3b0483f444f1d1dbfab149e8da7cb20c08a21436f425739ae73a008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f060f56e6a630cbbb97623614febfb6e5d538885dc0d220a5fd8e31626676c8c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant1ba2b105a3b0483f444f1d1dbfab149e8da7cb20c08a21436f425739ae73a008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e442c3-ffe6-ed75-3368-017043ffab9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem density_on_cell (U M : ℕ) {x : ℝ} (hx : x ∈ Ico (M : ℝ) ((M : ℝ) + 1)) :
    actualPhysicalPeriodicDensity U x = actualPhysicalPeriodicDensity U (M : ℝ) := by
  have hx0 : 0 ≤ x := (Nat.cast_nonneg M).trans hx.1
  have hf : Nat.floor x = M := (Nat.floor_eq_iff hx0).2 hx
  simp only [actualPhysicalPeriodicDensity, hf, Nat.floor_natCast]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant1ba2b105a3b0483f444f1d1dbfab149e8da7cb20c08a21436f425739ae73a008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant1ba2b105a3b0483f444f1d1dbfab149e8da7cb20c08a21436f425739ae73a008.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd190a7af9808534fd44fa1f33d4c6245d418190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
