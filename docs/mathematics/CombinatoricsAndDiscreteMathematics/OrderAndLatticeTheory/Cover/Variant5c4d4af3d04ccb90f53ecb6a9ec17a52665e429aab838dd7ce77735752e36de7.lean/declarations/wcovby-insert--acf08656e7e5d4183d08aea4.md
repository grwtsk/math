# wcovBy_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:648ed2b9-1a4f-0e0e-dea7-d2fc0228d04a",
  "kind": "lemma",
  "lexical_name": "wcovBy_insert",
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
  "slug": "wcovby-insert--acf08656e7e5d4183d08aea4",
  "source": {
    "blob": "8563d0d64bc6707a03542a4ed7b9ed2ddfa16487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 516,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variant5c4d4af3d04ccb90f53ecb6a9ec17a52665e429aab838dd7ce77735752e36de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf08656e7e5d4183d08aea40bb721a999496322c5b8e5ead221246b5edc4255",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variant5c4d4af3d04ccb90f53ecb6a9ec17a52665e429aab838dd7ce77735752e36de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:648ed2b9-1a4f-0e0e-dea7-d2fc0228d04a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma wcovBy_insert (x : α) (s : Set α) : s ⩿ insert x s := by
  refine wcovBy_of_eq_or_eq (subset_insert x s) fun t hst h2t => ?_
  by_cases h : x ∈ t
  · exact Or.inr (subset_antisymm h2t <| insert_subset_iff.mpr ⟨h, hst⟩)
  · refine Or.inl (subset_antisymm ?_ hst)
    rwa [← sdiff_singleton_eq_self h, sdiff_singleton_subset_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variant5c4d4af3d04ccb90f53ecb6a9ec17a52665e429aab838dd7ce77735752e36de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cover/Variant5c4d4af3d04ccb90f53ecb6a9ec17a52665e429aab838dd7ce77735752e36de7.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8563d0d64bc6707a03542a4ed7b9ed2ddfa16487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
