# zorn_nonempty_Ici₀

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
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eb08f50-95f3-9fb2-0a54-edd0326b60c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a65096e6-116c-daeb-f9df-3eeb09624163",
  "kind": "theorem",
  "lexical_name": "zorn_nonempty_Ici₀",
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
  "slug": "zorn-nonempty-ici--6cd76c8a7717f37c357a81c3",
  "source": {
    "blob": "5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cd76c8a7717f37c357a81c3958956e41e821f7fd0cde5fa25eff0c992ab5de9",
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

Occurrence: `result:a65096e6-116c-daeb-f9df-3eeb09624163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zorn_nonempty_Ici₀ (a : α)
    (ih : ∀ (c) (_ : c ⊆ Ici a), IsChain (· ≤ ·) c → ∀ y ∈ c, ∃ ub, a ≤ ub ∧ ∀ z ∈ c, z ≤ ub)
    (x : α) (hax : a ≤ x) : ∃ m, x ≤ m ∧ ∀ z, m ≤ z → z ≤ m :=
  let ⟨m, _, hxm, hm⟩ := zorn_nonempty_preorder₀ (Ici a) (by simpa using ih) x hax
  ⟨m, hxm, fun z hmz => hm _ (hax.trans <| hxm.trans hmz) hmz⟩
#align zorn_nonempty_Ici₀ zorn_nonempty_Ici₀

end Preorder

section PartialOrder

variable [PartialOrder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
