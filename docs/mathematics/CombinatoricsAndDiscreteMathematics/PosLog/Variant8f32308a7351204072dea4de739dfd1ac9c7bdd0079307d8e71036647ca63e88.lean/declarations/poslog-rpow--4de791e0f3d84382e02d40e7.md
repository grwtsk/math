# posLog_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce01342b-6130-c53e-1e3e-bad3b17eedb6",
  "kind": "theorem",
  "lexical_name": "posLog_rpow",
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
  "slug": "poslog-rpow--4de791e0f3d84382e02d40e7",
  "source": {
    "blob": "7814061a7716078ff4d755b158f6c07712a26b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4de791e0f3d84382e02d40e7f2670632c368c1d0683a2cc4b699b9066e982150",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce01342b-6130-c53e-1e3e-bad3b17eedb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem posLog_rpow {x α : ℝ} (hx : -1 ≤ x) (hα : 0 ≤ α) : log⁺ (x ^ α) = α * log⁺ x := by
  rcases le_or_gt x 0 with h | h
  · have h₁ : |x| ≤ 1 := abs_le.2 ⟨hx, h.trans zero_le_one⟩
    rw [(posLog_eq_zero_iff x).2 h₁, mul_zero, (posLog_eq_zero_iff _).2]
    exact (abs_rpow_le_abs_rpow x α).trans (rpow_le_one (abs_nonneg x) h₁ hα)
  · rw [posLog_apply, posLog_apply, log_rpow h, mul_max_of_nonneg _ _ hα, mul_zero]

/-- The function `log⁺` is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variant8f32308a7351204072dea4de739dfd1ac9c7bdd0079307d8e71036647ca63e88.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7814061a7716078ff4d755b158f6c07712a26b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
