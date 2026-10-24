# uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c8c92c-8e13-3ab8-254d-4af1a88306f6",
  "kind": "theorem",
  "lexical_name": "uncurry",
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
  "slug": "uncurry--8d272bc34d8e420b8b3e3ec8",
  "source": {
    "blob": "f3a3609162dd90ead76018e112eb68ea713ba84c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d272bc34d8e420b8b3e3ec801356f190ddccbb0f3af969a8ba9aea3db13b399",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c8c92c-8e13-3ab8-254d-4af1a88306f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem uncurry {f : α → β → γ} {Kα Kβ : ℝ≥0} (hα : ∀ b, LipschitzWith Kα fun a => f a b)
    (hβ : ∀ a, LipschitzWith Kβ (f a)) : LipschitzWith (Kα + Kβ) (Function.uncurry f) := by
  rintro ⟨a₁, b₁⟩ ⟨a₂, b₂⟩
  simp only [Function.uncurry, ENNReal.coe_add, add_mul]
  apply le_trans (edist_triangle _ (f a₂ b₁) _)
  exact
    add_le_add (le_trans (hα _ _ _) <| mul_right_mono <| le_max_left _ _)
      (le_trans (hβ _ _ _) <| mul_right_mono <| le_max_right _ _)

/-- Iterates of a Lipschitz function are Lipschitz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a3609162dd90ead76018e112eb68ea713ba84c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
