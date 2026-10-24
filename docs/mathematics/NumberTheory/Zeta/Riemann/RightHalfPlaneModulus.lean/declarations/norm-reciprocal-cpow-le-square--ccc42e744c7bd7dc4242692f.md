# norm_reciprocal_cpow_le_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cad83ae3-55f0-dca8-902d-93eb5a0f934c",
  "kind": "theorem",
  "lexical_name": "norm_reciprocal_cpow_le_square",
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
  "slug": "norm-reciprocal-cpow-le-square--ccc42e744c7bd7dc4242692f",
  "source": {
    "blob": "b642c3ecd1f44223527afc00b57aec3324b06fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccc42e744c7bd7dc4242692f1e38a9b217b597df720274d1f0648861bf41881b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cad83ae3-55f0-dca8-902d-93eb5a0f934c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_reciprocal_cpow_le_square (t : ℝ) (ht : 1 ≤ t)
    (s : ℂ) (hs : 2 ≤ s.re) : ‖1 / (t : ℂ) ^ s‖ ≤ 1 / t ^ 2 := by
  have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ht
  rw [norm_div, norm_one, Complex.norm_cpow_eq_rpow_re_of_pos ht0]
  apply div_le_div_of_nonneg_left (by norm_num) (sq_pos_of_pos ht0)
  simpa only [Real.rpow_two] using Real.rpow_le_rpow_of_exponent_le ht hs

/-- Absolute convergence justifies every finite-index shift used below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b642c3ecd1f44223527afc00b57aec3324b06fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
