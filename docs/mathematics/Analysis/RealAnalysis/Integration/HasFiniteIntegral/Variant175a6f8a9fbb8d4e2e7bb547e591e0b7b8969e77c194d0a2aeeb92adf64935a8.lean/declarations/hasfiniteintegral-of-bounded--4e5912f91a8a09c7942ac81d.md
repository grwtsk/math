# hasFiniteIntegral_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f82fdf79-204d-e31d-de3f-9c81795207d3",
  "kind": "theorem",
  "lexical_name": "hasFiniteIntegral_of_bounded",
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
  "slug": "hasfiniteintegral-of-bounded--4e5912f91a8a09c7942ac81d",
  "source": {
    "blob": "ee358c2a5454c3de226096870a6caf7ce6131bd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 206,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5912f91a8a09c7942ac81dcb5a3f87fa06af803af096e7d8b03a6c6f99e143",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82fdf79-204d-e31d-de3f-9c81795207d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteIntegral_of_bounded [IsFiniteMeasure μ] {f : α → β} {C : ℝ}
    (hC : ∀ᵐ a ∂μ, ‖f a‖ ≤ C) : HasFiniteIntegral f μ :=
  (hasFiniteIntegral_const C).mono' hC

-- TODO: generalise this to f with codomain ε
-- requires generalising `norm_le_pi_norm` and friends to enorms
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee358c2a5454c3de226096870a6caf7ce6131bd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
