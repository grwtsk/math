# sqrt_cutoff_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "379082c72804437da5c6cd25eeac9c8b73a5bad5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:046f51e0-cb44-5845-ba7c-3496d1383cda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2a5e678-b20a-f06a-f25b-305f4b472223",
  "kind": "theorem",
  "lexical_name": "sqrt_cutoff_tail_le",
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
  "slug": "sqrt-cutoff-tail-le--5000941c3844c13ffaf283a3",
  "source": {
    "blob": "379082c72804437da5c6cd25eeac9c8b73a5bad5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 26,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5000941c3844c13ffaf283a3e9d3fa27d66f6672a2623edc2c528d3c859feef3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a5e678-b20a-f06a-f25b-305f4b472223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_cutoff_tail_le (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ) ^ 2) ≤
      2 * Real.sqrt (j : ℝ) := by
  have hY : 1 ≤ Nat.sqrt j := (Nat.sqrt_pos.mpr (by omega : 0 < j))
  have hY0 : (0 : ℝ) < Nat.sqrt j := by exact_mod_cast (show 0 < Nat.sqrt j by omega)
  have hY1 : (1 : ℝ) ≤ Nat.sqrt j := by exact_mod_cast hY
  have hr : Real.sqrt (j : ℝ) ≤ 2 * (Nat.sqrt j : ℝ) := by
    have h := Real.real_sqrt_le_nat_sqrt_succ (a := j)
    linarith
  have hm := mul_le_mul_of_nonneg_left hr (Real.sqrt_nonneg (j : ℝ))
  have hs := Real.sq_sqrt (Nat.cast_nonneg j)
  calc
    _ ≤ (j : ℝ) * (1 / (Nat.sqrt j : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (reciprocal_square_tail_le (Nat.sqrt j) (Nat.sqrt G) hY (Nat.sqrt_le_sqrt hjG))
        (Nat.cast_nonneg j)
    _ = (j : ℝ) / (Nat.sqrt j : ℝ) := by ring
    _ ≤ 2 * Real.sqrt (j : ℝ) := by
      apply (div_le_iff₀ hY0).mpr
      nlinarith

/-- The identical estimate stated with literal natural floors of the real square roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379082c72804437da5c6cd25eeac9c8b73a5bad5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
