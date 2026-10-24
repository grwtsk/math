# monicVector_inner_flag_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3950f526-0b79-fe58-294b-c49a7f9f4cd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8c6c98b-c9d1-a4c2-a2f2-0c0f4897ad06",
  "kind": "theorem",
  "lexical_name": "monicVector_inner_flag_eq_zero",
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
  "slug": "monicvector-inner-flag-eq-zero--0992f5aa247d57a1aaf9a7cd",
  "source": {
    "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0992f5aa247d57a1aaf9a7cd8eeef7639242ca844f4ef0a6a32e6debf80521a3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8c6c98b-c9d1-a4c2-a2f2-0c0f4897ad06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monicVector_inner_flag_eq_zero {t : ℝ} (ht : 0 ≤ t) {j n : ℕ} (hn : n < j)
    (f : Lp ℂ 2 (momentMeasure t)) (hf : f ∈ polynomialFlag t ht n) :
    ⟪monicVector t ht j, f⟫_ℂ = 0 := by
  have hle : polynomialFlag t ht n ≤ (innerSL ℂ (monicVector t ht j)).toLinearMap.ker := by
    apply Submodule.span_le.mpr
    rintro x ⟨i, hi, rfl⟩
    exact InnerProductSpace.gramSchmidt_inv_triangular ℂ (powerVector t ht) (lt_of_le_of_lt hi hn)
  exact hle hf

/-- The normalized version retains exact lower-degree orthogonality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecd5644709417ba33995718873c494d071bc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
