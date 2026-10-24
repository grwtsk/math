# actualClosedPrimePhase_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c911f787-aa41-8f01-ac32-027bbcf551f5",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimePhase_disk",
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
  "slug": "actualclosedprimephase-disk--ed09bcba02db3a5f1709f8eb",
  "source": {
    "blob": "0b14ddb6dee976801fa404a675daee5a9f46fbf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed09bcba02db3a5f1709f8eb25ce3b7652ca743254922cee8836ffc56281a057",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c911f787-aa41-8f01-ac32-027bbcf551f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimePhase_disk (A c t : ℝ) :
    actualClosedPrimeCosineDeficit A c t ^ 2 +
      actualClosedPrimeSineComponent A c t ^ 2 ≤
        2 * actualClosedPrimeLogMass A c * actualClosedPrimeCosineDeficit A c t := by
  have hn := actualClosedPrimeLogPotential_norm_le_mass A c t
  have hm := actualClosedPrimeLogMass_nonneg A c
  have hs := sq_le_sq₀ (norm_nonneg _) hm |>.mpr hn
  rw [Complex.sq_norm, Complex.normSq_apply] at hs
  simp only [actualClosedPrimeCosineDeficit, actualClosedPrimeSineComponent,
    Complex.sub_re, Complex.sub_im, potential_at_real_im, sub_zero,
    actualClosedPrimeLogMass] at *
  nlinarith

/-- One-sided support function of the actual linked finite phases, keeping b*S-a*Q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupport/Variantc1e18f491783f4641f5905c9b7e13979b73602ef38e1661094f46ef7ec19abd2.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b14ddb6dee976801fa404a675daee5a9f46fbf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
