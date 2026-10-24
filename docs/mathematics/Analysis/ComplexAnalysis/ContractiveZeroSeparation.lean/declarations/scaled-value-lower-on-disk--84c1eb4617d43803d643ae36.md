# scaled_value_lower_on_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9d7f4ab-6727-1f33-641c-1cc2080267db",
  "kind": "theorem",
  "lexical_name": "scaled_value_lower_on_disk",
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
  "slug": "scaled-value-lower-on-disk--84c1eb4617d43803d643ae36",
  "source": {
    "blob": "d92d23c8dc21df41c463ad79564330e50484b45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/Analysis/Complex/ContractiveZeroSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84c1eb4617d43803d643ae3606c90f422a771c0784b1af43c294d6183dedb0da",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9d7f4ab-6727-1f33-641c-1cc2080267db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_value_lower_on_disk (f : ℂ → ℂ) (a c z root : ℂ) (r q : ℝ)
    (rootZero : f root = 0) (rootMember : root ∈ closedBall c r)
    (member : z ∈ closedBall c r)
    (differentiable : ∀ w ∈ closedBall c r, DifferentiableAt ℂ f w)
    (derivativeBound : ∀ w ∈ closedBall c r, ‖1 - a * deriv f w‖ ≤ q) :
    (1 - q) * ‖z - root‖ ≤ ‖a * f z‖ :=
  scaled_value_lower_of_pair f a z root q rootZero
    (correction_lipschitz f a c r q differentiable derivativeBound z member root rootMember)

/-- An upper bound on the multiplier converts scaled separation to actual value separation.
The sign of L is unrestricted; positivity is a separate consequence when needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ContractiveZeroSeparation.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92d23c8dc21df41c463ad79564330e50484b45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
