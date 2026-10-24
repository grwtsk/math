# card_truncatedInf_union_add_card_truncatedInf_sups

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bb15103-dc96-aac2-8991-5685fa591123",
  "kind": "lemma",
  "lexical_name": "card_truncatedInf_union_add_card_truncatedInf_sups",
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
  "slug": "card-truncatedinf-union-add-card-truncatedinf-sups--152ec10f886c2bb99ce7d378",
  "source": {
    "blob": "385bd4da9d443cad9539543994edbefa281f42a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:152ec10f886c2bb99ce7d3782049c6f6c80a0d3ae3a2bf26b38d3e049782fb62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bb15103-dc96-aac2-8991-5685fa591123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_truncatedInf_union_add_card_truncatedInf_sups (𝒜 ℬ : Finset (Finset α)) (s : Finset α) :
    #(truncatedInf (𝒜 ∪ ℬ) s) + #(truncatedInf (𝒜 ⊻ ℬ) s) =
      #(truncatedInf 𝒜 s) + #(truncatedInf ℬ s) := by
  by_cases h𝒜 : s ∈ upperClosure (𝒜 : Set <| Finset α) <;>
    by_cases hℬ : s ∈ upperClosure (ℬ : Set <| Finset α)
  · rw [truncatedInf_union h𝒜 hℬ, truncatedInf_sups h𝒜 hℬ]
    exact card_inter_add_card_union _ _
  · rw [truncatedInf_union_left h𝒜 hℬ, truncatedInf_of_notMem hℬ,
      truncatedInf_sups_of_notMem fun h ↦ hℬ h.2]
  · rw [truncatedInf_union_right h𝒜 hℬ, truncatedInf_of_notMem h𝒜,
      truncatedInf_sups_of_notMem fun h ↦ h𝒜 h.1, add_comm]
  · rw [truncatedInf_of_notMem h𝒜, truncatedInf_of_notMem hℬ,
      truncatedInf_union_of_notMem h𝒜 hℬ, truncatedInf_sups_of_notMem fun h ↦ h𝒜 h.1]

end Finset

open Finset hiding card
open Fintype Nat

namespace AhlswedeZhang
variable {α : Type*} [Fintype α] [DecidableEq α] {𝒜 : Finset (Finset α)} {s : Finset α}

/-- Weighted sum of the size of the truncated infima of a set family. Relevant to the
Ahlswede-Zhang identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385bd4da9d443cad9539543994edbefa281f42a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
