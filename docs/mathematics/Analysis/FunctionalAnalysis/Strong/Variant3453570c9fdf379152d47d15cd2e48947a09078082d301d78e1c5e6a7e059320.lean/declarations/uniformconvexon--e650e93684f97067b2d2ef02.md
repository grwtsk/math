# UniformConvexOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c78653319a4b9e66b7a742ff052521dcb0728232143a157290c6e96feb624e35",
  "kind": "def",
  "lexical_name": "UniformConvexOn",
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
  "slug": "uniformconvexon--e650e93684f97067b2d2ef02",
  "source": {
    "blob": "0c23360f9dc5e96d4bb15c7c0107cc4403253384",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e650e93684f97067b2d2ef024500cde3f93ccdf6162e386c7166425ecc0c824a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c78653319a4b9e66b7a742ff052521dcb0728232143a157290c6e96feb624e35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniformConvexOn (s : Set E) (φ : ℝ → ℝ) (f : E → ℝ) : Prop :=
  Convex ℝ s ∧ ∀ ⦃x⦄, x ∈ s → ∀ ⦃y⦄, y ∈ s → ∀ ⦃a b : ℝ⦄, 0 ≤ a → 0 ≤ b → a + b = 1 →
    f (a • x + b • y) ≤ a • f x + b • f y - a * b * φ ‖x - y‖

/-- A function `f` from a real normed space is uniformly concave with modulus `φ` if
`t • f x + (1 - t) • f y + t * (1 - t) * φ ‖x - y‖ ≤ f (t • x + (1 - t) • y)` for all `t ∈ [0, 1]`.

`φ` is usually taken to be a monotone function such that `φ r = 0 ↔ r = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant3453570c9fdf379152d47d15cd2e48947a09078082d301d78e1c5e6a7e059320.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c23360f9dc5e96d4bb15c7c0107cc4403253384` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
