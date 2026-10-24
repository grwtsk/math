# thetaPhiModeChoiceSignedDet_two_zero_01_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78e33a7e-1b09-905c-0973-0e66979a5479",
  "kind": "theorem",
  "lexical_name": "thetaPhiModeChoiceSignedDet_two_zero_01_neg",
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
  "slug": "thetaphimodechoicesigneddet-two-zero-01-neg--c0ea8bcfa1fdb19c8e57d41e",
  "source": {
    "blob": "fd8e7c3f44cf07daf9c413c28751e7183bf16b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4b8f995c5988ddecde170d505c63fb85f0d748e56fe1d502e80277ac3622f42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0ea8bcfa1fdb19c8e57d41efaa914a7cb7a40364db47a383f7d7fe2d7e98925",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4b8f995c5988ddecde170d505c63fb85f0d748e56fe1d502e80277ac3622f42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78e33a7e-1b09-905c-0973-0e66979a5479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiModeChoiceSignedDet_two_zero_01_neg :
    thetaPhiModeChoiceSignedDet 2 0
        (fun j : Fin 2 => j.val) < 0 := by
  rw [thetaPhiModeChoiceSignedDet_two_zero_01]
  have hq := thetaPhiModeChoice_two_zero_01_cubic_pos
  have hp :
      0 < 4 * Real.pi *
        (768 * Real.pi ^ 3 - 2128 * Real.pi ^ 2 +
          1938 * Real.pi - 465) := by
    positivity
  linarith

/-- Therefore the sufficient criterion introduced by the finite mode
decomposition is not the correct all-rank source theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4b8f995c5988ddecde170d505c63fb85f0d748e56fe1d502e80277ac3622f42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4b8f995c5988ddecde170d505c63fb85f0d748e56fe1d502e80277ac3622f42e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd8e7c3f44cf07daf9c413c28751e7183bf16b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
