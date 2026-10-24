# submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "041831e8e0496e76a7102552663eb6caeb73884a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5374bbee-8060-0ca2-da91-154382cb66a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58d10ff8-5443-15d0-9a89-0ac2e1068aa1",
  "kind": "theorem",
  "lexical_name": "submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det'",
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
  "slug": "submatrix-succabove-det-eq-negonepow-submatrix-succabove-det--0fd764a9bd1b7d091a57b89a",
  "source": {
    "blob": "041831e8e0496e76a7102552663eb6caeb73884a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fd764a9bd1b7d091a57b89a9295468d43984cdccedc1b9a3b1d119134c75302",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d10ff8-5443-15d0-9a89-0ac2e1068aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det' {n : ℕ}
    (M : Matrix (Fin n) (Fin (n + 1)) R) (hv : ∀ i, ∑ j, M i j = 0) (j₁ j₂ : Fin (n + 1)) :
    (M.submatrix id (Fin.succAbove j₁)).det =
      Int.negOnePow (j₁ - j₂) • (M.submatrix id (Fin.succAbove j₂)).det := by
  rw [← det_transpose, transpose_submatrix,
    submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det M.transpose ?_ j₁ j₂,
    ← det_transpose, transpose_submatrix, transpose_transpose]
  ext
  simp_rw [Finset.sum_apply, transpose_apply, hv, Pi.zero_apply]

/-- Let `M` be a `(n+1) × (n+1)` matrix. Assume that all columns, but the `j₀`-column, sums to zero.
Then its determinant is, up to sign, the sum of the `j₀`-column times the determinant of the
matrix obtained by deleting any row and the `j₀`-column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `041831e8e0496e76a7102552663eb6caeb73884a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
