# coe_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7330247a13e715e138174a336ec7f34f9a23dee7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fabfae15-c1b2-b163-0ade-03aa5dbd540b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e417f2b4-a1c5-9a3e-61f2-03f807796270",
  "kind": "lemma",
  "lexical_name": "coe_smul",
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
  "slug": "coe-smul--4aed7b95a21c50c91c883eef",
  "source": {
    "blob": "7330247a13e715e138174a336ec7f34f9a23dee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 40,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aed7b95a21c50c91c883eefe893915b15de52b7e2d4404e16ac629fc1c593fd",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e417f2b4-a1c5-9a3e-61f2-03f807796270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_smul (a : R≥0) (x : S) : (a : R) • x = a • x :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7330247a13e715e138174a336ec7f34f9a23dee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
