# projective_of_restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668174d95851afa0c5134eddcdba2f0151201333",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c2c536121ff4aa49faadd8d1de6ed3039f45aa5551a237c335e416bc63b8168.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae7b5eef-95b4-c211-82a3-95e8b58d4228",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4bcf82a-34a7-0aa5-f723-65b7d6170000",
  "kind": "lemma",
  "lexical_name": "projective_of_restrictScalars",
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
  "slug": "projective-of-restrictscalars--526227a5d266aa2ffeab3944",
  "source": {
    "blob": "668174d95851afa0c5134eddcdba2f0151201333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 276,
    "path": "GRWTSK/Algebra/Finite/Variant6c2c536121ff4aa49faadd8d1de6ed3039f45aa5551a237c335e416bc63b8168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:526227a5d266aa2ffeab394441bc7d92e6ffdad0460432bbefb8747cd7e1194c",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variant6c2c536121ff4aa49faadd8d1de6ed3039f45aa5551a237c335e416bc63b8168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4bcf82a-34a7-0aa5-f723-65b7d6170000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projective_of_restrictScalars [Module.Projective R M] : Module.Projective S M :=
  Module.Projective.of_split _ _ (comp_sec R S M)

end Algebra.FormallyUnramified
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variant6c2c536121ff4aa49faadd8d1de6ed3039f45aa5551a237c335e416bc63b8168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variant6c2c536121ff4aa49faadd8d1de6ed3039f45aa5551a237c335e416bc63b8168.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668174d95851afa0c5134eddcdba2f0151201333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
