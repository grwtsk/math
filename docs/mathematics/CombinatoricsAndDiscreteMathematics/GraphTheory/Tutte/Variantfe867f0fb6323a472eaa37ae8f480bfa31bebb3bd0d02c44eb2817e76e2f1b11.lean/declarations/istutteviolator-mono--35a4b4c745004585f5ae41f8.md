# IsTutteViolator.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:368b7f93-3537-cbe1-2d10-8350ca442a41",
  "kind": "lemma",
  "lexical_name": "IsTutteViolator.mono",
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
  "slug": "istutteviolator-mono--35a4b4c745004585f5ae41f8",
  "source": {
    "blob": "179c143888869dcba807b277c2f36b27ef736769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35a4b4c745004585f5ae41f8923cada35317e909b8139e641c004679cded63ad",
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

Occurrence: `result:368b7f93-3537-cbe1-2d10-8350ca442a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTutteViolator.mono {u : Set V} (h : G ≤ G') (ht : G'.IsTutteViolator u) :
    G.IsTutteViolator u := by
  simp only [IsTutteViolator] at *
  have := ncard_oddComponents_mono _ (Subgraph.deleteVerts_mono' (G := G) (G' := G') u h)
  simp only [oddComponents] at *
  #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
  (replacing grind's canonicalizer with a type-directed normalizer), `lia` closed this goal.
  It is not yet clear whether this is due to defeq abuse in Mathlib or a problem in the new
  canonicalizer; a minimization would help. The original proof was: `lia` -/
  exact lt_of_lt_of_le ht this

/-- Given a graph in which the universal vertices do not violate Tutte's condition,
if the graph decomposes into cliques, there exists a matching that covers
everything except some universal vertices.

This lemma is marked private, because
it is strictly weaker than `IsPerfectMatching.exists_of_isClique_supp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179c143888869dcba807b277c2f36b27ef736769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
