# EquivFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee5328769f7c1efa14fc740296c2ab7b0dce5b9e262d3ecbeb35f4893d6a8672",
  "kind": "class",
  "lexical_name": "EquivFunctor",
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
  "slug": "equivfunctor--0a391e50d624e4580a6f3ae7",
  "source": {
    "blob": "2f8a214334db27808f6a8e22eebe54859e80955b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EquivFunctor/Variant1afb1d9b245ed4f3cf5539c9418de71e8cdbbcf15b94809e9593e47b7df1a9d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a391e50d624e4580a6f3ae76d0949ebab04426deb157afee72e371e11a47136",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EquivFunctor/Variant1afb1d9b245ed4f3cf5539c9418de71e8cdbbcf15b94809e9593e47b7df1a9d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee5328769f7c1efa14fc740296c2ab7b0dce5b9e262d3ecbeb35f4893d6a8672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class EquivFunctor (f : Type u₀ → Type u₁) where
  /-- The action of `f` on isomorphisms. -/
  map : ∀ {α β}, α ≃ β → f α → f β
  /-- `map` of `f` preserves the identity morphism. -/
  map_refl' : ∀ α, map (Equiv.refl α) = @id (f α) := by rfl
  /-- `map` is functorial on equivalences. -/
  map_trans' : ∀ {α β γ} (k : α ≃ β) (h : β ≃ γ), map (k.trans h) = map h ∘ map k := by rfl

attribute [simp] EquivFunctor.map_refl'

namespace EquivFunctor

section

variable (f : Type u₀ → Type u₁) [EquivFunctor f] {α β : Type u₀} (e : α ≃ β)

/-- An `EquivFunctor` in fact takes every equiv to an equiv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EquivFunctor/Variant1afb1d9b245ed4f3cf5539c9418de71e8cdbbcf15b94809e9593e47b7df1a9d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EquivFunctor/Variant1afb1d9b245ed4f3cf5539c9418de71e8cdbbcf15b94809e9593e47b7df1a9d2.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f8a214334db27808f6a8e22eebe54859e80955b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
