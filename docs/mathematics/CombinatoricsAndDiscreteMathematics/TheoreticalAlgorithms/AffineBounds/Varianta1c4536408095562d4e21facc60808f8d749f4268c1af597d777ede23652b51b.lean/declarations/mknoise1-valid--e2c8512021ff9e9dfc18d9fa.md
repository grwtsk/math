# mkNoise1_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f4e5938effabdf8018a26024c6640ecc161d66a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90430f12-e453-1076-1e64-303b93bb1134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95d66bed-3399-43b9-d166-34caa7b702af",
  "kind": "theorem",
  "lexical_name": "mkNoise1_valid",
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
  "slug": "mknoise1-valid--e2c8512021ff9e9dfc18d9fa",
  "source": {
    "blob": "5f4e5938effabdf8018a26024c6640ecc161d66a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2c8512021ff9e9dfc18d9fa0846c5cd501813065f0d9587090dfc4370af9754",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95d66bed-3399-43b9-d166-34caa7b702af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mkNoise1_valid (I : IntervalRat) (x : ℝ) (hx : x ∈ I) :
    AffineForm.validNoise (mkNoise1 I x) := by
  intro e he
  simp only [mkNoise1, List.singleton] at he
  rw [List.mem_singleton] at he
  subst he
  set mid := ((I.lo + I.hi) / 2 : ℚ) with hmid_def
  set rad := ((I.hi - I.lo) / 2 : ℚ) with hrad_def
  split_ifs with hr
  · -- rad = 0 case: eps = 0
    constructor <;> linarith
  · -- rad ≠ 0 case: need to show (x - mid) / rad ∈ [-1, 1]
    have habs := abs_sub_mid_le_rad hx
    have hrad_nonneg : (0 : ℝ) ≤ rad := by
      have hI := I.le
      have h : (0 : ℚ) ≤ (I.hi - I.lo) / 2 := by linarith
      exact_mod_cast h
    have hrad_pos : (0 : ℝ) < rad := lt_of_le_of_ne hrad_nonneg (Ne.symm hr)
    constructor
    · have h1 : -(rad : ℝ) ≤ x - mid := by rw [abs_le] at habs; exact habs.1
      calc -1 = -(rad : ℝ) / rad := by field_simp
        _ ≤ (x - mid) / rad := div_le_div_of_nonneg_right h1 (le_of_lt hrad_pos)
    · have h1 : x - mid ≤ rad := by rw [abs_le] at habs; exact habs.2
      calc (x - mid) / rad ≤ (rad : ℝ) / rad := div_le_div_of_nonneg_right h1 (le_of_lt hrad_pos)
        _ = 1 := by field_simp

/-- linearSum of a singleton list -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta1c4536408095562d4e21facc60808f8d749f4268c1af597d777ede23652b51b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4e5938effabdf8018a26024c6640ecc161d66a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
