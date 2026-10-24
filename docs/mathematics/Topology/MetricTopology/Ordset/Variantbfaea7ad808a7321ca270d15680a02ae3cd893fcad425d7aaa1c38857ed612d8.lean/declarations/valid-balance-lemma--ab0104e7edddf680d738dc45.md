# Valid'.balance'_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "964d057f8d557eddc11492e321ffde4227fe567d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8017302-7f1d-0614-a392-d919a2d8129b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:337f9ef2-c909-13ec-371e-281b57c231d4",
  "kind": "theorem",
  "lexical_name": "Valid'.balance'_lemma",
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
  "slug": "valid-balance-lemma--ab0104e7edddf680d738dc45",
  "source": {
    "blob": "964d057f8d557eddc11492e321ffde4227fe567d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 312,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab0104e7edddf680d738dc45e57a00364f7fd76e7a5cae55210075bbeee38aef",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:337f9ef2-c909-13ec-371e-281b57c231d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valid'.balance'_lemma {α l l' r r'} (H1 : BalancedSz l' r')
    (H2 : Nat.dist (@size α l) l' ≤ 1 ∧ size r = r' ∨ Nat.dist (size r) r' ≤ 1 ∧ size l = l') :
    2 * @size α r ≤ 9 * size l + 5 ∨ size r ≤ 3 := by
  suffices @size α r ≤ 3 * (size l + 1) by omega
  rcases H2 with (⟨hl, rfl⟩ | ⟨hr, rfl⟩) <;> rcases H1 with (h | ⟨_, h₂⟩)
  · exact le_trans (Nat.le_add_left _ _) (le_trans h (Nat.le_add_left _ _))
  · exact
      le_trans h₂
        (Nat.mul_le_mul_left _ <| le_trans (Nat.dist_tri_right _ _) (Nat.add_le_add_left hl _))
  · exact
      le_trans (Nat.dist_tri_left' _ _)
        (le_trans (add_le_add hr (le_trans (Nat.le_add_left _ _) h)) (by omega))
  · rw [Nat.mul_succ]
    exact le_trans (Nat.dist_tri_right' _ _) (add_le_add h₂ (le_trans hr (by decide)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964d057f8d557eddc11492e321ffde4227fe567d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
