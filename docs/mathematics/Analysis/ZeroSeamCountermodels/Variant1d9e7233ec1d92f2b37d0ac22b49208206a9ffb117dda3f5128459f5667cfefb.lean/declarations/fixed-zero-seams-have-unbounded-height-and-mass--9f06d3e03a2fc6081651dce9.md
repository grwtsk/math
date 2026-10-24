# fixed_zero_seams_have_unbounded_height_and_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81e2d778-353d-b0d8-b3b7-0902d9dcfc45",
  "kind": "theorem",
  "lexical_name": "fixed_zero_seams_have_unbounded_height_and_mass",
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
  "slug": "fixed-zero-seams-have-unbounded-height-and-mass--9f06d3e03a2fc6081651dce9",
  "source": {
    "blob": "c6c8269c55e50e78719d2c7e456f14a4ebfe2efe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f06d3e03a2fc6081651dce99d90fb606cfa09785e82bd031f5e3f3cf3b7973c",
  "verification": {
    "reference": "docs/verification/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e2d778-353d-b0d8-b3b7-0902d9dcfc45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_zero_seams_have_unbounded_height_and_mass (C : ℝ) :
    ∃ M : ℝ, 0 < M ∧ Continuous (bump M) ∧ bump M 0 = 0 ∧ bump M 1 = 0 ∧
      (∀ x ∈ Set.Icc (0 : ℝ) 1, 0 ≤ bump M x) ∧
        C < bump M (1 / 2) ∧ C < ∫ x in (0 : ℝ)..1, bump M x := by
  let M := 6 * (max C 0 + 1)
  have hM : 0 < M := by dsimp [M]; linarith [le_max_right C 0]
  refine ⟨M, hM, bump_continuous M, (bump_endpoints M).1, (bump_endpoints M).2,
    fun x hx => bump_nonneg hM.le hx, ?_, ?_⟩
  · rw [bump_midpoint]
    dsimp [M]
    linarith [le_max_left C 0, le_max_right C 0]
  · rw [bump_integral]
    dsimp [M]
    linarith [le_max_left C 0]

end
end GRWTSK.RiemannHypothesis.Conversation.ZeroSeamCountermodels
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c8269c55e50e78719d2c7e456f14a4ebfe2efe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
