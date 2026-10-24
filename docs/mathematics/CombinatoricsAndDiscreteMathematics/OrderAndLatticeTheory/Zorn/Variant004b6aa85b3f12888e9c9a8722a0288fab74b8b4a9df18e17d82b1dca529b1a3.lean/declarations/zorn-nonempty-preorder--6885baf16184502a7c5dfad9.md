# zorn_nonempty_preorder₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:374453e4-c279-dae5-1177-11d9f41af0d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:619f3b07-8923-a33c-08fb-736e148a6aaa",
  "kind": "theorem",
  "lexical_name": "zorn_nonempty_preorder₀",
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
  "slug": "zorn-nonempty-preorder--6885baf16184502a7c5dfad9",
  "source": {
    "blob": "5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6885baf16184502a7c5dfad95c613b039c84832d7f8ff6b261ab5f55543b20ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:619f3b07-8923-a33c-08fb-736e148a6aaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zorn_nonempty_preorder₀ (s : Set α)
    (ih : ∀ (c) (_ : c ⊆ s), IsChain (· ≤ ·) c → ∀ y ∈ c, ∃ ub ∈ s, ∀ z ∈ c, z ≤ ub) (x : α)
    (hxs : x ∈ s) : ∃ m ∈ s, x ≤ m ∧ ∀ z ∈ s, m ≤ z → z ≤ m := by
  -- Porting note: the first three lines replace the following two lines in mathlib3.
  -- The mathlib3 `rcases` supports holes for proof obligations, this is not yet implemented in 4.
  -- rcases zorn_preorder₀ ({ y ∈ s | x ≤ y }) fun c hcs hc => ?_ with ⟨m, ⟨hms, hxm⟩, hm⟩
  -- · exact ⟨m, hms, hxm, fun z hzs hmz => hm _ ⟨hzs, hxm.trans hmz⟩ hmz⟩
  have H := zorn_preorder₀ ({ y ∈ s | x ≤ y }) fun c hcs hc => ?_
  · rcases H with ⟨m, ⟨hms, hxm⟩, hm⟩
    exact ⟨m, hms, hxm, fun z hzs hmz => hm _ ⟨hzs, hxm.trans hmz⟩ hmz⟩
  · rcases c.eq_empty_or_nonempty with (rfl | ⟨y, hy⟩)
    · exact ⟨x, ⟨hxs, le_rfl⟩, fun z => False.elim⟩
    · rcases ih c (fun z hz => (hcs hz).1) hc y hy with ⟨z, hzs, hz⟩
      exact ⟨z, ⟨hzs, (hcs hy).2.trans <| hz _ hy⟩, hz⟩
#align zorn_nonempty_preorder₀ zorn_nonempty_preorder₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
