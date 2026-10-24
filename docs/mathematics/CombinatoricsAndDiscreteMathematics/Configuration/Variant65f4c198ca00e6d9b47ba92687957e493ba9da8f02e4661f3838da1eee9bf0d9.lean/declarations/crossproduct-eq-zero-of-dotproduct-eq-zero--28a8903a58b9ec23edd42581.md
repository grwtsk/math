# crossProduct_eq_zero_of_dotProduct_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06341d47-a04f-6860-87c2-506c8b2afc74",
  "kind": "lemma",
  "lexical_name": "crossProduct_eq_zero_of_dotProduct_eq_zero",
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
  "slug": "crossproduct-eq-zero-of-dotproduct-eq-zero--28a8903a58b9ec23edd42581",
  "source": {
    "blob": "49f83a1401d6b840707153706b768b5e2bd1d8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 486,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a8903a58b9ec23edd42581e1835962fc139778e3c62a6cc6a30327de9acc59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06341d47-a04f-6860-87c2-506c8b2afc74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma crossProduct_eq_zero_of_dotProduct_eq_zero {a b c d : Fin 3 → K} (hac : a ⬝ᵥ c = 0)
    (hbc : b ⬝ᵥ c = 0) (had : a ⬝ᵥ d = 0) (hbd : b ⬝ᵥ d = 0) :
    crossProduct a b = 0 ∨ crossProduct c d = 0 := by
  by_contra h
  simp_rw [not_or, ← ne_eq, crossProduct_ne_zero_iff_linearIndependent] at h
  rw [← Matrix.of_row (![a,b]), ← Matrix.of_row (![c,d])] at h
  let A : Matrix (Fin 2) (Fin 3) K := .of ![a, b]
  let B : Matrix (Fin 2) (Fin 3) K := .of ![c, d]
  have hAB : A * B.transpose = 0 := by
    ext i j
    fin_cases i <;> fin_cases j <;> assumption
  replace hAB := rank_add_rank_le_card_of_mul_eq_zero hAB
  rw [rank_transpose, h.1.rank_matrix, h.2.rank_matrix, Fintype.card_fin, Fintype.card_fin] at hAB
  contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49f83a1401d6b840707153706b768b5e2bd1d8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
