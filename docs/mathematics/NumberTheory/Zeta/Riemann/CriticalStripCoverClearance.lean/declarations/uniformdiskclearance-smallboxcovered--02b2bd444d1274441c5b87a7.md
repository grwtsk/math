# UniformDiskClearance.smallBoxCovered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bb1788c-a787-c6e8-a012-ec164b5ef516",
  "kind": "theorem",
  "lexical_name": "UniformDiskClearance.smallBoxCovered",
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
  "slug": "uniformdiskclearance-smallboxcovered--02b2bd444d1274441c5b87a7",
  "source": {
    "blob": "345b46e0a87abbdab253b6720ecc0f3558aaabf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02b2bd444d1274441c5b87a7194239ebe1ad660e9a9b4fccc707135f36d6fbf7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bb1788c-a787-c6e8-a012-ec164b5ef516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformDiskClearance.smallBoxCovered {count : ℕ} {disks : Fin count → Disk}
    {root : Rectangle} {ε : ℝ} (h : UniformDiskClearance disks root ε) :
    SmallBoxCovered disks root ε := by
  intro b hb hsub hspan
  obtain ⟨w, hw⟩ := b.carrier_nonempty hb
  obtain ⟨i, hi⟩ := h.2 w (hsub.carrier_subset hw)
  refine ⟨i, ((disks i).squaredContainsBox_iff b hb).mpr ?_⟩
  intro z hz
  change dist z (disks i).center ≤ ((disks i).radius : ℝ)
  rw [dist_eq_norm]
  calc
    ‖z - (disks i).center‖ = ‖(z - w) + (w - (disks i).center)‖ := by
      congr 1
      abel
    _ ≤ ‖z - w‖ + ‖w - (disks i).center‖ := norm_add_le _ _
    _ ≤ (b.span : ℝ) + ‖w - (disks i).center‖ :=
      add_le_add_right (b.norm_sub_le_span hz hw) _
    _ ≤ ε + ‖w - (disks i).center‖ := add_le_add_right hspan _
    _ ≤ ((disks i).radius : ℝ) := by linarith

/-- A positive clearance on a nonempty root requires actual disk indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345b46e0a87abbdab253b6720ecc0f3558aaabf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
