# SnakeLemma.exact_δ'_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfc99408-cd2d-f512-0f51-fcf5a3df16c1",
  "kind": "lemma",
  "lexical_name": "SnakeLemma.exact_δ'_left",
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
  "slug": "snakelemma-exact-left--774e0a154d045b13054642eb",
  "source": {
    "blob": "35e9d08906928a1d85efd64fd463b990c63a9856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 290,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:774e0a154d045b13054642eb676c74c2d001db9c32f7ff79977bfc4d8016da0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc99408-cd2d-f512-0f51-fcf5a3df16c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SnakeLemma.exact_δ'_left (hf₂ : Surjective f₂) (hg₁ : Injective g₁)
    (G : C₁ →ₗ[R] C₂) (hF : G.comp π₁ = π₂.comp g₁) (h : Surjective π₁) :
    Exact (δ' i₁ i₂ i₃ f₁ f₂ hf g₁ g₂ hg h₁ h₂ ι₃ hι₃ π₁ hπ₁ hf₂ hg₁) G :=
  SnakeLemma.exact_δ_left _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ‹_› _ ‹_› ‹_›
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant7519f4396ffa9576ef2d302f92ff0277bac9f3d20271583a158339eeb35b3786.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e9d08906928a1d85efd64fd463b990c63a9856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
