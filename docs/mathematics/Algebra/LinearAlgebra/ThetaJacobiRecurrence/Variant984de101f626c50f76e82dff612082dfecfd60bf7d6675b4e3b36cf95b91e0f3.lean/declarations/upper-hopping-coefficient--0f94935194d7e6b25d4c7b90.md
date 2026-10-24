# upper_hopping_coefficient

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
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25edf871-0fc4-1c92-f8e7-52dfe4b0d942",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84aa815d-0212-caa6-91cf-a9581d1359cf",
  "kind": "theorem",
  "lexical_name": "upper_hopping_coefficient",
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
  "slug": "upper-hopping-coefficient--0f94935194d7e6b25d4c7b90",
  "source": {
    "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f94935194d7e6b25d4c7b903bceaf3903dc6ffd101d2648a6fce828ea4e40ab",
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

Occurrence: `result:84aa815d-0212-caa6-91cf-a9581d1359cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_hopping_coefficient {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪orthogonalPolynomial t ht (n + 1),
      multiplicationMap t (basisDomainVector t ht n)⟫_ℂ =
        (hopping t ht n : ℂ) := by
  have hd : basisDomainVector t ht n = (‖monicVector t ht n‖ : ℂ)⁻¹ •
      monicDomainVector t ht n := Subtype.ext rfl
  rw [hd, map_smul]
  change ⟪(‖monicVector t ht (n + 1)‖ : ℂ)⁻¹ • monicVector t ht (n + 1),
    (‖monicVector t ht n‖ : ℂ)⁻¹ •
      multiplicationMap t (monicDomainVector t ht n)⟫_ℂ = _
  rw [inner_smul_left, inner_smul_right, monicVector_inner_multiplication ht n]
  simp only [Complex.conj_inv, Complex.conj_ofReal, hopping, Complex.ofReal_div]
  have hn : (‖monicVector t ht n‖ : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (monicVector_norm_pos ht n).ne'
  have hn1 : (‖monicVector t ht (n + 1)‖ : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (monicVector_norm_pos ht (n + 1)).ne'
  field_simp

/-- Symmetry retains the same real positive coefficient below the diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecd5644709417ba33995718873c494d071bc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
