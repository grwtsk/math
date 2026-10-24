# enclosed_height_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee9d547f-7d0e-31a1-38ac-afe3985b5447",
  "kind": "theorem",
  "lexical_name": "enclosed_height_le",
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
  "slug": "enclosed-height-le--ef6dca8f95f211de1aa229ad",
  "source": {
    "blob": "cece7d1179cc3b67ce0dabc1b7bbaeb5aed0068a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalDiskSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef6dca8f95f211de1aa229ad21f60e6638a232aa257b1a9c246fc4d9d260e56b",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalDiskSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee9d547f-7d0e-31a1-38ac-afe3985b5447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enclosed_height_le {c : Coordinates} {r T : ℚ} {z : ℂ}
    (hb : belowHeight c r T = true) (hz : ‖z - toComplex c‖ ≤ (r : ℝ)) :
    |z.im| ≤ (T : ℝ) := by
  have ht : |(c.2 : ℝ)| + (r : ℝ) ≤ (T : ℝ) := by
    exact_mod_cast ((belowHeight_iff c r T).mp hb).2
  have him : |z.im - (c.2 : ℝ)| ≤ (r : ℝ) := by
    simpa only [Complex.sub_im, toComplex] using
      (Complex.abs_im_le_norm (z - toComplex c)).trans hz
  calc
    |z.im| = |(z.im - (c.2 : ℝ)) + (c.2 : ℝ)| := by congr 1; ring
    _ ≤ |z.im - (c.2 : ℝ)| + |(c.2 : ℝ)| := abs_add _ _
    _ ≤ (r : ℝ) + |(c.2 : ℝ)| := add_le_add_right him _
    _ ≤ (T : ℝ) := by linarith

end GRWTSK.Analysis.ErrorBounds.RationalDiskSeparation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalDiskSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalDiskSeparation.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cece7d1179cc3b67ce0dabc1b7bbaeb5aed0068a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
