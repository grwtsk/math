# intervalMul_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8ccf5ee529afc5eb69067839b4c883f2152e0ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76c8d0a8-8296-2588-896e-fff13edef87f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2835692-ad67-7dd0-ab4b-e6e11a959e3b",
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
  "slug": "intervalmul-sound--8b724cb6e984dc09aeebb270",
  "source": {
    "blob": "f8ccf5ee529afc5eb69067839b4c883f2152e0ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 346,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b724cb6e984dc09aeebb270f1ad6ada1d3702fa4436e10960e3469f55ee8f72",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2835692-ad67-7dd0-ab4b-e6e11a959e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–365.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ccf5ee529afc5eb69067839b4c883f2152e0ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
