# canonicalFourFamilyGreenMatrixApply_eq_terminalErase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c9eccfb-da43-b5e0-05c0-c60651626a14",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyGreenMatrixApply_eq_terminalErase",
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
  "slug": "canonicalfourfamilygreenmatrixapply-eq-terminalerase--651706ee3496265818f25c94",
  "source": {
    "blob": "0f3349c77d863f9fdc1dc66abcd013a32a2597c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:651706ee3496265818f25c948f788302613c7f326ef0576a03457392e3797949",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c9eccfb-da43-b5e0-05c0-c60651626a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyGreenMatrixApply_eq_terminalErase
    (X : ℕ) {n : ℕ} (hn : n ∈ centeredGreenWindow X)
    (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyGreenMatrixApply X n v =
      canonicalFourFamilyGreenMatrixApply X n
        (canonicalFourFamilyTerminalErase X v) := by
  classical
  unfold canonicalFourFamilyGreenMatrixApply
  apply Finset.sum_congr rfl
  intro F _hF
  apply Finset.sum_congr rfl
  intro c _hc
  by_cases hcenter : c = X + 1
  · subst c
    rw [canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero hn F]
    simp [canonicalFourFamilyTerminalErase]
  · simp [canonicalFourFamilyTerminalErase, hcenter]

/-- Exact finite observation quotient: the entire original Green-window
readout is insensitive to erasing the terminal-center coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f3349c77d863f9fdc1dc66abcd013a32a2597c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
