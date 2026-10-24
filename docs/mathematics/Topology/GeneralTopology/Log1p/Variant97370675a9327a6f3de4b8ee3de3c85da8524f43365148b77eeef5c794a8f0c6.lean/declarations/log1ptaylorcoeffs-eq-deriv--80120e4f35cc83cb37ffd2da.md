# log1pTaylorCoeffs_eq_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a0df822-cc80-0ca2-95a6-6164314cb97f",
  "kind": "theorem",
  "lexical_name": "log1pTaylorCoeffs_eq_deriv",
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
  "slug": "log1ptaylorcoeffs-eq-deriv--80120e4f35cc83cb37ffd2da",
  "source": {
    "blob": "bf9e8892b67e403f0ebaf17412bc3ebafbeb336d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80120e4f35cc83cb37ffd2dab9205dcdc52da123f2eb728b01c8dff633bb2d4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0df822-cc80-0ca2-95a6-6164314cb97f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log1pTaylorCoeffs_eq_deriv (n i : ℕ) (hi_pos : 0 < i) (hi_le : i ≤ n) :
    (log1pTaylorCoeffs n i : ℝ) = iteratedDeriv i (fun x => Real.log (1 + x)) 0 / i.factorial := by
  simp only [log1pTaylorCoeffs, Nat.ne_of_gt hi_pos, ↓reduceIte, hi_le]
  -- The i-th derivative of log(1+x) at 0 is (-1)^(i-1) * (i-1)!
  -- So coeff = (-1)^(i-1) * (i-1)! / i! = (-1)^(i-1) / i
  -- Our formula: (-1)^(i+1) / i = (-1)^(i-1) / i (since (-1)^2 = 1)
  have hderiv : iteratedDeriv i (fun x => Real.log (1 + x)) 0 = ((-1 : ℝ)^(i - 1)) * (i - 1).factorial :=
    iteratedDeriv_log1p_zero (Nat.ne_of_gt hi_pos)
  rw [hderiv]
  -- Now simplify: (-1)^(i+1) / i = (-1)^(i-1) * (i-1)! / i!
  have hfact : (i.factorial : ℝ) = i * (i - 1).factorial := by
    have h := Nat.mul_factorial_pred (Nat.ne_of_gt hi_pos)
    simp only [← h, Nat.cast_mul]
  rw [hfact]
  have hi_ne : (i : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hi_pos)
  have hfact_ne : ((i - 1).factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
  field_simp
  -- (-1)^(i+1) * (i-1)! = (-1)^(i-1) * (i-1)!
  -- This holds since (-1)^(i+1) = (-1)^(i-1) * (-1)^2 = (-1)^(i-1)
  have hpow : ((-1 : ℝ)^(i + 1)) = ((-1 : ℝ)^(i - 1)) := by
    have h : i + 1 = (i - 1) + 2 := by omega
    rw [h, pow_add]
    simp only [pow_two, neg_one_mul, neg_neg, mul_one]
  -- The goal involves rational cast, need to handle carefully
  simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_neg, Rat.cast_one, Rat.cast_natCast]
  rw [hpow]
  field_simp [hi_ne]

/-- The polynomial evaluation of log1pTaylorPoly equals the Taylor sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9e8892b67e403f0ebaf17412bc3ebafbeb336d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
