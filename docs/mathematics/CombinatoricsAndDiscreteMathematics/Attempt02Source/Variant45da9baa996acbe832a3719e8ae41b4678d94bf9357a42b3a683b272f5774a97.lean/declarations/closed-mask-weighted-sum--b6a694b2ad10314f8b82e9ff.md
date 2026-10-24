# closed_mask_weighted_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9739afc4-997e-677a-40fc-70d5d86b70b7",
  "kind": "theorem",
  "lexical_name": "closed_mask_weighted_sum",
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
  "slug": "closed-mask-weighted-sum--b6a694b2ad10314f8b82e9ff",
  "source": {
    "blob": "2dc5776695baa4f39341b2610e76103112dc33eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02Source/Variant45da9baa996acbe832a3719e8ae41b4678d94bf9357a42b3a683b272f5774a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a694b2ad10314f8b82e9ffbeb92b1fdfccba492be93c1a926dd3cf78b8550e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt02Source/Variant45da9baa996acbe832a3719e8ae41b4678d94bf9357a42b3a683b272f5774a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9739afc4-997e-677a-40fc-70d5d86b70b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_mask_weighted_sum (N B : ℕ) (hBN : B ≤ N) (a F : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, (if n ≤ B then a n else 0) * F n) =
      ∑ n ∈ Finset.Icc 1 B, a n * F n := by
  classical
  have hs : Finset.Icc 1 B ⊆ Finset.Icc 1 N := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans hBN⟩
  calc
    _ = ∑ n ∈ Finset.Icc 1 B, (if n ≤ B then a n else 0) * F n := by
      symm
      apply Finset.sum_subset hs
      intro n hn hnot
      have hb : ¬n ≤ B := by
        intro hb
        exact hnot (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, hb⟩)
      simp [hb]
    _ = _ := Finset.sum_congr rfl (fun n hn => by simp [(Finset.mem_Icc.mp hn).2])

/-- No new endpoint outside the original inventory is introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt02Source/Variant45da9baa996acbe832a3719e8ae41b4678d94bf9357a42b3a683b272f5774a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02Source/Variant45da9baa996acbe832a3719e8ae41b4678d94bf9357a42b3a683b272f5774a97.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dc5776695baa4f39341b2610e76103112dc33eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
