# sumLexLift_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b453051-b749-353d-6e62-c474a3449410",
  "kind": "lemma",
  "lexical_name": "sumLexLift_mono",
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
  "slug": "sumlexlift-mono--e5e9a98f825eab8ed96e5376",
  "source": {
    "blob": "9e2dcc8878d4887351dca311199f68dcad6708d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e9a98f825eab8ed96e53764145f47cf9062a8682723aff47c776a9897ee70d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b453051-b749-353d-6e62-c474a3449410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sumLexLift_mono (hf₁ : ∀ a b, f₁ a b ⊆ f₁' a b) (hf₂ : ∀ a b, f₂ a b ⊆ f₂' a b)
    (hg₁ : ∀ a b, g₁ a b ⊆ g₁' a b) (hg₂ : ∀ a b, g₂ a b ⊆ g₂' a b) (a : α₁ ⊕ α₂)
    (b : β₁ ⊕ β₂) : sumLexLift f₁ f₂ g₁ g₂ a b ⊆ sumLexLift f₁' f₂' g₁' g₂' a b := by
  cases a <;> cases b
  exacts [map_subset_map.2 (hf₁ _ _), disjSum_mono (hg₁ _ _) (hg₂ _ _), Subset.rfl,
    map_subset_map.2 (hf₂ _ _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant04e04860cc518826716ab59906dd188cdd81dd4a0e7a245c5146f94985adeae7.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e2dcc8878d4887351dca311199f68dcad6708d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
