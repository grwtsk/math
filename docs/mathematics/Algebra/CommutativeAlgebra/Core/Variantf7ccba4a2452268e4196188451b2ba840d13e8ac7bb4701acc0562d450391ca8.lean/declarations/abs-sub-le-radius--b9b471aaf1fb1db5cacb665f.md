# abs_sub_le_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ffa524a-7d39-d91d-41ee-e5d148395ac1",
  "kind": "theorem",
  "lexical_name": "abs_sub_le_radius",
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
  "slug": "abs-sub-le-radius--b9b471aaf1fb1db5cacb665f",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1002,
    "line": 984,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b471aaf1fb1db5cacb665fc9a0d12201ff1ad54a41558abf19d042de4eb832",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ffa524a-7d39-d91d-41ee-e5d148395ac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 984–1002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_sub_le_radius (x : ℝ) (c : ℚ) (domain : IntervalRat)
    (hx : x ∈ domain) :
    |x - c| ≤ max (|(domain.hi : ℝ) - c|) (|(domain.lo : ℝ) - c|) := by
  simp only [IntervalRat.mem_def] at hx
  by_cases! hxc : (c : ℝ) ≤ x
  · rw [abs_of_nonneg (by linarith : (0 : ℝ) ≤ x - c)]
    have hxhi : x - c ≤ (domain.hi : ℝ) - c := by linarith
    calc x - c ≤ (domain.hi : ℝ) - c := hxhi
      _ ≤ |(domain.hi : ℝ) - c| := le_abs_self _
      _ ≤ max |(domain.hi : ℝ) - c| |(domain.lo : ℝ) - c| := le_max_left _ _
  · have h_neg : x - (c : ℝ) < 0 := by linarith
    rw [abs_of_neg h_neg]
    have hxlo : -(x - (c : ℝ)) ≤ (c : ℝ) - domain.lo := by linarith
    calc -(x - (c : ℝ)) ≤ (c : ℝ) - domain.lo := hxlo
      _ ≤ |c - (domain.lo : ℝ)| := le_abs_self _
      _ = |(domain.lo : ℝ) - c| := abs_sub_comm _ _
      _ ≤ max |(domain.hi : ℝ) - c| |(domain.lo : ℝ) - c| := le_max_right _ _

/-- Helper: polynomial evaluation bounded by triangle inequality -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L984).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
