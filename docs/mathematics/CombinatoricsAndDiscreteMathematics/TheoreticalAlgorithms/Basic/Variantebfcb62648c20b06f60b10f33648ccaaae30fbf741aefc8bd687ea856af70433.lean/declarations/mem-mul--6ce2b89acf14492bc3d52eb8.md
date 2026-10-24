# mem_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:627a6e7c-5516-ab06-ef0a-e64affd3ada0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e20c09c-ba83-6b57-0871-7048c1c8e099",
  "kind": "theorem",
  "lexical_name": "mem_mul",
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
  "slug": "mem-mul--6ce2b89acf14492bc3d52eb8",
  "source": {
    "blob": "4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 502,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce2b89acf14492bc3d52eb83685bf19f4a88664528d1f10e2f9d58b0f3a48cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e20c09c-ba83-6b57-0871-7048c1c8e099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_mul {a b : AffineForm} {eps : NoiseAssignment} {va vb : ℝ}
    (hvalid : validNoise eps)
    (ha : mem_affine a eps va) (hb : mem_affine b eps vb) :
    mem_affine (mul a b) eps (va * vb) := by
  -- Unpack membership
  obtain ⟨ea, hea, heqa⟩ := ha
  obtain ⟨eb, heb, heqb⟩ := hb

  -- Define the deviations (linear + error)
  let La := linearSum a.coeffs eps
  let Lb := linearSum b.coeffs eps
  let Da := La + ea  -- total deviation of a from c0
  let Db := Lb + eb  -- total deviation of b from c0

  -- The new error term
  let err_new := (a.c0 : ℝ) * eb + (b.c0 : ℝ) * ea + Da * Db

  use err_new
  constructor

  -- Part 1: Bound |err_new| ≤ new_r
  · simp only [mul]
    have h1 : |(a.c0 : ℝ) * eb| ≤ |(a.c0 : ℝ)| * (b.r : ℝ) := by rw [abs_mul]; gcongr
    have h2 : |(b.c0 : ℝ) * ea| ≤ |(b.c0 : ℝ)| * (a.r : ℝ) := by rw [abs_mul]; gcongr
    have h3 : |Da * Db| = |Da| * |Db| := abs_mul Da Db

    -- Bound |Da| and |Db| by deviationBound
    have hLa_bound : |La| ≤ (sumAbs a.coeffs : ℝ) := linearSum_bounded_weak a.coeffs eps hvalid
    have hLb_bound : |Lb| ≤ (sumAbs b.coeffs : ℝ) := linearSum_bounded_weak b.coeffs eps hvalid

    have hDa_bound : |Da| ≤ (deviationBound a : ℝ) := by
      calc |Da| = |La + ea| := rfl
        _ ≤ |La| + |ea| := abs_add_le _ _
        _ ≤ (sumAbs a.coeffs : ℝ) + (a.r : ℝ) := by linarith
        _ = (deviationBound a : ℝ) := by simp [deviationBound]; ring

    have hDb_bound : |Db| ≤ (deviationBound b : ℝ) := by
      calc |Db| = |Lb + eb| := rfl
        _ ≤ |Lb| + |eb| := abs_add_le _ _
        _ ≤ (sumAbs b.coeffs : ℝ) + (b.r : ℝ) := by linarith
        _ = (deviationBound b : ℝ) := by simp [deviationBound]; ring

    -- Combine bounds
    have hDaDb : |Da * Db| ≤ (deviationBound a : ℝ) * (deviationBound b : ℝ) := by
      rw [h3]
      apply mul_le_mul hDa_bound hDb_bound (abs_nonneg _)
      exact_mod_cast deviationBound_nonneg a

    -- Final bound
    have hfinal : |err_new| ≤ |(a.c0 : ℝ)| * (b.r : ℝ) + |(b.c0 : ℝ)| * (a.r : ℝ) +
                            (deviationBound a : ℝ) * (deviationBound b : ℝ) := by
      calc |err_new|
          = |(a.c0 : ℝ) * eb + (b.c0 : ℝ) * ea + Da * Db| := rfl
        _ ≤ |(a.c0 : ℝ) * eb + (b.c0 : ℝ) * ea| + |Da * Db| := abs_add_le _ _
        _ ≤ |(a.c0 : ℝ) * eb| + |(b.c0 : ℝ) * ea| + |Da * Db| := by linarith [abs_add_le ((a.c0 : ℝ) * eb) ((b.c0 : ℝ) * ea)]
        _ ≤ |(a.c0 : ℝ)| * (b.r : ℝ) + |(b.c0 : ℝ)| * (a.r : ℝ) + (deviationBound a : ℝ) * (deviationBound b : ℝ) := by linarith
    -- Cast to match the goal
    calc |err_new|
        ≤ |(a.c0 : ℝ)| * (b.r : ℝ) + |(b.c0 : ℝ)| * (a.r : ℝ) + (deviationBound a : ℝ) * (deviationBound b : ℝ) := hfinal
      _ = ((|a.c0| * b.r + |b.c0| * a.r + deviationBound a * deviationBound b : ℚ) : ℝ) := by
          simp only [deviationBound]; push_cast; rw [(Rat.cast_abs a.c0).symm, (Rat.cast_abs b.c0).symm]

  -- Part 2: Show va * vb = evalLinear (mul a b) eps + err_new
  · simp only [evalLinear, mul, linearSum_zipWithPad_scale]
    simp only [evalLinear] at heqa heqb
    rw [heqa, heqb]
    -- Algebra: (ca + La + ea) * (cb + Lb + eb) = ca*cb + (ca*Lb + cb*La) + (ca*eb + cb*ea + (La+ea)*(Lb+eb))
    push_cast
    ring

/-- Squaring is sound: if v is represented by a, then v*v is represented by sq a -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
