# lie_e_f_ne_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38f3b777-4842-2717-71c0-e5434cda753f",
  "kind": "lemma",
  "lexical_name": "lie_e_f_ne_aux₂",
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
  "slug": "lie-e-f-ne-aux--a0aa2decd4f0605791e92a99",
  "source": {
    "blob": "f17079d67583cd28e41ff91910667fe311e5932f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 260,
    "path": "GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0aa2decd4f0605791e92a9939004af5651863e490f467ed7aa1139fb3fc0d08",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38f3b777-4842-2717-71c0-e5434cda753f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma lie_e_f_ne_aux₂ :
    letI := P.indexNeg
    ⁅e i, f j⁆ᵀ (Sum.inr (-i)) = 0 := by
  let := P.indexNeg
  classical
  ext (k | k)
  · rw [Matrix.transpose_apply, lie_e_f_ne_aux₀, Pi.zero_apply]
  · have aux : ⁅e i, f j⁆ (.inr k) (.inr (-i)) = (⁅e i, f j⁆ * ω b) (.inr k) (.inr i) := by simp [ω]
    rw [Matrix.transpose_apply, aux, lie_e_f_mul_ω, ← (-ω b * ⁅e j, f i⁆).transpose_apply,
      Matrix.transpose_mul, Matrix.mul_apply', lie_e_f_ne_aux₁ hij.symm]
    simp

/-- Lemma 3.5 from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Relations/Variant6d900bad7d9bdc767df944feaf57ecd5da487ee032b9d4b88501843ca1e251f1.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17079d67583cd28e41ff91910667fe311e5932f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
