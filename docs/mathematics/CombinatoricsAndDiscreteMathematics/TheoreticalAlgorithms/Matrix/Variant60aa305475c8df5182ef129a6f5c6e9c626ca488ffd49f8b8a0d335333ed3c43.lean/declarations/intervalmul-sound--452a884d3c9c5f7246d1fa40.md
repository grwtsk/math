# intervalMul_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa508be-8e93-4f07-0ff5-82dc978d14f5",
  "kind": "theorem",
  "lexical_name": "intervalMul_sound",
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
  "slug": "intervalmul-sound--452a884d3c9c5f7246d1fa40",
  "source": {
    "blob": "4a0c77078e33a0c6e76ef7e317303eaf7214c045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:452a884d3c9c5f7246d1fa40a4823c6bd3574f1b4ba10e34107baf565b88342d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa508be-8e93-4f07-0ff5-82dc978d14f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalMul_sound (l1 h1 l2 h2 : Int) (x y : ℝ)
    (hx_lo : (l1 : ℝ) ≤ x) (hx_hi : x ≤ h1)
    (hy_lo : (l2 : ℝ) ≤ y) (hy_hi : y ≤ h2) :
    let (lo, hi) := IntervalMatrix.intervalMul l1 h1 l2 h2
    (lo : ℝ) ≤ x * y ∧ x * y ≤ hi := by
  simp only [IntervalMatrix.intervalMul]
  -- Apply mul_mem_corners with Int→ℝ casts
  have hcorners := mul_mem_corners ⟨hx_lo, hx_hi⟩ ⟨hy_lo, hy_hi⟩
  -- Convert the integer products to real
  have p1_eq : ((l1 * l2 : Int) : ℝ) = (l1 : ℝ) * l2 := Int.cast_mul l1 l2
  have p2_eq : ((l1 * h2 : Int) : ℝ) = (l1 : ℝ) * h2 := Int.cast_mul l1 h2
  have p3_eq : ((h1 * l2 : Int) : ℝ) = (h1 : ℝ) * l2 := Int.cast_mul h1 l2
  have p4_eq : ((h1 * h2 : Int) : ℝ) = (h1 : ℝ) * h2 := Int.cast_mul h1 h2
  -- min/max of integers cast to real = min/max of casted integers
  simp only [Int.cast_min, Int.cast_max, p1_eq, p2_eq, p3_eq, p4_eq]
  exact hcorners

/-- Scaled version of intervalMul_sound using intVal with exponents.
    If x ∈ [intVal l1 exp, intVal h1 exp] and y ∈ [intVal l2 exp, intVal h2 exp],
    then x * y ∈ [intVal lo (exp+exp), intVal hi (exp+exp)] where (lo, hi) = intervalMul l1 h1 l2 h2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0c77078e33a0c6e76ef7e317303eaf7214c045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
