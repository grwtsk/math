# not_isTutteViolator_of_isPerfectMatching

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d640f07b-3b5f-6b33-9860-7dfb89b8d3b0",
  "kind": "lemma",
  "lexical_name": "not_isTutteViolator_of_isPerfectMatching",
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
  "slug": "not-istutteviolator-of-isperfectmatching--6387b4eda3a6e5e638681806",
  "source": {
    "blob": "179c143888869dcba807b277c2f36b27ef736769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6387b4eda3a6e5e6386818062b55b4bc7f2682d16196baae62ba90e4c67b7f46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d640f07b-3b5f-6b33-9860-7dfb89b8d3b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_isTutteViolator_of_isPerfectMatching {M : Subgraph G} (hM : M.IsPerfectMatching)
    (u : Set V) :
    ¬G.IsTutteViolator u := by
  choose f hf g hgf hg using ConnectedComponent.odd_matches_node_outside hM (u := u)
  have hfinj : f.Injective := fun c d hcd ↦ by
    replace hcd : g c = g d := Subtype.val_injective <| hM.1.eq_of_adj_right (hgf c) (hcd ▸ hgf d)
    exact Subtype.val_injective <| ConnectedComponent.eq_of_common_vertex (hg c) (hcd ▸ hg d)
  simpa [IsTutteViolator] using!
    Nat.card_le_card_of_injective (fun c ↦ ⟨f c, hf c⟩) (fun c d ↦ by simp [hfinj.eq_iff])

open scoped symmDiff

/-- This lemma constructs a perfect matching on `G` from two near-matchings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179c143888869dcba807b277c2f36b27ef736769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
