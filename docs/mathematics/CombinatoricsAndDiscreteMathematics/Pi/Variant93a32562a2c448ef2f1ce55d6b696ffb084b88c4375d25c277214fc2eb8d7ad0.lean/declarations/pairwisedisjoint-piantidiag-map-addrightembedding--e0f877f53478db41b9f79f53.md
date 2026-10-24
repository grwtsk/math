# pairwiseDisjoint_piAntidiag_map_addRightEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8591ae3d-1b12-236d-b0db-f2637a6bbdf7",
  "kind": "lemma",
  "lexical_name": "pairwiseDisjoint_piAntidiag_map_addRightEmbedding",
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
  "slug": "pairwisedisjoint-piantidiag-map-addrightembedding--e0f877f53478db41b9f79f53",
  "source": {
    "blob": "ce9367c3bcc95cc3090e7832f0747413be644c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f877f53478db41b9f79f5308c3cee3fde8f47b82672afce8435ae50733064e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8591ae3d-1b12-236d-b0db-f2637a6bbdf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairwiseDisjoint_piAntidiag_map_addRightEmbedding (hi : i ∉ s) (n : μ) :
    (antidiagonal n : Set (μ × μ)).PairwiseDisjoint fun p ↦
      map (addRightEmbedding fun j ↦ if j = i then p.1 else 0) (s.piAntidiag p.2) := by
  rintro ⟨a, b⟩ hab ⟨c, d⟩ hcd
  simp only [ne_eq, HasAntidiagonal.antidiagonal_congr' hab hcd, disjoint_left, mem_map,
    mem_piAntidiag, addRightEmbedding_apply, not_exists, not_and, and_imp, forall_exists_index]
  rintro hfg _ f rfl - rfl g rfl - hgf
  exact hfg <| by simpa [sum_add_distrib, hi] using congr_arg (∑ j ∈ s, · j) hgf.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9367c3bcc95cc3090e7832f0747413be644c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
