# eventually_codisjoint_ker_pow_range_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d94e8b4b-3d39-c2f9-b79c-ba5a1600c8e7",
  "kind": "theorem",
  "lexical_name": "eventually_codisjoint_ker_pow_range_pow",
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
  "slug": "eventually-codisjoint-ker-pow-range-pow--f8b21d61177a2c5f2c0d34db",
  "source": {
    "blob": "5fb15940923be41eed15a2d29744240ea81df8b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 314,
    "path": "GRWTSK/Algebra/Module/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b21d61177a2c5f2c0d34dbc949df2b61b30f7a94ad2b22ee81fa2bd418248f",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleTheory/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d94e8b4b-3d39-c2f9-b79c-ba5a1600c8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_codisjoint_ker_pow_range_pow (f : Module.End R M) :
    ∀ᶠ n in atTop, Codisjoint (LinearMap.ker (f ^ n)) (LinearMap.range (f ^ n)) := by
  obtain ⟨n, hn : ∀ m, n ≤ m → LinearMap.range (f ^ n) = LinearMap.range (f ^ m)⟩ :=
    IsArtinian.monotone_stabilizes f.iterateRange
  refine eventually_atTop.mpr ⟨n, fun m hm ↦ codisjoint_iff.mpr ?_⟩
  simp_rw [← hn _ hm, Submodule.eq_top_iff', Submodule.mem_sup]
  intro x
  rsuffices ⟨y, hy⟩ : ∃ y, (f ^ m) ((f ^ n) y) = (f ^ m) x
  · exact ⟨x - (f ^ n) y, by simp [hy], (f ^ n) y, by simp⟩
  -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to change `mem_range` into `mem_range (f := _)`
  simp_rw [f.pow_apply n, f.pow_apply m, ← iterate_add_apply, ← f.pow_apply (m + n),
    ← f.pow_apply m, ← mem_range (f := _), ← hn _ (n.le_add_left m), hn _ hm]
  exact LinearMap.mem_range_self (f ^ m) x

/-- This is the Fitting decomposition of the module `M` with respect to the endomorphism `f`.

See also `LinearMap.isCompl_iSup_ker_pow_iInf_range_pow` for an alternative spelling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleTheory/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Module/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fb15940923be41eed15a2d29744240ea81df8b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
