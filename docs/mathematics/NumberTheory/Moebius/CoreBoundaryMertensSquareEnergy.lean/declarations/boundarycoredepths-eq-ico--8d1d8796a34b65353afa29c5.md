# boundaryCoreDepths_eq_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58f9141f-512f-4c71-1f81-3735160f7894",
  "kind": "theorem",
  "lexical_name": "boundaryCoreDepths_eq_Ico",
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
  "slug": "boundarycoredepths-eq-ico--8d1d8796a34b65353afa29c5",
  "source": {
    "blob": "da8dc01529865475e7505bfa12a98fa129e2b44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 21,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d1d8796a34b65353afa29c5eacc3f937de6699de2520c41cacf8ede2c6337e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58f9141f-512f-4c71-1f81-3735160f7894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryCoreDepths_eq_Ico
    {j : ℕ}
    (hHX : logarithmicShiftThreshold j ≤ 2 ^ j) :
    boundaryCoreDepths j =
      Finset.Ico (logarithmicShallowDepthCount j) (2 ^ j - 1) := by
  ext t
  simp only [boundaryCoreDepths, coreLongDeepDepths,
    Finset.mem_filter, Finset.mem_Ico]
  constructor
  · intro ht
    rcases ht with ⟨⟨⟨hDt, htY⟩, hHt⟩, hcount⟩
    have hleft : t + 1 < 2 ^ j := by
      by_contra hnot
      have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt hnot
      rw [harmonicShiftCount_eq_rightDistance hright] at hcount
      rw [Nat.pow_succ] at hcount
      omega
    exact ⟨hDt, by omega⟩
  · intro ht
    rcases ht with ⟨hDt, htX⟩
    have hleft : t + 1 < 2 ^ j := by omega
    have hcount : harmonicShiftCount j t = 2 ^ j :=
      harmonicShiftCount_eq_leftScale hleft
    have htY : t < 2 ^ (j + 1) := by
      rw [Nat.pow_succ]
      omega
    exact ⟨⟨⟨hDt, htY⟩, by simpa [hcount] using hHX⟩, hcount⟩

/-- Difference of ordinary real Mertens prefixes is exactly the corresponding
finite Möbius interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8dc01529865475e7505bfa12a98fa129e2b44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
