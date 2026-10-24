# smaller_output_error_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1fc5741-218f-b54c-f47f-3e168f3c987d",
  "kind": "theorem",
  "lexical_name": "smaller_output_error_rejected",
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
  "slug": "smaller-output-error-rejected--b67ed89269550a0103f371f5",
  "source": {
    "blob": "89a561698eb98578445743d7d64623419e673e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b67ed89269550a0103f371f5299ac0110ba7e5139f3d24a82270b98fef79ad6e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1fc5741-218f-b54c-f47f-3e168f3c987d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smaller_output_error_rejected (tolerance : ℚ) :
    RationalPowerEvaluation.verify 2 (sourceExponent center) (schedule 2) tolerance
      { secondOutput with error := 0 } = false := by
  cases hv : RationalPowerEvaluation.verify 2 (sourceExponent center)
      (schedule 2) tolerance { secondOutput with error := 0 } with
  | false => rfl
  | true =>
      have he := (RationalPowerEvaluation.verify_iff 2 (sourceExponent center)
        (schedule 2) tolerance { secondOutput with error := 0 }).mp hv
      have hout := he.2.2
      rw [second_endpoint_compute] at hout
      have herr := congrArg State.error hout
      norm_num [secondOutput] at herr

/-- Third endpoint is still needed in block zero; two leaf proofs are not a block proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89a561698eb98578445743d7d64623419e673e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
