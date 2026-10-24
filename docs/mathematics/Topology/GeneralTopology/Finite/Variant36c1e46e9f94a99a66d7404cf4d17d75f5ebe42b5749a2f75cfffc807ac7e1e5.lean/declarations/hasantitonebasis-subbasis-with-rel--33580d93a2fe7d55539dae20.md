# HasAntitoneBasis.subbasis_with_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c87f117f-b4dc-84b6-b2fb-d62da5502677",
  "kind": "theorem",
  "lexical_name": "HasAntitoneBasis.subbasis_with_rel",
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
  "slug": "hasantitonebasis-subbasis-with-rel--33580d93a2fe7d55539dae20",
  "source": {
    "blob": "c6afa688a56cc8a6fc39893b4a5fa642d5709aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33580d93a2fe7d55539dae20b07fc640b775f81bd4763d6909a9d29701518012",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c87f117f-b4dc-84b6-b2fb-d62da5502677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasAntitoneBasis.subbasis_with_rel {f : Filter α} {s : ℕ → Set α}
    (hs : f.HasAntitoneBasis s) {r : ℕ → ℕ → Prop} (hr : ∀ m, ∀ᶠ n in atTop, r m n) :
    ∃ φ : ℕ → ℕ, StrictMono φ ∧ (∀ ⦃m n⦄, m < n → r (φ m) (φ n)) ∧ f.HasAntitoneBasis (s ∘ φ) := by
  rsuffices ⟨φ, hφ, hrφ⟩ : ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∀ m n, m < n → r (φ m) (φ n)
  · exact ⟨φ, hφ, hrφ, hs.comp_strictMono hφ⟩
  have : ∀ t : Set ℕ, t.Finite → ∀ᶠ n in atTop, ∀ m ∈ t, m < n ∧ r m n := fun t ht =>
    (eventually_all_finite ht).2 fun m _ => (eventually_gt_atTop m).and (hr _)
  rcases seq_of_forall_finite_exists fun t ht => (this t ht).exists with ⟨φ, hφ⟩
  simp only [forall_mem_image, forall_and, mem_Iio] at hφ
  exact ⟨φ, forall_swap.2 hφ.1, forall_swap.2 hφ.2⟩

end Filter

open Filter Finset

namespace Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant36c1e46e9f94a99a66d7404cf4d17d75f5ebe42b5749a2f75cfffc807ac7e1e5.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6afa688a56cc8a6fc39893b4a5fa642d5709aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
