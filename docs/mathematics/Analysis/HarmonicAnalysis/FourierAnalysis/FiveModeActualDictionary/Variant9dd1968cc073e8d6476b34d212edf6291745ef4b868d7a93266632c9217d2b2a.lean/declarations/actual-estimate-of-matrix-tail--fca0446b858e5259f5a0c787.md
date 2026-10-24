# actual_estimate_of_matrix_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:292fdba7-8849-5597-73c0-7255e776046a",
  "kind": "theorem",
  "lexical_name": "actual_estimate_of_matrix_tail",
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
  "slug": "actual-estimate-of-matrix-tail--fca0446b858e5259f5a0c787",
  "source": {
    "blob": "445c9f1dd6f68e5cb6d97fd281b5e31afa15e9b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variant9dd1968cc073e8d6476b34d212edf6291745ef4b868d7a93266632c9217d2b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca0446b858e5259f5a0c78729352ee2f4697fbdc94bc705a817ee82d379fcd8",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variant9dd1968cc073e8d6476b34d212edf6291745ef4b868d7a93266632c9217d2b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:292fdba7-8849-5597-73c0-7255e776046a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_estimate_of_matrix_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbound : ∀ A : ℝ, R ≤ A →
      -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_matrix_tail D R hR
    (fun A hRA => gamma_entry_integrability A (by linarith)) hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variant9dd1968cc073e8d6476b34d212edf6291745ef4b868d7a93266632c9217d2b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variant9dd1968cc073e8d6476b34d212edf6291745ef4b868d7a93266632c9217d2b2a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `445c9f1dd6f68e5cb6d97fd281b5e31afa15e9b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
