# decayConstant_eq_neg_nine_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4447bfe3-cda4-fc47-42bc-d162e44bcb9b",
  "kind": "theorem",
  "lexical_name": "decayConstant_eq_neg_nine_half",
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
  "slug": "decayconstant-eq-neg-nine-half--14d1ab9113e0d7affacba356",
  "source": {
    "blob": "0fd98c2a69943e48e1598728a5f371405a588cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleAwareZeroDecay/Variante72b298015b96dce7d68afeec475b984b184ea5820f5448adf91b822710ad6e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d1ab9113e0d7affacba356caa65181b30bea2f3880003a712e8a9f3a365341",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleAwareZeroDecay/Variante72b298015b96dce7d68afeec475b984b184ea5820f5448adf91b822710ad6e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4447bfe3-cda4-fc47-42bc-d162e44bcb9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decayConstant_eq_neg_nine_half {A : ℝ} (hA : 0 < A) :
    decayConstant A = 408576 * A ^ (-(9 / 2 : ℝ)) * Real.exp (A / 2) := by
  have hs : A ^ 4 / A ^ (17 / 2 : ℝ) = A ^ (-(9 / 2 : ℝ)) := by
    rw [← Real.rpow_natCast A 4, ← Real.rpow_sub hA]
    norm_num
  rw [decayConstant, hs]

/-- The actual unnormalized source transform has cubic frequency decay with its
full radius denominator. Every A and z is quantified in the stated domains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleAwareZeroDecay/Variante72b298015b96dce7d68afeec475b984b184ea5820f5448adf91b822710ad6e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleAwareZeroDecay/Variante72b298015b96dce7d68afeec475b984b184ea5820f5448adf91b822710ad6e0.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fd98c2a69943e48e1598728a5f371405a588cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
