# discrete_gronwall_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41643b14-84fd-26ec-6f6b-ede86a2a082f",
  "kind": "theorem",
  "lexical_name": "discrete_gronwall_Ico",
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
  "slug": "discrete-gronwall-ico--6695b9ea3eff946d1b9b6b27",
  "source": {
    "blob": "50544de2a52ef321ef7343bbc33aa571b3a74037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 105,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DiscreteGronwall/Variant055b754e49023352987e080104d94f2975bcf58a072cd5e8226e9f9d4da75e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6695b9ea3eff946d1b9b6b273c56782ec9ad89dd8c3520d54780dd2e90649bfc",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DiscreteGronwall/Variant055b754e49023352987e080104d94f2975bcf58a072cd5e8226e9f9d4da75e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41643b14-84fd-26ec-6f6b-ede86a2a082f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrete_gronwall_Ico {n₀ n₁ : ℕ} (hun₀ : 0 ≤ u n₀)
    (hu : ∀ n ≥ n₀, u (n + 1) ≤ (1 + c n) * u n + b n)
    (hc : ∀ n ≥ n₀, 0 ≤ c n) (hb : ∀ n ≥ n₀, 0 ≤ b n) ⦃n : ℕ⦄ (hn : n ∈ Ico n₀ n₁) :
    u n ≤ (u n₀ + ∑ k ∈ Ico n₀ n₁, b k) * exp (∑ i ∈ Ico n₀ n₁, c i) := by
  have : 0 ≤ ∑ k ∈ Ico n₀ n₁, b k := sum_nonneg <| by grind
  exact (discrete_gronwall hun₀ hu hc hb (mem_Ico.mp hn).1).trans (by gcongr <;> grind)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DiscreteGronwall/Variant055b754e49023352987e080104d94f2975bcf58a072cd5e8226e9f9d4da75e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DiscreteGronwall/Variant055b754e49023352987e080104d94f2975bcf58a072cd5e8226e9f9d4da75e58.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50544de2a52ef321ef7343bbc33aa571b3a74037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
