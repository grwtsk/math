# thetaPhiJetDet4Majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa5e18cc6c3c48e690fe9767cea00e8fcec4ddbc10a4bba256518c60baceef22",
  "kind": "def",
  "lexical_name": "thetaPhiJetDet4Majorant",
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
  "slug": "thetaphijetdet4majorant--7a27ecc914284c6e9d44c6b7",
  "source": {
    "blob": "f81bb188062d7a41ccdfb4f6b89db6a7ea7666b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a27ecc914284c6e9d44c6b7b734d82c0ad581d88b4aa0961c09885f2e18bdf3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa5e18cc6c3c48e690fe9767cea00e8fcec4ddbc10a4bba256518c60baceef22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiJetDet4Majorant (v : Fin 7 → ℝ) : ℝ :=
  v 0 * v 2 * v 4 * v 6 +
  v 0 * v 2 * (v 5) ^ 2 +
  v 0 * (v 3) ^ 2 * v 6 +
  2 * v 0 * v 3 * v 4 * v 5 +
  v 0 * (v 4) ^ 3 +
  (v 1) ^ 2 * v 4 * v 6 +
  (v 1) ^ 2 * (v 5) ^ 2 +
  2 * v 1 * v 2 * v 3 * v 6 +
  2 * v 1 * v 2 * v 4 * v 5 +
  2 * v 1 * (v 3) ^ 2 * v 5 +
  2 * v 1 * v 3 * (v 4) ^ 2 +
  (v 2) ^ 3 * v 6 +
  2 * (v 2) ^ 2 * v 3 * v 5 +
  (v 2) ^ 2 * (v 4) ^ 2 +
  3 * v 2 * (v 3) ^ 2 * v 4 +
  (v 3) ^ 4

/-- Coordinate boxes control the complete rank-four determinant perturbation
while retaining cancellation of the unperturbed determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6f122f3e2a001069fda98cda43153e5124aeec6d3cb0edb7d2a671f02fecea20.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81bb188062d7a41ccdfb4f6b89db6a7ea7666b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
