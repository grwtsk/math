# correction_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9ecf622-8ad7-76a8-4aa3-59c9c3f3b322",
  "kind": "theorem",
  "lexical_name": "correction_lipschitz",
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
  "slug": "correction-lipschitz--00433aeaf48b9252394f77d4",
  "source": {
    "blob": "48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00433aeaf48b9252394f77d42c09962fa1ec768dc9f532b302d106e3c66b3972",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9ecf622-8ad7-76a8-4aa3-59c9c3f3b322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_lipschitz (f : ℂ → ℂ) (A c : ℂ) (r q : ℝ)
    (hf : ∀ z ∈ closedBall c r, DifferentiableAt ℂ f z)
    (hdefect : ∀ z ∈ closedBall c r, ‖1 - A * deriv f z‖ ≤ q)
    (z : ℂ) (hz : z ∈ closedBall c r) (w : ℂ) (hw : w ∈ closedBall c r) :
    ‖correction f A z - correction f A w‖ ≤ q * ‖z - w‖ :=
  (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u hu => (hasDerivAt_correction f A u (hf u hu)).hasDerivWithinAt)
    hdefect hw hz

/-- Existence, uniqueness, and an a posteriori location bound are conclusions.
The self-map inequality may be an equality, but q<1 is always strict. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
