# eq_of_eval_eq_on_gl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4c93a21ff31fd424c940287019246ae9a024a57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af8cd3d9-e5a7-0e5a-c603-d1ce21eefa7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:461dc435-aa14-a8fd-ed1d-48241631d76b",
  "kind": "theorem",
  "lexical_name": "eq_of_eval_eq_on_gl",
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
  "slug": "eq-of-eval-eq-on-gl--f6394747f27af95d2b1425ae",
  "source": {
    "blob": "e4c93a21ff31fd424c940287019246ae9a024a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 31,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantfe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6394747f27af95d2b1425ae2fa489fcc9f96cfde644c1e96cb105469a8484e1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantfe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:461dc435-aa14-a8fd-ed1d-48241631d76b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_eval_eq_on_gl {m k : Type*} [Fintype m] [DecidableEq m] [Field k] [Infinite k]
    {p q : MvPolynomial (m × m) k}
    (h : ∀ g : Matrix.GeneralLinearGroup m k,
           MvPolynomial.eval (fun ij : m × m => (g : Matrix m m k) ij.1 ij.2) p =
           MvPolynomial.eval (fun ij : m × m => (g : Matrix m m k) ij.1 ij.2) q) :
    p = q := by
  have hprod : (p - q) * Matrix.det (Matrix.mvPolynomialX m m k) = 0 := by
    apply MvPolynomial.funext
    intro s
    rw [map_mul, map_sub, map_zero, Matrix.eval_det_mvPolynomialX]
    by_cases hs_det : Matrix.det (Matrix.of fun i j : m => s (i, j)) = 0
    · rw [hs_det, mul_zero]
    · have hh : (eval s) p = (eval s) q :=
        h (Matrix.GeneralLinearGroup.mkOfDetNeZero
          (Matrix.of fun i j : m => s (i, j)) hs_det)
      rw [hh, sub_self, zero_mul]
  exact sub_eq_zero.mp
    ((mul_eq_zero.mp hprod).resolve_right (Matrix.det_mvPolynomialX_ne_zero m k))

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantfe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantfe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4c93a21ff31fd424c940287019246ae9a024a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
