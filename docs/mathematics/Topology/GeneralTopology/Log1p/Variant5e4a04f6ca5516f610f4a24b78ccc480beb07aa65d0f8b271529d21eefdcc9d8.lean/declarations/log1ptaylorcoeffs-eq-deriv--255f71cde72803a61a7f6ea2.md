# log1pTaylorCoeffs_eq_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c3d0d28-fcaf-c3a2-a675-3e2571325e70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:491e7454-9b80-3a5e-9fd9-487eb73a8aeb",
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
  "slug": "log1ptaylorcoeffs-eq-deriv--255f71cde72803a61a7f6ea2",
  "source": {
    "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:255f71cde72803a61a7f6ea2261ca8d3b2006c0c8144594410e55d7a70e0f990",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:491e7454-9b80-3a5e-9fd9-487eb73a8aeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–171.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
