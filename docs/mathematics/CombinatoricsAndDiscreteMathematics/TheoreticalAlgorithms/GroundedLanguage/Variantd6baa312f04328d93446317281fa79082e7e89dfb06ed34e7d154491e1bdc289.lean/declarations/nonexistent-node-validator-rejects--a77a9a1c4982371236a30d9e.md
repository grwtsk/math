# nonexistent_node_validator_rejects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fffab8533b6124a5085b99a7bf43cad6ec12721b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b07f555e-f6ff-f3a9-1cf3-a04cc8bc6467",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1f01b26-4118-75f8-762d-7a3f117b2c00",
  "kind": "theorem",
  "lexical_name": "nonexistent_node_validator_rejects",
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
  "slug": "nonexistent-node-validator-rejects--a77a9a1c4982371236a30d9e",
  "source": {
    "blob": "fffab8533b6124a5085b99a7bf43cad6ec12721b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 544,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a77a9a1c4982371236a30d9eb6bbddfb1b2f34bc47ea5652d627dd74b260ec9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1f01b26-4118-75f8-762d-7a3f117b2c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonexistent_node_validator_rejects :
    ValidatorRejects context (assertionWith nonexistentNodeClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context nonexistentNodeClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context nonexistentNodeClaim checked
    have locatorChecked := checked.locatorChecked
    rw [claimEq] at locatorChecked
    exact nonexistent_node_is_rejected ⟨by
      simpa [context, contextFor, nonexistentNodeClaim] using locatorChecked⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fffab8533b6124a5085b99a7bf43cad6ec12721b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
