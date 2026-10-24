# natTrailingDegree_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d8039f-c95e-8c40-7d8a-f661db37ab14",
  "kind": "lemma",
  "lexical_name": "natTrailingDegree_X_pow",
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
  "slug": "nattrailingdegree-x-pow--ed67b42a32916e4ff3c82a70",
  "source": {
    "blob": "1ee8123765a7d1f28b95e9af35576eaf21d7659f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 373,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed67b42a32916e4ff3c82a701e450c4d6a13c354d9e666e0678deece81c994af",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d8039f-c95e-8c40-7d8a-f661db37ab14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natTrailingDegree_X_pow (n : ℕ) :
    (X ^ n : R[X]).natTrailingDegree = n := by
  rw [X_pow_eq_monomial, natTrailingDegree_monomial one_ne_zero]

end NonzeroSemiring

section Ring

variable [Ring R]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variant3e92f607c4dc829438d1b14dc49fff6dc40b501d4e26a9a3edec7b1b8b9395c2.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee8123765a7d1f28b95e9af35576eaf21d7659f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
