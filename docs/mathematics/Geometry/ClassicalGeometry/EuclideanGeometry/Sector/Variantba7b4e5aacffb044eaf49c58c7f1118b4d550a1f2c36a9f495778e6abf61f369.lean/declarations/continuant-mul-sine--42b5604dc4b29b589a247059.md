# continuant_mul_sine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eebecc34369d0a413bdec21c36422851d434871",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42e46c89-07c5-bbbb-d24e-3c4506d3c127",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53d0a77c-0f35-7d5a-7767-ba3021c09e09",
  "kind": "theorem",
  "lexical_name": "continuant_mul_sine",
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
  "slug": "continuant-mul-sine--42b5604dc4b29b589a247059",
  "source": {
    "blob": "7eebecc34369d0a413bdec21c36422851d434871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 32,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42b5604dc4b29b589a2470590433597a81eda2cced6e1d21d89d999a7293d1b7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d0a77c-0f35-7d5a-7767-ba3021c09e09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuant_mul_sine (η θ : ℝ) (n : ℕ) :
    continuant (2 * η * Real.cos θ) (η ^ 2) n * Real.sin θ =
      η ^ n * Real.sin (((n : ℝ) + 1) * θ) := by
  refine Nat.twoStepInduction ?_ ?_ ?_ n
  · simp [continuant]
  · simp only [continuant, pow_one, Nat.cast_one, one_add_one_eq_two]
    rw [Real.sin_two_mul]
    ring
  · intro m hm hm1
    have hs := sine_step (((m : ℝ) + 1) * θ) θ
    have h2 : ((m : ℝ) + 1) * θ + θ = ((m : ℝ) + 2) * θ := by ring
    have h3 : ((m : ℝ) + 1) * θ + 2 * θ = ((m : ℝ) + 3) * θ := by ring
    rw [h2, h3] at hs
    have e2 : ((((m + 1 : ℕ) : ℝ) + 1) * θ) = ((m : ℝ) + 2) * θ := by
      push_cast
      ring
    have e3 : ((((m + 2 : ℕ) : ℝ) + 1) * θ) = ((m : ℝ) + 3) * θ := by
      push_cast
      ring
    have hsNat : Real.sin ((((m + 2 : ℕ) : ℝ) + 1) * θ) =
        2 * Real.cos θ * Real.sin ((((m + 1 : ℕ) : ℝ) + 1) * θ) -
          Real.sin (((m : ℝ) + 1) * θ) := by
      rw [e2, e3]
      exact hs
    simp only [continuant]
    calc
      (2 * η * Real.cos θ * continuant (2 * η * Real.cos θ) (η ^ 2) (m + 1) -
          η ^ 2 * continuant (2 * η * Real.cos θ) (η ^ 2) m) * Real.sin θ =
        2 * η * Real.cos θ *
          (continuant (2 * η * Real.cos θ) (η ^ 2) (m + 1) * Real.sin θ) -
        η ^ 2 * (continuant (2 * η * Real.cos θ) (η ^ 2) m * Real.sin θ) := by ring
      _ = η ^ (m + 2) * Real.sin ((((m + 2 : ℕ) : ℝ) + 1) * θ) := by
        rw [hm, hm1, hsNat]
        simp only [pow_succ]
        ring

/-- In the open angular interval the signed continuant has the exact sine ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantba7b4e5aacffb044eaf49c58c7f1118b4d550a1f2c36a9f495778e6abf61f369.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebecc34369d0a413bdec21c36422851d434871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
