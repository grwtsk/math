# inverse_square_eq_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83bf39da-3f58-6575-9861-84ff7a91a80e",
  "kind": "theorem",
  "lexical_name": "inverse_square_eq_rpow",
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
  "slug": "inverse-square-eq-rpow--a4066dcf6cfacc13d9f0e6d3",
  "source": {
    "blob": "2a658dfe9db2e27d6c816286abb10a32ba5d6135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variant583a36a0aaf565c507f98201284a7d023d49fe73534017d526870575d5f63293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4066dcf6cfacc13d9f0e6d38ab5154985c79e848adecd447502087225b8c40e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variant583a36a0aaf565c507f98201284a7d023d49fe73534017d526870575d5f63293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83bf39da-3f58-6575-9861-84ff7a91a80e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_square_eq_rpow (t : ℝ) : (1/t^2:ℝ) = t^(-2:ℝ) := by
  rw [show (-2:ℝ) = ((-2:ℤ):ℝ) by norm_num,Real.rpow_intCast]
  simp [zpow_neg,one_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variant583a36a0aaf565c507f98201284a7d023d49fe73534017d526870575d5f63293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variant583a36a0aaf565c507f98201284a7d023d49fe73534017d526870575d5f63293.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a658dfe9db2e27d6c816286abb10a32ba5d6135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
