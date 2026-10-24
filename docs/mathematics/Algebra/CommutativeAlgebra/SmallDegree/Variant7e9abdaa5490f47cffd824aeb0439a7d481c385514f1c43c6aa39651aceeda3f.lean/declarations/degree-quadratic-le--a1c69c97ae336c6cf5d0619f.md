# degree_quadratic_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d906546-432f-7ee9-4a27-e65b49d61081",
  "kind": "theorem",
  "lexical_name": "degree_quadratic_le",
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
  "slug": "degree-quadratic-le--a1c69c97ae336c6cf5d0619f",
  "source": {
    "blob": "72427f847d84a208af46927bf544cf3dd5e71160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 96,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant7e9abdaa5490f47cffd824aeb0439a7d481c385514f1c43c6aa39651aceeda3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c69c97ae336c6cf5d0619f81b37d64a1a0c661d8d1c8caf78cc8bd23077b91",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SmallDegree/Variant7e9abdaa5490f47cffd824aeb0439a7d481c385514f1c43c6aa39651aceeda3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d906546-432f-7ee9-4a27-e65b49d61081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_quadratic_le : degree (C a * X ^ 2 + C b * X + C c) ≤ 2 := by
  simpa only [add_assoc] using!
    degree_add_le_of_degree_le (degree_C_mul_X_pow_le 2 a)
      (le_trans degree_linear_le <| WithBot.coe_le_coe.mpr one_le_two)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SmallDegree/Variant7e9abdaa5490f47cffd824aeb0439a7d481c385514f1c43c6aa39651aceeda3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant7e9abdaa5490f47cffd824aeb0439a7d481c385514f1c43c6aa39651aceeda3f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72427f847d84a208af46927bf544cf3dd5e71160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
