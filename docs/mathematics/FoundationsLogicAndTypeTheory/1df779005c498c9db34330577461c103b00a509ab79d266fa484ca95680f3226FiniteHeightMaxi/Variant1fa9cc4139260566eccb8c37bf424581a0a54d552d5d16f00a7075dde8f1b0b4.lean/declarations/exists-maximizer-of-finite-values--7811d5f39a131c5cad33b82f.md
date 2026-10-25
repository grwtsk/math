# exists_maximizer_of_finite_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c43b2e0a-aa58-00fd-4dc6-d07bb5448812",
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
  "slug": "exists-maximizer-of-finite-values--7811d5f39a131c5cad33b82f",
  "source": {
    "blob": "eaad844f1128f4c8a226312cef2974644b118388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7811d5f39a131c5cad33b82f08d7857b841ce240c9c6c2bd92a94ff1eb0d3752",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c43b2e0a-aa58-00fd-4dc6-d07bb5448812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

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

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaad844f1128f4c8a226312cef2974644b118388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
