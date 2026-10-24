# Hom.toExtensionHom_toAlgHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71c0fc0e-77ec-18c0-7dc8-651809c870a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1e23bd2-5190-493e-50e3-51365fc4b949",
  "kind": "lemma",
  "lexical_name": "Hom.toExtensionHom_toAlgHom_apply",
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
  "slug": "hom-toextensionhom-toalghom-apply--c56fbe98cc16d8a4e913d541",
  "source": {
    "blob": "edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 621,
    "path": "GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56fbe98cc16d8a4e913d541ac0f7ac2b2ef24aadab3424cdcbd187e4cfca352",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1e23bd2-5190-493e-50e3-51365fc4b949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.toExtensionHom_toAlgHom_apply [Algebra R S'] [IsScalarTower R R' S']
    [IsScalarTower R S S'] (f : P.Hom P') (x) :
    f.toExtensionHom.toAlgHom x = f.toAlgHom x := rfl

/-- The kernel of a presentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
