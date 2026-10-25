# exists_greatest_maximizer_fixed_of_finite_values_bounded_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93769c04-0bde-0251-b461-0d2ef3c767ee",
  "kind": "theorem",
  "lexical_name": "exists_greatest_maximizer_fixed_of_finite_values_bounded_rank",
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
  "slug": "exists-greatest-maximizer-fixed-of-finite-values-bounded-rank--881cf41091820883e99486a4",
  "source": {
    "blob": "eaad844f1128f4c8a226312cef2974644b118388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:881cf41091820883e99486a4c47a303692518497da50376a1eb5b7792e5c7794",
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

Occurrence: `result:93769c04-0bde-0251-b461-0d2ef3c767ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_greatest_maximizer_fixed_of_finite_values_bounded_rank [Nonempty α]
    {f : α → ℝ} (hf : Supermodular f) (hfinite : (Set.range f).Finite)
    (rank : α → ℕ) (D : ℕ)
    (hbounded : ∀ x, IsMaximizer f x → rank x ≤ D)
    (hstrict : ∀ {x y : α}, x < y → rank x < rank y) :
    ∃ g, IsGreatest {x | IsMaximizer f x} g ∧
      ∀ (e : α ≃o α), (∀ x, f (e x) = f x) → e g = g := by
  exact exists_greatest_maximizer_fixed_of_bounded_rank hf
    (exists_maximizer_of_finite_values hfinite) rank D hbounded hstrict

end FormalResearch.PositiveAtlas.MaximalDefect.FiniteHeight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant1fa9cc4139260566eccb8c37bf424581a0a54d552d5d16f00a7075dde8f1b0b4.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaad844f1128f4c8a226312cef2974644b118388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
