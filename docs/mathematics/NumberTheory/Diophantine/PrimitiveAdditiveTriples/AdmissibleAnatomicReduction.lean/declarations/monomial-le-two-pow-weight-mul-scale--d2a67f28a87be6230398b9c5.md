# monomial_le_two_pow_weight_mul_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe6c43e8-4780-5301-b784-f46c1ba42ecf",
  "kind": "theorem",
  "lexical_name": "monomial_le_two_pow_weight_mul_scale",
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
  "slug": "monomial-le-two-pow-weight-mul-scale--d2a67f28a87be6230398b9c5",
  "source": {
    "blob": "b03bc40563f4fbc0d88dfabc9a0d7d09411e881a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a67f28a87be6230398b9c50d4eec4b69f7dc8875f1d27ad276104992b20d33",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe6c43e8-4780-5301-b784-f46c1ba42ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem monomial_le_two_pow_weight_mul_scale {d : ℕ}
    {A x : Fin d → ℕ} (h : ∀ i, ClosedDyadic (x i) (A i)) :
    monomial x ≤ 2 ^ weightSum d * monomial A := by
  calc
    monomial x ≤ ∏ i : Fin d, (2 * A i) ^ (i.val + 1) := by
      unfold monomial
      apply Finset.prod_le_prod
      · simp
      · intro i hi
        gcongr
        exact (h i).2
    _ = ∏ i : Fin d, (2 ^ (i.val + 1) * A i ^ (i.val + 1)) := by
      apply Finset.prod_congr rfl
      intro i hi
      rw [mul_pow]
    _ = (∏ i : Fin d, 2 ^ (i.val + 1)) * monomial A := by
      rw [Finset.prod_mul_distrib]
      rfl
    _ = 2 ^ weightSum d * monomial A := by
      simp only [Finset.prod_pow_eq_pow_sum, weightSum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03bc40563f4fbc0d88dfabc9a0d7d09411e881a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
