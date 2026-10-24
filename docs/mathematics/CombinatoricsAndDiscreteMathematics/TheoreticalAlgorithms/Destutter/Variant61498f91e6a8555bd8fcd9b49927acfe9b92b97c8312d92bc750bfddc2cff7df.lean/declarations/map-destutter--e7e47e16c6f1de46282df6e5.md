# map_destutter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfb94982-17b4-ea43-18d4-b30fceab7808",
  "kind": "theorem",
  "lexical_name": "map_destutter",
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
  "slug": "map-destutter--e7e47e16c6f1de46282df6e5",
  "source": {
    "blob": "facaf115db116f3a7685a840ea1d2c4d769dded5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7e47e16c6f1de46282df6e5597cd0dd99d3fe62fe4bb5636c10c08ac67cbd45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb94982-17b4-ea43-18d4-b30fceab7808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_destutter {f : α → β} : ∀ {l : List α}, (∀ a ∈ l, ∀ b ∈ l, R a b ↔ R₂ (f a) (f b)) →
    (l.destutter R).map f = (l.map f).destutter R₂
  | [], hl => by simp
  | [a], hl => by simp
  | a :: b :: l, hl => by
    have := hl a (by simp) b (by simp)
    simp_rw [map_cons, destutter_cons_cons, ← this]
    by_cases hr : R a b <;>
      simp [hr, ← destutter_cons', map_destutter fun c hc d hd ↦ hl _ (cons_subset_cons _
        (subset_cons_self _ _) hc) _ (cons_subset_cons _ (subset_cons_self _ _) hd),
        map_destutter fun c hc d hd ↦ hl _ (subset_cons_self _ _ hc) _ (subset_cons_self _ _ hd)]

/-- For a injective function `f`, `destutter' (·≠·)` commutes with `map f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `facaf115db116f3a7685a840ea1d2c4d769dded5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
