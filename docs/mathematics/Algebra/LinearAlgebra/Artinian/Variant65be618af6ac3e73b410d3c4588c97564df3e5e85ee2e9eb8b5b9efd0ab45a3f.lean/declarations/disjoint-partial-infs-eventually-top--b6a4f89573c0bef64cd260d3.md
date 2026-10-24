# disjoint_partial_infs_eventually_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:792de95b-3314-9a84-bfd6-bcfc039d309a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ae64f88-7cfd-bfb7-fb1b-80a1531baf08",
  "kind": "theorem",
  "lexical_name": "disjoint_partial_infs_eventually_top",
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
  "slug": "disjoint-partial-infs-eventually-top--b6a4f89573c0bef64cd260d3",
  "source": {
    "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 255,
    "path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a4f89573c0bef64cd260d3ef78ea0b356ff8df0071e432d59f83eeba8f606e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ae64f88-7cfd-bfb7-fb1b-80a1531baf08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_partial_infs_eventually_top (f : ℕ → Submodule R M)
    (h : ∀ n, Disjoint (partialSups (OrderDual.toDual ∘ f) n) (OrderDual.toDual (f (n + 1)))) :
    ∃ n : ℕ, ∀ m, n ≤ m → f m = ⊤ := by
  -- A little off-by-one cleanup first:
  rsuffices ⟨n, w⟩ : ∃ n : ℕ, ∀ m, n ≤ m → OrderDual.toDual f (m + 1) = ⊤
  · use n + 1
    rintro (_ | m) p
    · cases p
    · apply w
      exact Nat.succ_le_succ_iff.mp p
  obtain ⟨n, w⟩ := monotone_stabilizes (partialSups (OrderDual.toDual ∘ f))
  refine' ⟨n, fun m p => _⟩
  exact (h m).eq_bot_of_ge (sup_eq_left.1 <| (w (m + 1) <| le_add_right p).symm.trans <| w m p)
#align is_artinian.disjoint_partial_infs_eventually_top IsArtinian.disjoint_partial_infs_eventually_top

end IsArtinian

end Ring

section CommRing

variable {R : Type*} (M : Type*) [CommRing R] [AddCommGroup M] [Module R M] [IsArtinian R M]

namespace IsArtinian

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e724beaa9986d7122091e6906db8b3c3be9a6233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
