# frobSq_hermitian_eq_sum_sq_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:556db070-5af8-d54e-4bdf-52dc228301be",
  "kind": "lemma",
  "lexical_name": "frobSq_hermitian_eq_sum_sq_eigenvalues",
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
  "slug": "frobsq-hermitian-eq-sum-sq-eigenvalues--f609d6326479a77d36945508",
  "source": {
    "blob": "69b4f5feca34fa33e5a689320390f72b87d984b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f609d6326479a77d369455085952ceeedf9ee52b5ac7b0b5807fbc7bffba52c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:556db070-5af8-d54e-4bdf-52dc228301be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frobSq_hermitian_eq_sum_sq_eigenvalues {A : Matrix n n 𝕜} (hA : A.IsHermitian) :
    frobSq A = ∑ i, (hA.eigenvalues i) ^ 2 := by
  -- A = U D Uᴴ ⟹ AᴴA = A² = U D² Uᴴ ⟹ tr(AᴴA) = ∑ λᵢ²
  unfold frobSq
  rw [hA.eq]
  conv_lhs => rw [hA.spectral_theorem, ← map_mul, conjStarAlgAut_apply,
    trace_mul_cycle, coe_star_mul_self, one_mul,
    diagonal_mul_diagonal, trace_diagonal]
  simp [sq]

end RHLinalg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant6b527b598b070bcb8c3e4f95870df8f064283c22718b024b2d0bee760ecd5bb8.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69b4f5feca34fa33e5a689320390f72b87d984b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
