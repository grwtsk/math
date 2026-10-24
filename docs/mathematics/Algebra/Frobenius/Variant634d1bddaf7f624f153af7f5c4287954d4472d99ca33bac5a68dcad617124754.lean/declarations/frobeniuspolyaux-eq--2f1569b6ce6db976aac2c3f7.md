# frobeniusPolyAux_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29a66311-9c50-6de1-4902-7e3f12e4b8fd",
  "kind": "theorem",
  "lexical_name": "frobeniusPolyAux_eq",
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
  "slug": "frobeniuspolyaux-eq--2f1569b6ce6db976aac2c3f7",
  "source": {
    "blob": "6ea93b0c41b922140d168b0ec6fff4e801ba9761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 107,
    "path": "GRWTSK/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1569b6ce6db976aac2c3f760127203799b3ae6757e278262fb7b77842a0a44",
  "verification": {
    "reference": "docs/verification/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29a66311-9c50-6de1-4902-7e3f12e4b8fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobeniusPolyAux_eq (n : ℕ) :
    frobeniusPolyAux p n =
      X (n + 1) - ∑ i in range n,
          ∑ j in range (p ^ (n - i)),
            (X i ^ p) ^ (p ^ (n - i) - (j + 1)) * frobeniusPolyAux p i ^ (j + 1) *
              C ↑((p ^ (n - i)).choose (j + 1) / p ^ (n - i - v p ⟨j + 1, Nat.succ_pos j⟩) *
                ↑p ^ (j - v p ⟨j + 1, Nat.succ_pos j⟩) : ℕ) :=
  by rw [frobeniusPolyAux, ← Fin.sum_univ_eq_sum_range]
#align witt_vector.frobenius_poly_aux_eq WittVector.frobeniusPolyAux_eq

/-- The polynomials that give the coefficients of `frobenius x`,
in terms of the coefficients of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Frobenius/Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ea93b0c41b922140d168b0ec6fff4e801ba9761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
