# returnProjector_proper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5efca5b-eadf-f1b1-540b-406701438edb",
  "kind": "theorem",
  "lexical_name": "returnProjector_proper",
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
  "slug": "returnprojector-proper--77a3fadcfff15c77d105b833",
  "source": {
    "blob": "ccb0637a5e4a93fe11af74b8904d3c9441142e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/NumberTheory/Farey/ReturnSpectralChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77a3fadcfff15c77d105b833c053a6a167c347ba8f0eb264e79d8bdb1bee9927",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ReturnSpectralChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5efca5b-eadf-f1b1-540b-406701438edb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem returnProjector_proper (s : ℝ) (hs0 : s ≠ 0) :
    returnProjector s ≠ 0 ∧ returnProjector s ≠ 1 := by
  have hdiv : (1 / s : ℝ) ≠ 0 := div_ne_zero (by norm_num) hs0
  have hentry : (returnProjector s) 0 1 = 1 / s := by
    simp [returnProjector]
  constructor
  · intro h
    have hp := congrArg (fun M : MatR => M 0 1) h
    have hz : (1 / s : ℝ) = 0 := by simpa [hentry] using hp
    exact hdiv hz
  · intro h
    have hp := congrArg (fun M : MatR => M 0 1) h
    have hz : (1 / s : ℝ) = 0 := by simpa [hentry] using hp
    exact hdiv hz

/-- The specifically selected expanding return projector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ReturnSpectralChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ReturnSpectralChannel.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb0637a5e4a93fe11af74b8904d3c9441142e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
