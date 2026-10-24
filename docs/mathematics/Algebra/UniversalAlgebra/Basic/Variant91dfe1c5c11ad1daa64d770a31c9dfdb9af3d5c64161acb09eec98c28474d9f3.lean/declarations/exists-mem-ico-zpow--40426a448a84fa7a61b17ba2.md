# exists_mem_Ico_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d2c2561-0c56-8ba4-f617-d63b4a3adf4a",
  "kind": "theorem",
  "lexical_name": "exists_mem_Ico_zpow",
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
  "slug": "exists-mem-ico-zpow--40426a448a84fa7a61b17ba2",
  "source": {
    "blob": "8a89d0f191e70fe78dd0a0a0bfbf91443674663d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 235,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40426a448a84fa7a61b17ba2e6ea2ea0436fddfd01033f35d3085d4195cb4265",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d2c2561-0c56-8ba4-f617-d63b4a3adf4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_Ico_zpow (hx : 0 < x) (hy : 1 < y) : ∃ n : ℤ, x ∈ Ico (y ^ n) (y ^ (n + 1)) := by
  have he : ∃ m : ℤ, y ^ m ≤ x := by
    obtain ⟨N, hN⟩ := pow_unbounded_of_one_lt x⁻¹ hy
    use -N
    rw [zpow_neg y ↑N, zpow_natCast]
    exact ((inv_lt_comm₀ hx (lt_trans (inv_pos.2 hx) hN)).1 hN).le
  have hb : ∃ b : ℤ, ∀ m, y ^ m ≤ x → m ≤ b := by
    obtain ⟨M, hM⟩ := pow_unbounded_of_one_lt x hy
    refine ⟨M, fun m hm ↦ ?_⟩
    contrapose! hM
    rw [← zpow_natCast]
    exact le_trans (zpow_le_zpow_right₀ hy.le hM.le) hm
  obtain ⟨n, hn₁, hn₂⟩ := Int.exists_greatest_of_bdd hb he
  exact ⟨n, hn₁, lt_of_not_ge fun hge => (Int.lt_succ _).not_ge (hn₂ _ hge)⟩

/-- Every positive `x` is between two successive integer powers of
another `y` greater than one. This is the same as `exists_mem_Ico_zpow`,
but with ≤ and < the other way around. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant91dfe1c5c11ad1daa64d770a31c9dfdb9af3d5c64161acb09eec98c28474d9f3.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a89d0f191e70fe78dd0a0a0bfbf91443674663d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
