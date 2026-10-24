# energy_derivative_strictly_negative_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:110cfbc8-d770-8c2d-5598-e7ce8ec61392",
  "kind": "theorem",
  "lexical_name": "energy_derivative_strictly_negative_neg",
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
  "slug": "energy-derivative-strictly-negative-neg--4bd9333e7926f4919445d335",
  "source": {
    "blob": "a0f8fb1906130fa6d1676c152247b89e724a5532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bd9333e7926f4919445d335d255ba4f6ee5084fc0d1b5806c8f0b0fa2351fb8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:110cfbc8-d770-8c2d-5598-e7ce8ec61392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_derivative_strictly_negative_neg :
    ∀ v ∈ v_negative, -2/5 * v * v ≤ (-1/250 : ℚ) := by
  certify_bound

/-! ## Part B: Univariate Energy Component Bounds -/

-- The Lyapunov function V = ½(v² + ωₙ²x²) = ½(v² + 4x²)
-- For |x|, |v| ≤ 1: V ∈ [0, 2.5]

-- v² is bounded on [-1, 1]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f8fb1906130fa6d1676c152247b89e724a5532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
