# logSquare_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:177529d3-abfe-63a0-9e0d-c96d5aac67ac",
  "kind": "theorem",
  "lexical_name": "logSquare_monotoneOn",
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
  "slug": "logsquare-monotoneon--6111413c28a30de45edbe190",
  "source": {
    "blob": "487f7d507ce93f95394d04e1b779b236abf2bb04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6111413c28a30de45edbe190595cce95a4c6e3171bdc9c40beb944e997516245",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177529d3-abfe-63a0-9e0d-c96d5aac67ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSquare_monotoneOn : MonotoneOn (fun t : ℝ => (Real.log t) ^ 2) (Ici 1) := by
  intro a ha b _ hab
  exact pow_le_pow_left₀ (Real.log_nonneg ha)
    (Real.log_le_log (lt_of_lt_of_le zero_lt_one ha) hab) 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `487f7d507ce93f95394d04e1b779b236abf2bb04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
