# not_restrictedLowerFrame_of_terminalDelta_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac8673e3-d905-48ac-7425-526970e731b0",
  "kind": "theorem",
  "lexical_name": "not_restrictedLowerFrame_of_terminalDelta_mem",
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
  "slug": "not-restrictedlowerframe-of-terminaldelta-mem--6ff422c888124d53c166e839",
  "source": {
    "blob": "0f3349c77d863f9fdc1dc66abcd013a32a2597c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 194,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff422c888124d53c166e839ed7aebe7858484990fdb8ea437447a94189bc567",
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

Occurrence: `result:ac8673e3-d905-48ac-7425-526970e731b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_restrictedLowerFrame_of_terminalDelta_mem
    {X : ℕ} (hX : 2 ≤ X)
    (D : Set CanonicalFourFamilyRealPacket)
    (hdelta : canonicalFourFamilyTerminalDelta X ∈ D)
    (A : ℝ) :
    ¬ HasCanonicalFourFamilyRestrictedLowerFrame X D A := by
  rintro ⟨hA, hframe⟩
  have hsrc : 0 < canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyTerminalDelta X) :=
    canonicalFourFamilyTerminalDelta_sourceEnergy_pos X (by omega)
  have hbound := hframe _ hdelta
  rw [canonicalFourFamilyTerminalDelta_outputEnergy_zero] at hbound
  exact (not_le_of_gt (mul_pos hA hsrc)) hbound

/-- PRINCIPAL SUPPORT-ONLY NO-GO: genuine shift-support membership is not
sufficient for restricted observability of arbitrary real packets.
The admissible terminal witness is already in this support-only set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f3349c77d863f9fdc1dc66abcd013a32a2597c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
