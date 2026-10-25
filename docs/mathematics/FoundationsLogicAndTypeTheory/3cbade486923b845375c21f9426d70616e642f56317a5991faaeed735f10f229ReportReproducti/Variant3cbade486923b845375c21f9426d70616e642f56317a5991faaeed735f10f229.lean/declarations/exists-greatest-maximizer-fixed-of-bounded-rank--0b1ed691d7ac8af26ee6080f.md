# exists_greatest_maximizer_fixed_of_bounded_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d8f3ff698377305fb511e438c784ef4357bdcb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93f212cf-253c-a960-cfde-ca8633d1832c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:633861a2-210a-1da3-75f4-8edb56392e89",
  "kind": "theorem",
  "lexical_name": "exists_greatest_maximizer_fixed_of_bounded_rank",
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
  "slug": "exists-greatest-maximizer-fixed-of-bounded-rank--0b1ed691d7ac8af26ee6080f",
  "source": {
    "blob": "6d8f3ff698377305fb511e438c784ef4357bdcb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229ReportReproducti/Variant3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b1ed691d7ac8af26ee6080f1a6c795371824966907672ea00136c68ede127de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229ReportReproducti/Variant3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:633861a2-210a-1da3-75f4-8edb56392e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_greatest_maximizer_fixed_of_bounded_rank {f : α → ℝ}
    (hf : Supermodular f) (hattained : ∃ x, IsMaximizer f x)
    (rank : α → ℕ) (D : ℕ)
    (hbounded : ∀ x, IsMaximizer f x → rank x ≤ D)
    (hstrict : ∀ {x y : α}, x < y → rank x < rank y) :
    ∃ g, IsGreatest {x | IsMaximizer f x} g ∧
      ∀ (e : α ≃o α), (∀ x, f (e x) = f x) → e g = g := by
  obtain ⟨g, hg, _⟩ :=
    exists_unique_greatest_maximizer_of_bounded_rank hf hattained rank D hbounded hstrict
  exact ⟨g, hg, fun e he => greatest_maximizer_fixed hg e he⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229ReportReproducti/Variant3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229ReportReproducti/Variant3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8f3ff698377305fb511e438c784ef4357bdcb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
