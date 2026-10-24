# claim_status_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db742b6c8a559c6be677decabda66708087ab293",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 608,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60d53b46-b770-bacf-751c-23574c3c8e36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8502f1b-e755-8998-0496-5dc7ff9d6029",
  "kind": "theorem",
  "lexical_name": "claim_status_eq_source",
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
  "slug": "claim-status-eq-source--952d5c0bec77b081975515a5",
  "source": {
    "blob": "db742b6c8a559c6be677decabda66708087ab293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 608,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:952d5c0bec77b081975515a5e0cdb2c6fe5515023f8bf40b7de25aef09d38974",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8502f1b-e755-8998-0496-5dc7ff9d6029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem claim_status_eq_source
    (obstruction : QuantizationFaceObstruction) :
    obstruction.status = obstruction.sourceClaimStatus :=
  obstruction.status_matches_source

end QuantizationFaceObstruction

/-- Every face check reports one of the three explicit outcomes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db742b6c8a559c6be677decabda66708087ab293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
