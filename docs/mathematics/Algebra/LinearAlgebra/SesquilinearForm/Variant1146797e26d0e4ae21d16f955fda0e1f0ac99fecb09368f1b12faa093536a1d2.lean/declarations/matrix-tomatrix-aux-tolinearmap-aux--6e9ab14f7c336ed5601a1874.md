# Matrix.toMatrix₂Aux_toLinearMap₂'Aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9caf0a24-3b5b-e5eb-5c11-e0fd6317cfd6",
  "kind": "theorem",
  "lexical_name": "Matrix.toMatrix₂Aux_toLinearMap₂'Aux",
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
  "slug": "matrix-tomatrix-aux-tolinearmap-aux--6e9ab14f7c336ed5601a1874",
  "source": {
    "blob": "42bae6dc806fc117d684dd10ca0235f0250a36f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9ab14f7c336ed5601a187495570678af4ea34d1c24bb1cd6274ec007ab6f42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9caf0a24-3b5b-e5eb-5c11-e0fd6317cfd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.toMatrix₂Aux_toLinearMap₂'Aux (f : Matrix n m N₂) :
    LinearMap.toMatrix₂Aux R (fun i => Pi.single i 1)
        (fun j => Pi.single j 1) (f.toLinearMap₂'Aux σ₁ σ₂) =
      f := by
  ext i j
  simp_rw [LinearMap.toMatrix₂Aux_apply, Matrix.toLinearMap₂'Aux_single]

end CommSemiring

end AuxToMatrix

section ToMatrix'

/-! ### Bilinear maps over `n → R`

This section deals with the conversion between matrices and sesquilinear maps on `n → R`.
-/

variable [CommSemiring R] [AddCommMonoid N₂] [Module R N₂] [Semiring R₁] [Semiring R₂]
  [Semiring S₁] [Semiring S₂] [Module S₁ N₂] [Module S₂ N₂]
  [SMulCommClass S₁ R N₂] [SMulCommClass S₂ R N₂] [SMulCommClass S₂ S₁ N₂]
variable {σ₁ : R₁ →+* S₁} {σ₂ : R₂ →+* S₂}
variable [Fintype n] [Fintype m]
variable [DecidableEq n] [DecidableEq m]

variable (R)

/-- The linear equivalence between sesquilinear maps and `n × m` matrices -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42bae6dc806fc117d684dd10ca0235f0250a36f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
