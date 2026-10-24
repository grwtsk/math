# restrictedDerivativePairing_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6898596-4c1a-e245-1ce2-fcc47d19cd22",
  "kind": "theorem",
  "lexical_name": "restrictedDerivativePairing_abs_le_tail",
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
  "slug": "restrictedderivativepairing-abs-le-tail--64993ede7688745d17fc069f",
  "source": {
    "blob": "e9fa96b797eca4b8a55386f3baf82e25a6796353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt01/Variant06319265d2e49fa14fd446ea5054d045db6966a3e8a3c19dbc0cc6fa1dd8513f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64993ede7688745d17fc069f30d4025124ad55c033f1b7adf3e94787661d749a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt01/Variant06319265d2e49fa14fd446ea5054d045db6966a3e8a3c19dbc0cc6fa1dd8513f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6898596-4c1a-e245-1ce2-fcc47d19cd22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictedDerivativePairing_abs_le_tail {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) (S : Set ℝ) (x y : ℝ) :
    |restrictedDerivativePairing S A x y| ≤ tailEnergyCoefficient Q / A ^ 2 := by
  have hQp : 0 < Q := by linarith
  exact (restrictedDerivativePairing_abs_le_energy (hQp.trans_le hQA) S x y).trans
    (actual_derivative_energy_le_tail hQp hQA)

/-- The actual low row keeps both logarithmic endpoints and pays exact derivative energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt01/Variant06319265d2e49fa14fd446ea5054d045db6966a3e8a3c19dbc0cc6fa1dd8513f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt01/Variant06319265d2e49fa14fd446ea5054d045db6966a3e8a3c19dbc0cc6fa1dd8513f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9fa96b797eca4b8a55386f3baf82e25a6796353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
