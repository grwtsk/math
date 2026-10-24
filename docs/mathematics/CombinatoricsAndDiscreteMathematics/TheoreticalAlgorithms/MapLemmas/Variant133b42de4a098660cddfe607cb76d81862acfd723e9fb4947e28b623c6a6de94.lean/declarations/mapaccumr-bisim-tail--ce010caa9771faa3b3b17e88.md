# mapAccumr₂_bisim_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb49d45-96a5-69a4-62f9-970f0bbc7adb",
  "kind": "theorem",
  "lexical_name": "mapAccumr₂_bisim_tail",
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
  "slug": "mapaccumr-bisim-tail--ce010caa9771faa3b3b17e88",
  "source": {
    "blob": "334bb83e0b3f42a646b6512b149373e08892426a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce010caa9771faa3b3b17e88a6f304ca74d5633c48e3ff753e96c65fb201e485",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb49d45-96a5-69a4-62f9-970f0bbc7adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapAccumr₂_bisim_tail {ys : Vector β n} {f₁ : α → β → σ₁ → σ₁ × γ}
    {f₂ : α → β → σ₂ → σ₂ × γ} {s₁ : σ₁} {s₂ : σ₂}
    (h : ∃ R : σ₁ → σ₂ → Prop, R s₁ s₂ ∧
      ∀ {s q} a b, R s q → R (f₁ a b s).1 (f₂ a b q).1 ∧ (f₁ a b s).2 = (f₂ a b q).2) :
    (mapAccumr₂ f₁ xs ys s₁).2 = (mapAccumr₂ f₂ xs ys s₂).2 := by
  rcases h with ⟨R, h₀, hR⟩
  exact (mapAccumr₂_bisim R h₀ hR).2

end Bisim

/-!
## Redundant state optimization

The following section are collection of rewrites to simplify, or even get rid, redundant
accumulation state
-/
section RedundantState
variable {xs : Vector α n} {ys : Vector β n}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334bb83e0b3f42a646b6512b149373e08892426a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
