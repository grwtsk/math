# leibniz_iff_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef57dd7692e7f4581a1fc9ceea854b0c0f2dd26d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2a43e5b-e1e7-a7ba-28df-67c836f7a4a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72823dfc-3ce5-1772-9314-23d452bc96eb",
  "kind": "theorem",
  "lexical_name": "leibniz_iff_X",
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
  "slug": "leibniz-iff-x--36f58468f39131acbebdb9ca",
  "source": {
    "blob": "ef57dd7692e7f4581a1fc9ceea854b0c0f2dd26d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f58468f39131acbebdb9ca14a61b050cb23c7ad95341d91f033e5b327333af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72823dfc-3ce5-1772-9314-23d452bc96eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leibniz_iff_X (D : MvPolynomial σ R →ₗ[R] A) (h₁ : D 1 = 0) :
    (∀ p q, D (p * q) = p • D q + q • D p) ↔ ∀ s i, D (monomial s 1 * X i) =
    (monomial s 1 : MvPolynomial σ R) • D (X i) + (X i : MvPolynomial σ R) • D (monomial s 1) := by
  refine ⟨fun H p i => H _ _, fun H => ?_⟩
  have hC : ∀ r, D (C r) = 0 := by intro r; rw [C_eq_smul_one, D.map_smul, h₁, smul_zero]
  have : ∀ p i, D (p * X i) = p • D (X i) + (X i : MvPolynomial σ R) • D p := by
    intro p i
    induction p using MvPolynomial.induction_on' with
    | monomial s r =>
      rw [← mul_one r, ← C_mul_monomial, mul_assoc, C_mul', D.map_smul, H, C_mul', smul_assoc,
        smul_add, D.map_smul, smul_comm r (X i)]
    | add p q hp hq => rw [add_mul, map_add, map_add, hp, hq, add_smul, smul_add, add_add_add_comm]
  intro p q
  induction q using MvPolynomial.induction_on with
  | C c =>
    rw [mul_comm, C_mul', hC, smul_zero, zero_add, D.map_smul, C_eq_smul_one, smul_one_smul]
  | add q₁ q₂ h₁ h₂ => simp only [mul_add, map_add, h₁, h₂, smul_add, add_smul]; abel
  | mul_X q i hq =>
    simp only [this, ← mul_assoc, hq, mul_smul, smul_add, add_assoc]
    rw [smul_comm (X i), smul_comm (X i)]

variable (R)

/-- The derivation on `MvPolynomial σ R` that takes value `f i` on `X i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef57dd7692e7f4581a1fc9ceea854b0c0f2dd26d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
