# mkNoise1_envMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:728e0664-532b-3b5e-093d-051761229f8e",
  "kind": "theorem",
  "lexical_name": "mkNoise1_envMem",
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
  "slug": "mknoise1-envmem--57ac3a61af4ec5926dd967e8",
  "source": {
    "blob": "43db5626484df9bfd111783a509be06f30369160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ac3a61af4ec5926dd967e82840ac223bfa2d790c07fe9e519d5fd69193b81c",
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

Occurrence: `result:728e0664-532b-3b5e-093d-051761229f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mkNoise1_envMem (I : IntervalRat) (x : ℝ) (hx : x ∈ I) :
    envMemAffine (fun _ => x) (toAffineEnvConst I) (mkNoise1 I x) := by
  intro i
  -- All variables map to the same affine form: AffineForm.ofInterval I 0 1
  simp only [toAffineEnvConst]
  simp only [AffineForm.mem_affine, AffineForm.ofInterval, AffineForm.evalLinear]
  set mid := ((I.lo + I.hi) / 2 : ℚ) with hmid_def
  set rad := ((I.hi - I.lo) / 2 : ℚ) with hrad_def
  use 0
  constructor
  · norm_num
  · simp only [add_zero]
    -- coeffs = [rad] (single element: rad at index 0 since totalVars=1)
    simp only [List.ofFn_succ, Fin.val_zero, Fin.isValue, ↓reduceIte, List.ofFn_zero]
    -- Now we need: x = mid + linearSum [rad] [mkNoise1 I x]
    simp only [mkNoise1, List.singleton]
    split_ifs with hr
    · -- rad = 0: x = mid
      rw [linearSum_singleton]
      simp only [mul_zero, add_zero]
      have habs := abs_sub_mid_le_rad hx
      rw [abs_le] at habs
      have hle : x - mid ≤ 0 := by linarith [habs.2, hr]
      have hge : 0 ≤ x - mid := by linarith [habs.1, hr]
      linarith
    · -- rad ≠ 0: x = mid + rad * (x - mid) / rad
      rw [linearSum_singleton]
      have hrad_ne : (rad : ℝ) ≠ 0 := hr
      field_simp [hrad_ne]
      ring

/-! ### Golden Theorems for Single-Variable Affine Bounds -/

/-- **Golden Theorem for Affine Upper Bounds (Single Variable)**

    If `checkUpperBoundAffine1 e I c cfg = true` and domain validity holds, then
    `∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c`.

    This is the key theorem for certificate-driven verification using Affine arithmetic.
    The tighter bounds from affine arithmetic enable proving inequalities that are
    too loose for standard interval arithmetic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43db5626484df9bfd111783a509be06f30369160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
