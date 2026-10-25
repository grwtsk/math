# Poly.denoteN_combine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b154a4e1-6568-4d72-293d-303f0b50a9bf",
  "kind": "theorem",
  "lexical_name": "Poly.denoteN_combine",
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
  "slug": "poly-denoten-combine--98da962b982a67ff91ab56ad",
  "source": {
    "blob": "5b4b1d163692971bbc6b0eb454763e06a0fc7c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98da962b982a67ff91ab56ad1e55609e6d8214f6bff97083533d74fd2cf2b30a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b154a4e1-6568-4d72-293d-303f0b50a9bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denoteN_combine {α} [NatModule α] (ctx : Context α) (p₁ p₂ : Poly)
    : p₁.NonnegCoeffs → p₂.NonnegCoeffs → (p₁.combine p₂).denoteN ctx = p₁.denoteN ctx + p₂.denoteN ctx := by
  fun_induction p₁.combine p₂ <;> intro h₁ h₂ <;> try simp [*, zero_add, add_zero]
  next hx _ h ih =>
    simp at hx
    simp +zetaDelta at h
    cases h₁; cases h₂
    next h₁ _ h₂ =>
    simp [ih h₁ h₂, *]
    rw [add_left_comm, add_assoc, ← add_assoc, ← add_nsmul, ← Int.toNat_add, Int.add_comm, h,
      Int.toNat_zero, zero_nsmul, zero_add] <;> assumption
  next hx _ h ih =>
    simp at hx
    cases h₁; cases h₂
    next hp₁ h₁ hp₂ h₂ =>
    simp +zetaDelta [*]
    rw [denoteN_add, ih h₁ h₂, Int.toNat_add hp₁ hp₂, add_nsmul]; ac_rfl; omega
  next ih =>
    cases h₁; next h₁ =>
    simp [ih h₁ h₂, *]; ac_rfl
  next ih =>
    cases h₂; next h₂ =>
    simp [ih h₁ h₂, *]; ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4b1d163692971bbc6b0eb454763e06a0fc7c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
