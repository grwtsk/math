# aeval_one_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99d3bb1b-c2f2-a29b-edaa-93f2b341e6ab",
  "kind": "lemma",
  "lexical_name": "aeval_one_tmul",
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
  "slug": "aeval-one-tmul--9c51e15f30be5859b11ae613",
  "source": {
    "blob": "74706ebff826b23edb6c51e9030fc7b4f88143f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 136,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c51e15f30be5859b11ae613669117a58d150e866b034bc720ccebd915ca1636",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99d3bb1b-c2f2-a29b-edaa-93f2b341e6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aeval_one_tmul (f : σ → S) (p : MvPolynomial σ R) :
    (aeval fun x ↦ (1 ⊗ₜ[R] f x : N ⊗[R] S)) p = 1 ⊗ₜ[R] (aeval f) p := by
  induction p using MvPolynomial.induction_on with
  | C a =>
    simp only [algHom_C, Algebra.TensorProduct.algebraMap_apply]
    rw [← mul_one ((algebraMap R N) a), ← Algebra.smul_def, smul_tmul, Algebra.smul_def, mul_one]
  | add p q hp hq => simp [hp, hq, tmul_add]
  | mul_X p i h => simp [h]

variable (S σ ι) in
/-- `S[X] ⊗[R] R[Y] ≃ S[X, Y]` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74706ebff826b23edb6c51e9030fc7b4f88143f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
