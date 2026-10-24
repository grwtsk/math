# verify_lower_bound_affine1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ff978e7-a5ee-665f-1c55-d2f6c76e778f",
  "kind": "theorem",
  "lexical_name": "verify_lower_bound_affine1",
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
  "slug": "verify-lower-bound-affine1--e5de54bd917a129c7fc83d5c",
  "source": {
    "blob": "43db5626484df9bfd111783a509be06f30369160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5de54bd917a129c7fc83d5c91c6ee49ff06d6a807542ff5782b72e4706f2086",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff978e7-a5ee-665f-1c55-d2f6c76e778f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_lower_bound_affine1 (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : AffineConfig)
    (hdom : evalDomainValidAffine e (toAffineEnvConst I) cfg)
    (h_check : checkLowerBoundAffine1 e I c cfg = true) :
    ∀ x ∈ I, c ≤ Expr.eval (fun _ => x) e := by
  intro x hx
  let ρ_real : Nat → ℝ := fun _ => x
  let ρ_affine := toAffineEnvConst I
  let eps := mkNoise1 I x
  have hvalid : AffineForm.validNoise eps := mkNoise1_valid I x hx
  have henv : envMemAffine ρ_real ρ_affine eps := mkNoise1_envMem I x hx
  have hmem_affine := evalIntervalAffine_correct e hsupp ρ_real ρ_affine eps hvalid henv cfg hdom
  have hmem := AffineForm.mem_toInterval_weak hvalid hmem_affine
  simp only [checkLowerBoundAffine1, decide_eq_true_eq] at h_check
  have hlo := hmem.1
  calc (c : ℝ)
      ≤ ((evalIntervalAffine e ρ_affine cfg).toInterval.lo : ℝ) := by exact_mod_cast h_check
    _ ≤ Expr.eval (fun _ => x) e := hlo

/-! ### Convenience Theorems for ExprSupported

For expressions that don't use `log`, domain validity is automatic. -/

/-- Convenience theorem for ExprSupported expressions (no log).
    Domain validity is automatic, so only the bound check is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43db5626484df9bfd111783a509be06f30369160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
