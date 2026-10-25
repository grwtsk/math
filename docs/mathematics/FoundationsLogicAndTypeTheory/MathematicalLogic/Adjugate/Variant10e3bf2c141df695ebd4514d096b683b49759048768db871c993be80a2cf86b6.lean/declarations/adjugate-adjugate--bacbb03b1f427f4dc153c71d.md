# adjugate_adjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69e576f5b14db1e8ee5ba3bd88cfdd7f766b42ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b75106e9-5603-3600-3385-f81352a299f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d587ab9b-31fd-cb03-e905-edc29d654e55",
  "kind": "theorem",
  "lexical_name": "adjugate_adjugate",
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
  "slug": "adjugate-adjugate--bacbb03b1f427f4dc153c71d",
  "source": {
    "blob": "69e576f5b14db1e8ee5ba3bd88cfdd7f766b42ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 482,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bacbb03b1f427f4dc153c71d8da9b95369ffcfe2519848597c7ae98c4c7f4045",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d587ab9b-31fd-cb03-e905-edc29d654e55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjugate_adjugate (A : Matrix n n α) (h : Fintype.card n ≠ 1) :
    adjugate (adjugate A) = det A ^ (Fintype.card n - 2) • A := by
  -- get rid of the `- 2`
  rcases h_card : Fintype.card n with _ | n'
  · subsingleton [Fintype.card_eq_zero_iff.mp h_card]
  cases n'
  · exact (h h_card).elim
  rw [← h_card]
  -- express `A` as an evaluation of a polynomial in n^2 variables, and solve in the polynomial ring
  -- where `A'.det` is non-zero.
  let A' := mvPolynomialX n n ℤ
  suffices adjugate (adjugate A') = det A' ^ (Fintype.card n - 2) • A' by
    rw [← mvPolynomialX_mapMatrix_aeval ℤ A, ← AlgHom.map_adjugate, ← AlgHom.map_adjugate, this,
      ← AlgHom.map_det, ← map_pow (MvPolynomial.aeval fun p : n × n ↦ A p.1 p.2),
      AlgHom.mapMatrix_apply, AlgHom.mapMatrix_apply, Matrix.map_smul' _ _ _ (map_mul _)]
  have h_card' : Fintype.card n - 2 + 1 = Fintype.card n - 1 := by simp [h_card]
  have is_reg : IsSMulRegular (MvPolynomial (n × n) ℤ) (det A') := fun x y =>
    mul_left_cancel₀ (det_mvPolynomialX_ne_zero n ℤ)
  apply is_reg.matrix
  simp only
  rw [smul_smul, ← pow_succ', h_card', det_smul_adjugate_adjugate]

/-- A weaker version of `Matrix.adjugate_adjugate` that uses `Nontrivial`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant10e3bf2c141df695ebd4514d096b683b49759048768db871c993be80a2cf86b6.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e576f5b14db1e8ee5ba3bd88cfdd7f766b42ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
