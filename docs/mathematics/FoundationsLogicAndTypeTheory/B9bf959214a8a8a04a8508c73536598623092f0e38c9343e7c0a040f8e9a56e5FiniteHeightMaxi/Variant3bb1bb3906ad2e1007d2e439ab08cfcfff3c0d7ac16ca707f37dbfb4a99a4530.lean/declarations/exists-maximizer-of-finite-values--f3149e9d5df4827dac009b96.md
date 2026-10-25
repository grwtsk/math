# exists_maximizer_of_finite_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baa4dfef-d61a-2e0a-5502-61d77e55e378",
  "kind": "theorem",
  "lexical_name": "exists_maximizer_of_finite_values",
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
  "slug": "exists-maximizer-of-finite-values--f3149e9d5df4827dac009b96",
  "source": {
    "blob": "422917545d71a0211423ebaca12ffa0764efad0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3149e9d5df4827dac009b96ff6be5a213619de67a040dd202002086d001aa1d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baa4dfef-d61a-2e0a-5502-61d77e55e378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_maximizer_of_finite_values [Nonempty α] {f : α → ℝ}
    (hfinite : (Set.range f).Finite) : ∃ x, IsMaximizer f x := by
  classical
  obtain ⟨x₀⟩ := ‹Nonempty α›
  let s := hfinite.toFinset
  have hs : s.Nonempty := ⟨f x₀, hfinite.mem_toFinset.mpr ⟨x₀, rfl⟩⟩
  obtain ⟨v, hv, hmax⟩ := Finset.exists_max_image s id hs
  obtain ⟨x, rfl⟩ := hfinite.mem_toFinset.mp hv
  exact ⟨x, fun y => hmax (f y) (hfinite.mem_toFinset.mpr ⟨y, rfl⟩)⟩

variable [Lattice α]

/-- Bounded rank on maximizers replaces finiteness of the maximizer set.
Strict rank growth rules out a proper join above a maximizer of maximal rank. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `422917545d71a0211423ebaca12ffa0764efad0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
