# erf_positive_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fd12106-2e8d-ad1e-e5be-dcf04f8dfa72",
  "kind": "theorem",
  "lexical_name": "erf_positive_lower",
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
  "slug": "erf-positive-lower--5348b6aa66ebf73a7a4a131e",
  "source": {
    "blob": "63a52d465cb1644c8cd2ffa2896bcd4e0b7b1466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 123,
    "path": "GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5348b6aa66ebf73a7a4a131e0b52aeefc06a599ad06dbdcf3fe9ffaa04314b0b",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fd12106-2e8d-ad1e-e5be-dcf04f8dfa72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erf_positive_lower :
    ∀ x ∈ Set.Icc (0:ℝ) 1, (0 : ℚ) ≤ Real.erf x := by
  certify_bound

-- For at-the-money options, d₁ and d₂ are often near 0
-- erf is odd, so erf(-x) = -erf(x)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a52d465cb1644c8cd2ffa2896bcd4e0b7b1466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
