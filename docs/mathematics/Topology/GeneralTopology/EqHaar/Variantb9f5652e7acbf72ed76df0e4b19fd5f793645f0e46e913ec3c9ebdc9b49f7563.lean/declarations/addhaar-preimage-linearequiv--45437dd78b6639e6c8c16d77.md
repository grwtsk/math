# addHaar_preimage_linearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560c54be-aaa3-32db-26cf-b7696be1f618",
  "kind": "theorem",
  "lexical_name": "addHaar_preimage_linearEquiv",
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
  "slug": "addhaar-preimage-linearequiv--45437dd78b6639e6c8c16d77",
  "source": {
    "blob": "3ef415bffee55a89d8af50fea647b7b5afb1871a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 289,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45437dd78b6639e6c8c16d77ddc98ceb21754899aa375c6a15ba83c9a1f74793",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560c54be-aaa3-32db-26cf-b7696be1f618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_preimage_linearEquiv (f : E ≃ₗ[ℝ] E) (s : Set E) :
    μ (f ⁻¹' s) = ENNReal.ofReal |LinearMap.det (f.symm : E →ₗ[ℝ] E)| * μ s := by
  have A : LinearMap.det (f : E →ₗ[ℝ] E) ≠ 0 := (LinearEquiv.isUnit_det' f).ne_zero
  convert! addHaar_preimage_linearMap μ A s
  simp only [LinearEquiv.det_coe_symm]

/-- The preimage of a set `s` under a continuous linear equiv `f` has measure
equal to `μ s` times the absolute value of the inverse of the determinant of `f`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef415bffee55a89d8af50fea647b7b5afb1871a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
