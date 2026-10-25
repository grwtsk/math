# same_cardinality_unique_subset_permutation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dec509fd6ef7a2612ce97cc2b03a20958f788dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LiteralLengthBounds/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04173861-e54e-3194-f272-cb60719df952",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59dcc41c-992f-aa62-9440-43944a6c1edc",
  "kind": "theorem",
  "lexical_name": "same_cardinality_unique_subset_permutation",
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
  "slug": "same-cardinality-unique-subset-permutation--96467688de09f1392c729245",
  "source": {
    "blob": "6dec509fd6ef7a2612ce97cc2b03a20958f788dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96467688de09f1392c7292457de166b07fba2e3a4ce3c869cd95a4082673aed6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59dcc41c-992f-aa62-9440-43944a6c1edc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_cardinality_unique_subset_permutation {Value : Type} (left right : List Value)
    (leftUnique : left.Nodup) (rightUnique : right.Nodup)
    (count : left.length = right.length) (contained : left ⊆ right) : left.Perm right := by
  have reverse : right ⊆ left := by
    intro value member
    by_contra absent
    have distinct := List.nodup_cons.mpr ⟨absent, leftUnique⟩
    have bound := distinct.length_le_of_subset (fun item present => by
      rcases List.mem_cons.mp present with same | old
      · exact same ▸ member
      · exact contained old)
    simp only [List.length_cons] at bound
    omega
  exact (List.perm_ext_iff_of_nodup leftUnique rightUnique).mpr
    (fun _ => ⟨fun member => contained member, fun member => reverse member⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant0cbfb8f26796a64383aa68039ba1cfe4dab0332638f699818b1dbdb68dc6dfb7.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dec509fd6ef7a2612ce97cc2b03a20958f788dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
