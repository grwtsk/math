# checkBKLNWSumLowerBound_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:914ba1bf-4827-d9e4-782a-0523ee380169",
  "kind": "theorem",
  "lexical_name": "checkBKLNWSumLowerBound_correct",
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
  "slug": "checkbklnwsumlowerbound-correct--f3fafca9f58d8d31e13677f3",
  "source": {
    "blob": "e8e6964685d0107805620699734cb05073b18cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 604,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3fafca9f58d8d31e13677f33689a655e42a55f53f5da6a3d19617f2cebd3d03",
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

Occurrence: `result:914ba1bf-4827-d9e4-782a-0523ee380169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkBKLNWSumLowerBound_correct (x_lo x_hi : ℚ) (hle : x_lo ≤ x_hi)
    (hpos : x_lo ≥ 1) (limit : Nat) (target : ℚ)
    (cfg : BKLNWSumConfig := {})
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (h_check : checkBKLNWSumLowerBound x_lo x_hi hle limit target cfg = true) :
    ∀ x : ℝ, x ∈ Set.Icc (x_lo : ℝ) x_hi → target ≤ bklnwF x limit := by
  intro x hx
  -- Construct the interval
  let I := IntervalDyadic.ofIntervalRat ⟨x_lo, x_hi, hle⟩ cfg.precision
  -- Show x ∈ I
  have hxI : x ∈ I := IntervalDyadic.mem_ofIntervalRat_of_Icc hle hx cfg.precision hprec
  -- Positivity of lo
  have hposI : I.toIntervalRat.lo > 0 := IntervalDyadic.ofIntervalRat_lo_pos hle hpos cfg.precision hprec
  -- Apply main correctness theorem
  have hmem := mem_bklnwSumDyadic hxI hposI limit cfg hprec
  -- Extract lower bound
  have hlo := IntervalDyadic.lo_le_of_mem hmem
  -- h_check says result.lowerBoundedBy target = true
  simp only [checkBKLNWSumLowerBound] at h_check
  have hbound := IntervalDyadic.lowerBoundedBy_spec h_check
  exact le_trans hbound hlo

/-! ### Bridge Theorems for exp(b) Case -/

/-- Membership in singleton interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e6964685d0107805620699734cb05073b18cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
