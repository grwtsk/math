# baseChange_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:961d00d3-5117-b3ee-7ad7-837b2bb2ecfc",
  "kind": "theorem",
  "lexical_name": "baseChange_ext",
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
  "slug": "basechange-ext--b965b66d38ee691a205cf301",
  "source": {
    "blob": "711aa46e29855f20d8682bc875f0db74d0e5d122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b965b66d38ee691a205cf30108de398a15f6d31898070a1e0590bebd2b9b5931",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:961d00d3-5117-b3ee-7ad7-837b2bb2ecfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem baseChange_ext ⦃Q₁ Q₂ : QuadraticMap A (A ⊗[R] M₂) N₁⦄
    (h : ∀ m, Q₁ (1 ⊗ₜ m) = Q₂ (1 ⊗ₜ m)) :
    Q₁ = Q₂ := by
  replace h (a m) : Q₁ (a ⊗ₜ m) = Q₂ (a ⊗ₜ m) := by
    rw [← mul_one a, ← smul_eq_mul, ← smul_tmul', QuadraticMap.map_smul, QuadraticMap.map_smul, h]
  ext x
  induction x with
  | tmul => simp [h]
  | add x y hx hy =>
    have : Q₁.polarBilin = Q₂.polarBilin := by
      ext
      dsimp [polar]
      rw [← TensorProduct.tmul_add, h, h, h]
    replace := congr($this x y)
    dsimp [polar] at this
    linear_combination (norm := module) this + hx + hy

end CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711aa46e29855f20d8682bc875f0db74d0e5d122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
