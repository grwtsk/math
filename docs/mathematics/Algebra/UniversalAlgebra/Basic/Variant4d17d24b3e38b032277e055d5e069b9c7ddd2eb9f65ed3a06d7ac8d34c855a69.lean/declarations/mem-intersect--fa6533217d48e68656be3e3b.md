# mem_intersect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fc591ee-670c-4aaf-1db2-61d492605d05",
  "kind": "theorem",
  "lexical_name": "mem_intersect",
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
  "slug": "mem-intersect--fa6533217d48e68656be3e3b",
  "source": {
    "blob": "4ce885e891fa920e3dd2e4106d96906b2bc1d4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 600,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6533217d48e68656be3e3b05b2904219803eb7117edb8559f0ead8008e8a35",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fc591ee-670c-4aaf-1db2-61d492605d05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_intersect {x : ℝ} {I J : IntervalRat} (hI : x ∈ I) (hJ : x ∈ J) :
    ∃ K, intersect I J = some K ∧ x ∈ K := by
  simp only [mem_def] at hI hJ
  -- Work with the max/min at rational level
  have hle : max I.lo J.lo ≤ min I.hi J.hi := by
    have hmax_le : (I.lo : ℝ) ⊔ (J.lo : ℝ) ≤ x := sup_le hI.1 hJ.1
    have hle_min : x ≤ (I.hi : ℝ) ⊓ (J.hi : ℝ) := le_inf hI.2 hJ.2
    have hR : (I.lo : ℝ) ⊔ (J.lo : ℝ) ≤ (I.hi : ℝ) ⊓ (J.hi : ℝ) := le_trans hmax_le hle_min
    -- Convert back: on ℚ, max = sup and min = inf
    calc max I.lo J.lo = I.lo ⊔ J.lo := rfl
      _ ≤ I.hi ⊓ J.hi := by exact_mod_cast hR
      _ = min I.hi J.hi := rfl
  simp only [intersect, hle, ↓reduceDIte]
  refine ⟨⟨max I.lo J.lo, min I.hi J.hi, hle⟩, rfl, ?_⟩
  simp only [mem_def]
  constructor
  · -- Show (max I.lo J.lo : ℝ) ≤ x
    have h1 : max I.lo J.lo ≤ I.lo ∨ max I.lo J.lo = I.lo ∨ max I.lo J.lo = J.lo := by
      simp only [max_def]; split_ifs <;> simp
    cases le_or_gt I.lo J.lo with
    | inl h => simp only [max_eq_right h]; exact hJ.1
    | inr h => simp only [max_eq_left (le_of_lt h)]; exact hI.1
  · -- Show x ≤ (min I.hi J.hi : ℝ)
    cases le_or_gt I.hi J.hi with
    | inl h => simp only [min_eq_left h]; exact hI.2
    | inr h => simp only [min_eq_right (le_of_lt h)]; exact hJ.2

/-- If intersection returns some K, then K ⊆ I -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce885e891fa920e3dd2e4106d96906b2bc1d4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
