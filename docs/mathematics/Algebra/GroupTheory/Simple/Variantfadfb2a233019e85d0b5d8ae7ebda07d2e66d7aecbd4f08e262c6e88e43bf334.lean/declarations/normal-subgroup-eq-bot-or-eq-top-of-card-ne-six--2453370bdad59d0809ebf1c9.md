# normal_subgroup_eq_bot_or_eq_top_of_card_ne_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "559c14cd29c58e9ad50384b80e38536061fe0072",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac20fc2f-e231-d3f8-1e2d-cfd312372f0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66c70149-5a8c-20ba-8090-bb5c6b41aca6",
  "kind": "theorem",
  "lexical_name": "normal_subgroup_eq_bot_or_eq_top_of_card_ne_six",
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
  "slug": "normal-subgroup-eq-bot-or-eq-top-of-card-ne-six--2453370bdad59d0809ebf1c9",
  "source": {
    "blob": "559c14cd29c58e9ad50384b80e38536061fe0072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2453370bdad59d0809ebf1c9bae880fb99adae8e3fcbc892a7f0e4576d0560d3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66c70149-5a8c-20ba-8090-bb5c6b41aca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_subgroup_eq_bot_or_eq_top_of_card_ne_six
    (hα : 5 ≤ Nat.card α) (hα' : Nat.card α ≠ 6)
    {N : Subgroup (alternatingGroup α)} [N.Normal] :
    N = ⊥ ∨ N = ⊤ := by
  rw [or_iff_not_imp_left, ← ne_eq, ← Subgroup.nontrivial_iff_ne_bot]
  intro hN
  have : IsPreprimitive (alternatingGroup α) (Set.powersetCard α 3) := by
    refine Set.powersetCard.isPreprimitive_alternatingGroup (by norm_num) ?_ ?_
    · exact lt_of_lt_of_le (by norm_num) hα
    · simpa using hα'
  rw [eq_top_iff, ← commutator_alternatingGroup_eq_top (by simpa using hα)]
  apply iwasawaStructure_three.commutator_le
  exact fixedPoints_ne_univ_of_faithfulSMul (by norm_num) (by grind)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559c14cd29c58e9ad50384b80e38536061fe0072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
