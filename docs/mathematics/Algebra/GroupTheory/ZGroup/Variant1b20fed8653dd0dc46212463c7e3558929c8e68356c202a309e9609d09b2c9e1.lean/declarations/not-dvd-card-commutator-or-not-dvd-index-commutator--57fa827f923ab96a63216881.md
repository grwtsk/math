# not_dvd_card_commutator_or_not_dvd_index_commutator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:903f7e06-3290-dbc5-72a8-d5ef0396db31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00442000-5a59-d768-8c55-8abaa129520d",
  "kind": "theorem",
  "lexical_name": "not_dvd_card_commutator_or_not_dvd_index_commutator",
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
  "slug": "not-dvd-card-commutator-or-not-dvd-index-commutator--57fa827f923ab96a63216881",
  "source": {
    "blob": "a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 264,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57fa827f923ab96a632168817b4575ac1a6fe249a1af90f28201888dc50fe2ed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00442000-5a59-d768-8c55-8abaa129520d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_dvd_card_commutator_or_not_dvd_index_commutator :
    ¬ p ∣ Nat.card (commutator G) ∨ ¬ p ∣ (commutator G).index := by
  refine (normalizer_le_centralizer_or_le_commutator P).imp ?_ ?_ <;>
      refine fun hP h ↦ P.not_dvd_index (h.trans ?_)
  · rw [(MonoidHom.ker_transferSylow_isComplement' P hP).index_eq_card]
    exact Subgroup.card_dvd_of_le (Abelianization.commutator_subset_ker _)
  · exact Subgroup.index_dvd_of_le hP

end Sylow

variable (G) in
/-- If `G` is a finite Z-group, then `commutator G` is a Hall subgroup of `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
