# positive_power_preserves_integer_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bda5c9ee-5349-132b-2d47-9f5fa09d6bc1",
  "kind": "theorem",
  "lexical_name": "positive_power_preserves_integer_roots",
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
  "slug": "positive-power-preserves-integer-roots--aa0fb911cd2a02c9555681b0",
  "source": {
    "blob": "2636aaf1299560bcc8d8264e034f637753fb99b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 65,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa0fb911cd2a02c9555681b0d097249a1ab2a08df5b1fde810df07d39a2f30a5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda5c9ee-5349-132b-2d47-9f5fa09d6bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_power_preserves_integer_roots (p : Polynomial ℤ) (n : ℕ)
    (hn : n ≠ 0) (x : ℤ) : (p ^ n).eval x = 0 ↔ p.eval x = 0 := by
  simp [hn]

/-- Integer-root equivalence permits arbitrarily large declared degree. Observed
degree therefore requires a fixed presentation or a separate invariance theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Observation/Varianta4f9f66d4f95d306bcae0bd7a5a27d4e2e841998ce67bba008c48f83cb9f748c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2636aaf1299560bcc8d8264e034f637753fb99b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
