# verify_bklnwF_exp_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2aff12a-54b7-6a56-762b-49abdae964ee",
  "kind": "theorem",
  "lexical_name": "verify_bklnwF_exp_lower",
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
  "slug": "verify-bklnwf-exp-lower--745a32b50da2ddcf2da8bad7",
  "source": {
    "blob": "e8e6964685d0107805620699734cb05073b18cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 750,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:745a32b50da2ddcf2da8bad7ad780d1cb8f8d54e338441d23c75c7dad07f2ca8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2aff12a-54b7-6a56-762b-49abdae964ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_bklnwF_exp_lower (b : Nat) (limit : Nat) (target : ℚ)
    (cfg : BKLNWSumConfig := {})
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (hb : b ≥ 1 := by norm_num)
    (hexppos : checkExpBLoGe1 b cfg.precision cfg.taylorDepth = true)
    (h_check : checkBKLNWExpLowerBound b limit target cfg = true) :
    target ≤ bklnwF (Real.exp (b : ℝ)) limit := by
  -- Get expB interval
  let bInterval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton b) cfg.precision
  let expB := expIntervalDyadic bInterval cfg.toDyadicConfig
  -- Show exp(b) ∈ expB
  have hexp : Real.exp (b : ℝ) ∈ expB := mem_expB_of_nat b cfg hprec
  -- Positivity
  have hpos : expB.toIntervalRat.lo > 0 := expB_lo_pos b hb cfg hprec hexppos
  -- Apply main correctness theorem
  have hmem := mem_bklnwSumDyadic hexp hpos limit cfg hprec
  -- Extract lower bound
  have hlo := IntervalDyadic.lo_le_of_mem hmem
  -- h_check gives us the lower bound
  simp only [checkBKLNWExpLowerBound, bklnwSumExpDyadic] at h_check
  have hbound := IntervalDyadic.lowerBoundedBy_spec h_check
  exact le_trans hbound hlo

/-! ### Correctness Theorems for Optimized Version

The optimized version computes the same mathematical sum but more efficiently.
We prove correctness by showing each optimized function contains the true value. -/

/-- One is in the one interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e6964685d0107805620699734cb05073b18cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
