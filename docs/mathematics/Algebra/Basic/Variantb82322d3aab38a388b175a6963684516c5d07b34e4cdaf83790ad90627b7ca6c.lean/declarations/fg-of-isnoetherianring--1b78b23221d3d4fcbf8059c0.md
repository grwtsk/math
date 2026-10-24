# fg_of_isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29225cabea3ab2bdd3a5524c225bad2275d04102",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 676,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:691e0e59-f243-fa43-2ce2-d89b4fc1bb7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63703499-bf54-3891-4063-a26b6588918c",
  "kind": "lemma",
  "lexical_name": "fg_of_isNoetherianRing",
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
  "slug": "fg-of-isnoetherianring--1b78b23221d3d4fcbf8059c0",
  "source": {
    "blob": "29225cabea3ab2bdd3a5524c225bad2275d04102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 676,
    "path": "GRWTSK/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b78b23221d3d4fcbf8059c0832ce05e507d43bdc2de8e6645b9f531528c3be7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63703499-bf54-3891-4063-a26b6588918c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fg_of_isNoetherianRing [hR : IsNoetherianRing R] (hS : S ≤ R⁰) (I : FractionalIdeal S P) :
    FG I.coeToSubmodule := by
  have := hR.noetherian I.num
  rw [← fg_top] at this ⊢
  exact fg_of_linearEquiv (I.equivNum <| coe_ne_zero ⟨(I.den : R), hS (SetLike.coe_mem I.den)⟩) this

end FG

end FractionalIdeal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb82322d3aab38a388b175a6963684516c5d07b34e4cdaf83790ad90627b7ca6c.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29225cabea3ab2bdd3a5524c225bad2275d04102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
