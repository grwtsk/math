# isIntegral_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dd32909a83bf33fa48205a2b22dcb58415bfe69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9de27e0f-449a-b8d9-998b-088ae2ef090f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:512ffda7-6b18-5cf3-a096-24af8a878292",
  "kind": "theorem",
  "lexical_name": "isIntegral_I",
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
  "slug": "isintegral-i--880ce73f2bc2c27a51314752",
  "source": {
    "blob": "9dd32909a83bf33fa48205a2b22dcb58415bfe69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 26,
    "path": "GRWTSK/Analysis/ComplexAnalysis/IsIntegral/Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:880ce73f2bc2c27a5131475250ea4109646b9ea4bed1d963c06a8d21ee33cea7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsIntegral/Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:512ffda7-6b18-5cf3-a096-24af8a878292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_I (R : Type*) [CommRing R] [Algebra R ℂ] : IsIntegral R I :=
  ⟨X ^ 2 + C 1, monic_X_pow_add_C _ two_ne_zero, by simp⟩

@[deprecated (since := "2026-08-06")] alias isIntegral_int_I := isIntegral_I

@[deprecated (since := "2026-08-06")] alias isIntegral_rat_I := isIntegral_I

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/IsIntegral/Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/IsIntegral/Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dd32909a83bf33fa48205a2b22dcb58415bfe69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
