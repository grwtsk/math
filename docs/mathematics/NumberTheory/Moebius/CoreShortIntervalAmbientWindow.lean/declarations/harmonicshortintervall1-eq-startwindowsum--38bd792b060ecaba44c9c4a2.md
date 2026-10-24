# harmonicShortIntervalL1_eq_startWindowSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9068e32-1db6-46f5-5a05-532661894a66",
  "kind": "theorem",
  "lexical_name": "harmonicShortIntervalL1_eq_startWindowSum",
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
  "slug": "harmonicshortintervall1-eq-startwindowsum--38bd792b060ecaba44c9c4a2",
  "source": {
    "blob": "0c2d2b57c1dc7513e0e66c3468fc12e12b80f365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38bd792b060ecaba44c9c4a2cc48e962180e6a75e9922807c12c5cf6e53434b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9068e32-1db6-46f5-5a05-532661894a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicShortIntervalL1_eq_startWindowSum
    (j t n : ℕ) :
    harmonicShortIntervalL1 j t n =
      ∑ x ∈ Finset.Ico (harmonicStartWindowLower j t)
          (harmonicStartWindowUpper j t),
        |ambientMobiusShortIntervalSum x n| := by
  unfold harmonicShortIntervalL1
  rw [← harmonicStartWindow_eq_image_range]
  rw [Finset.sum_image]
  · apply Finset.sum_congr rfl
    intro a _ha
    rw [harmonicShortMobiusSum_eq_ambient]
  · intro a₁ ha₁ a₂ ha₂ h
    unfold harmonicShortIntervalStart at h
    omega

/-- Nonnegativity lets any depth-window first moment enlarge to the common
ambient start block without loss other than adding terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2d2b57c1dc7513e0e66c3468fc12e12b80f365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
