# not_in_two_balls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7123dfc7-ad9e-3f86-8b10-d74eb1a70dc3",
  "kind": "theorem",
  "lexical_name": "not_in_two_balls",
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
  "slug": "not-in-two-balls--70ac1d9c1245854b682ce51b",
  "source": {
    "blob": "6758a292b4620508df8cfd45199160849d0e2775",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/Analysis/Complex/RationalDiskSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ac1d9c1245854b682ce51b2847863a8a124208c21a90025ccbc40ec72e668e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7123dfc7-ad9e-3f86-8b10-d74eb1a70dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_in_two_balls (T : ℚ) {k : ℕ} (center : Fin k → QComplex) (radius : Fin k → ℚ)
    (hg : Admissible T center radius) (i j : Fin k) (hne : i ≠ j) (z : ℂ)
    (hi : ‖z - QComplex.embed (center i)‖ ≤ (radius i : ℝ))
    (hj : ‖z - QComplex.embed (center j)‖ ≤ (radius j : ℝ)) : False := by
  have hgap := center_gap T center radius hg i j hne
  have htri : ‖QComplex.embed (center i) - QComplex.embed (center j)‖ ≤
      (radius i : ℝ) + (radius j : ℝ) := by
    calc
      _ ≤ ‖QComplex.embed (center i) - z‖ + ‖z - QComplex.embed (center j)‖ :=
        by
          have he : QComplex.embed (center i) - QComplex.embed (center j) =
              (QComplex.embed (center i) - z) + (z - QComplex.embed (center j)) := by ring
          rw [he]
          exact norm_add_le _ _
      _ ≤ _ := add_le_add (by simpa only [norm_sub_rev] using hi) hj
  exact (not_le_of_gt hgap) htri

/-- Any selected witnesses in these disks are distinct, irrespective of how selected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalDiskSeparation.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6758a292b4620508df8cfd45199160849d0e2775` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
