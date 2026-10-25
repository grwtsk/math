# phaseConnection_loopIntegral_eq_scan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9531dc90-7ebd-eeaf-119a-5228144cc75f",
  "kind": "theorem",
  "lexical_name": "phaseConnection_loopIntegral_eq_scan",
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
  "slug": "phaseconnection-loopintegral-eq-scan--f4aab85b7dac34682899ae4c",
  "source": {
    "blob": "3903b52a6cf8f3197f5dd646d86e030e49646c48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variantf002e140a705b732ca9778860fd3150eeca7997d871829aaeab0bc495f4d4007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4aab85b7dac34682899ae4cfeabdbe31e72389c79619caf4ad97ed1a335bcfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variantf002e140a705b732ca9778860fd3150eeca7997d871829aaeab0bc495f4d4007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9531dc90-7ebd-eeaf-119a-5228144cc75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseConnection_loopIntegral_eq_scan
    (q : Cochain0 d k m)
    (ω : ScanTwist d k m)
    (p : EdgePath d k x x) :
    pathIntegral (phaseConnection q ω) p =
      pathIntegral ω.value p := by
  rw [show phaseConnection q ω = fun e => coboundary q e + ω.value e by rfl]
  rw [pathIntegral_add]
  rw [loopIntegral_coboundary_zero]
  simp

end Cellular
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variantf002e140a705b732ca9778860fd3150eeca7997d871829aaeab0bc495f4d4007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variantf002e140a705b732ca9778860fd3150eeca7997d871829aaeab0bc495f4d4007.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3903b52a6cf8f3197f5dd646d86e030e49646c48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
