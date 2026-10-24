# actual_derivative_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb9136c3-05fd-26fc-428f-5b42723b4c8c",
  "kind": "theorem",
  "lexical_name": "actual_derivative_integrable",
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
  "slug": "actual-derivative-integrable--d1247815d331ff928c6d238d",
  "source": {
    "blob": "80cd2bb294916ac2f8306ba7d27a137ca245540d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 188,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1247815d331ff928c6d238dcf2121de29831a54d405a6ee870e0885bb6e1b91",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb9136c3-05fd-26fc-428f-5b42723b4c8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_derivative_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (deriv (normalizedTest explicitSecondDerivative A)) := by
  have ha : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc := (contDiff_one_iff_deriv.mp (normalizedTest_contDiff A ha)).2
  exact hc.integrable_of_hasCompactSupport (normalizedTest_hasCompactSupport A ha).deriv

/-- The actual manuscript test satisfies the Fourier decay estimate at every real frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cd2bb294916ac2f8306ba7d27a137ca245540d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
