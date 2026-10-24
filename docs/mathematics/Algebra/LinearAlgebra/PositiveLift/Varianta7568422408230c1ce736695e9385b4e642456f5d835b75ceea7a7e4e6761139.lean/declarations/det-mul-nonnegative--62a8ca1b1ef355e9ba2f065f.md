# det_mul_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "561e649f5b6c5854d9a8bba1047a7cd94c90b8fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e5a9b46-e6ec-5c10-e495-51f763a29a59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e48e8bd-5038-cef9-e94f-2bd50669244b",
  "kind": "theorem",
  "lexical_name": "det_mul_nonnegative",
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
  "slug": "det-mul-nonnegative--62a8ca1b1ef355e9ba2f065f",
  "source": {
    "blob": "561e649f5b6c5854d9a8bba1047a7cd94c90b8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62a8ca1b1ef355e9ba2f065f5d5046c5ef8bce559d8e2d89503a991cd348a8ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e48e8bd-5038-cef9-e94f-2bd50669244b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_mul_nonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (B : Matrix (Fin N) (Fin k) ℝ)
    (hA : LeftOrderedNonnegative A)
    (hB : RightOrderedNonnegative B) :
    0 ≤ Matrix.det (A * B) := by
  have hs :
      0 ≤ ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) *
          Matrix.det (B.submatrix f id) := by
    apply Finset.sum_nonneg
    intro f _hf
    exact intermediate_product_nonnegative A B hA hB f
  rw [← cauchyBinet_all_functions] at hs
  exact
    (mul_nonneg_iff_of_pos_left
      (by positivity : 0 < (k.factorial : ℝ))).mp hs

/-- The finite lifted matrix before any determinant is taken. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561e649f5b6c5854d9a8bba1047a7cd94c90b8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
