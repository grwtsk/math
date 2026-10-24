# softmax_algebraic_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aefd7b7119841767c017e04b90beb68ef213f1cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44fdf0a5-f77c-fff9-aee4-d3614455042d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:856ddcfc-6185-a362-8777-169316a85500",
  "kind": "theorem",
  "lexical_name": "softmax_algebraic_identity",
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
  "slug": "softmax-algebraic-identity--a0f396f5b0e2dc6d1a814b4d",
  "source": {
    "blob": "aefd7b7119841767c017e04b90beb68ef213f1cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0f396f5b0e2dc6d1a814b4d15ed360608cda95d3f9e558c0d51391d87a6313a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856ddcfc-6185-a362-8777-169316a85500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem softmax_algebraic_identity (x : List ℝ) (k : Nat) (hk : k < x.length)
    (hsum : (x.map Real.exp).sum ≠ 0) :
    Real.softmax x k = 1 / ((x.map (fun xj => Real.exp (xj - x[k]!))).sum) := by
  unfold Real.softmax
  -- Key facts about exp
  have hexp_pos : Real.exp (x[k]!) > 0 := Real.exp_pos _
  have hexp_ne : Real.exp (x[k]!) ≠ 0 := ne_of_gt hexp_pos
  -- Sum of shifted exponentials is positive
  have hsum_shift_pos : (x.map (fun xj => Real.exp (xj - x[k]!))).sum > 0 := by
    apply List.sum_pos
    · intro y hy
      obtain ⟨xj, _, rfl⟩ := List.mem_map.mp hy
      exact Real.exp_pos _
    · intro hempty
      have hnil := List.map_eq_nil_iff.mp hempty
      simp [List.length_eq_zero_iff.mpr hnil] at hk
  have hsum_shift_ne : (x.map (fun xj => Real.exp (xj - x[k]!))).sum ≠ 0 :=
    ne_of_gt hsum_shift_pos
  -- Main calculation: exp(xk) / Σexp(xj) = 1 / Σexp(xj - xk)
  -- Key: Σexp(xj) / exp(xk) = Σ(exp(xj) / exp(xk)) = Σexp(xj - xk)
  have key : (x.map Real.exp).sum / Real.exp (x[k]!) =
             (x.map (fun xj => Real.exp (xj - x[k]!))).sum := by
    rw [div_eq_iff hexp_ne]
    rw [← List.sum_map_mul_right]
    congr 1
    simp_rw [Real.exp_sub, div_mul_cancel₀ _ hexp_ne]
  calc Real.exp x[k]! / (x.map Real.exp).sum
      = 1 / ((x.map Real.exp).sum / Real.exp x[k]!) := by field_simp
    _ = 1 / (x.map (fun xj => Real.exp (xj - x[k]!))).sum := by rw [key]

/--
  **Main Theorem: Softmax Soundness**

  If inputs `v` are within `I`, then `softmax(v)` is within `softmax(I)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aefd7b7119841767c017e04b90beb68ef213f1cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
