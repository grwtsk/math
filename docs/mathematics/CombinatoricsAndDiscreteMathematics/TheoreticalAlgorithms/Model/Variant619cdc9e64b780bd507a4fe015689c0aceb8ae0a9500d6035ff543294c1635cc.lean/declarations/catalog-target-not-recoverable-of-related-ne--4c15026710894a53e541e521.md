# catalog_target_not_recoverable_of_related_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eecc03cd83309fb75dab150117c0bb6ac061eb25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/619cdc9e64b780bd507a4fe015689c0aceb8ae0a9500d6035ff543294c1635cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b80d29ab-188f-6e65-4ed3-07f86061868e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96c36293-bae6-e2bf-f8b7-04037f450daa",
  "kind": "theorem",
  "lexical_name": "catalog_target_not_recoverable_of_related_ne",
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
  "slug": "catalog-target-not-recoverable-of-related-ne--4c15026710894a53e541e521",
  "source": {
    "blob": "eecc03cd83309fb75dab150117c0bb6ac061eb25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant619cdc9e64b780bd507a4fe015689c0aceb8ae0a9500d6035ff543294c1635cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c15026710894a53e541e52135cbbfaf7cfd357b49c2fca80657d63cbd0612d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant619cdc9e64b780bd507a4fe015689c0aceb8ae0a9500d6035ff543294c1635cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c36293-bae6-e2bf-f8b7-04037f450daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem catalog_target_not_recoverable_of_related_ne {V : Type*}
    (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full)
    (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (target : Fin full.value.catalog.length → V) {left right : Fin full.value.catalog.length}
    (related : (left.val, right.val) ∈ relationPairs congruence.candidate)
    (separated : target left ≠ target right) :
    ¬ RecoverableFrom (Quotient.mk (catalogSetoid full algebra grammar congruence)) target :=
  quotient_target_not_recoverable (catalogSetoid full algebra grammar congruence)
    target related separated

/-- The existing quotient evaluator recovers the declared interpreter target using
the exact checked descent operand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant619cdc9e64b780bd507a4fe015689c0aceb8ae0a9500d6035ff543294c1635cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant619cdc9e64b780bd507a4fe015689c0aceb8ae0a9500d6035ff543294c1635cc.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eecc03cd83309fb75dab150117c0bb6ac061eb25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
