# aeval_one_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e07ac3f7709c71e358ca566ddd7a79b441b6f4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/868b92c82d9d19014cb2379810f0a9b17e831babf21c56a41014f25b6c740151.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcd61c16-5333-1c29-ba67-e1a278c3dc75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ed12cf4-4eeb-678e-3eb8-6ed95f6edbca",
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
  "slug": "aeval-one-tmul--9511a6f8d67a828b1c53f6cb",
  "source": {
    "blob": "5e07ac3f7709c71e358ca566ddd7a79b441b6f4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 128,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant868b92c82d9d19014cb2379810f0a9b17e831babf21c56a41014f25b6c740151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9511a6f8d67a828b1c53f6cb0ae12eae4b42d035fdc33b0b581d1a2a9dd42a06",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MvPolynomial/Variant868b92c82d9d19014cb2379810f0a9b17e831babf21c56a41014f25b6c740151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ed12cf4-4eeb-678e-3eb8-6ed95f6edbca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–138.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MvPolynomial/Variant868b92c82d9d19014cb2379810f0a9b17e831babf21c56a41014f25b6c740151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant868b92c82d9d19014cb2379810f0a9b17e831babf21c56a41014f25b6c740151.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e07ac3f7709c71e358ca566ddd7a79b441b6f4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
