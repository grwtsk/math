# cumulative_nat_of_unit_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24e9a0fae70f158e8b1c83e96d4b03f190da1922",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfa86d0d-1601-5c44-e9fb-4337f8f63166",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b589b98-fcdf-bbb4-11b8-0df15b042106",
  "kind": "theorem",
  "lexical_name": "cumulative_nat_of_unit_bound",
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
  "slug": "cumulative-nat-of-unit-bound--97771ec6ee993291246f53a6",
  "source": {
    "blob": "24e9a0fae70f158e8b1c83e96d4b03f190da1922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97771ec6ee993291246f53a6bdf5e976d04963bf4da8123a663e4a043e1f0774",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b589b98-fcdf-bbb4-11b8-0df15b042106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_nat_of_unit_bound (A : ℝ) (hA : 0 ≤ A)
    (hunit : ∀ t : ℝ, (Zeta23.Ncount t (t + 1) : ℝ) ≤
      A * Real.log (|t| + 3)) (n : ℕ) :
    (Zeta23.Ncount 0 (n : ℝ) : ℝ) ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 3) := by
  induction n with
  | zero => simp [Ncount_same]
  | succ n ih =>
    have hlog : Real.log ((n : ℝ) + 3) ≤ Real.log ((n : ℝ) + 4) :=
      Real.log_le_log (by positivity) (by linarith)
    have hlocal := hunit (n : ℝ)
    rw [abs_of_nonneg (Nat.cast_nonneg n)] at hlocal
    rw [Nat.cast_succ, Zeta23.Ncount_add (Nat.cast_nonneg n) (by linarith)]
    push_cast
    calc
      (Zeta23.Ncount 0 (n : ℝ) : ℝ) + (Zeta23.Ncount (n : ℝ) ((n : ℝ) + 1) : ℝ)
          ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 3) + A * Real.log ((n : ℝ) + 3) :=
        add_le_add ih hlocal
      _ ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 4) + A * Real.log ((n : ℝ) + 4) :=
        add_le_add (mul_le_mul_of_nonneg_left hlog (by positivity))
          (mul_le_mul_of_nonneg_left hlog hA)
      _ = ((n : ℝ) + 1) * A * Real.log ((n : ℝ) + 1 + 3) := by ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variantdbc731af040a8082b5376b83d7efee30c1f2b9d881166aebdc91323a2d3d033d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e9a0fae70f158e8b1c83e96d4b03f190da1922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
