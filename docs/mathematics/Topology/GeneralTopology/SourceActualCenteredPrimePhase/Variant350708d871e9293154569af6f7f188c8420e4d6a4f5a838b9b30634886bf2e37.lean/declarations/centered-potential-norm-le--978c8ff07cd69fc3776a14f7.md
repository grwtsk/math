# centered_potential_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:813d06c4-d942-17a1-af15-5261d1642c30",
  "kind": "theorem",
  "lexical_name": "centered_potential_norm_le",
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
  "slug": "centered-potential-norm-le--978c8ff07cd69fc3776a14f7",
  "source": {
    "blob": "86c33d3d48265f39daa69a192d053c9b5ac4ebe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:978c8ff07cd69fc3776a14f7a85b234d0d335c237d8b1168565e2ea9cb0cc580",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:813d06c4-d942-17a1-af15-5261d1642c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centered_potential_norm_le (A c t : ℝ) (hc : 1 < c) :
    ‖actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
      actualClosedPrimeLogPotential A (c : ℂ)‖ ≤
        2 * (actualRightLineMass c / Real.log 2) := by
  have hp := actualClosedPrimeLogPotential_norm_le A c t hc
  have hz := actualClosedPrimeLogPotential_norm_le A c 0 hc
  simp only [Complex.ofReal_zero, zero_mul, add_zero] at hz
  exact (norm_sub_le _ _).trans (by linarith)

/-- Centering keeps both moving endpoints, with twice the genuine original endpoint allowance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86c33d3d48265f39daa69a192d053c9b5ac4ebe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
