# endpointWitness_extra_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc57bf7f-4ce4-4ff4-c1ea-fe5dbf93bc70",
  "kind": "theorem",
  "lexical_name": "endpointWitness_extra_root",
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
  "slug": "endpointwitness-extra-root--a00c7b281a1d349923bbd74d",
  "source": {
    "blob": "28d8456db1dc7c6243b51275b8216e3f1ff89c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00c7b281a1d349923bbd74daa0b64d7cc24822e7bf688377950eb3f957f70c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc57bf7f-4ce4-4ff4-c1ea-fe5dbf93bc70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpointWitness_extra_root :
    (endpointWitnessFactor * endpointWitnessLinear).eval (1 / 4 : ℚ) = 0 ∧
      endpointWitnessLinear.eval (1 / 4 : ℚ) ≠ 0 := by
  have hq : endpointWitnessFactor.eval (1 / 4 : ℚ) = 0 := by
    norm_num [endpointWitnessFactor, Polynomial.eval_add, Polynomial.eval_sub]
  constructor
  · rw [Polynomial.eval_mul, hq]
    simp
  · norm_num [endpointWitnessLinear, Polynomial.eval_sub]

/-- **Exact hostile witness.** Strict positivity of a factor at both
Farey endpoints preserves the oriented certificate, but does not imply
equality of rational zero sets. At x=1/4 the product vanishes while the
linear polynomial is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d8456db1dc7c6243b51275b8216e3f1ff89c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
