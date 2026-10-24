# PGL.mk_smul_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d1877c07107575750245699c227d7ae4299a10b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4612b3c-22f3-c793-25eb-14cff9a816d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f4b8443-f590-b933-fc94-cb589c4365ce",
  "kind": "lemma",
  "lexical_name": "PGL.mk_smul_mk",
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
  "slug": "pgl-mk-smul-mk--2705cd91a37dce0c2bdfe143",
  "source": {
    "blob": "7d1877c07107575750245699c227d7ae4299a10b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 253,
    "path": "GRWTSK/Algebra/LinearAlgebra/Action/Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2705cd91a37dce0c2bdfe1432b4f60c03ba8bfae9a190ea48f76b36ed019d46f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Action/Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f4b8443-f590-b933-fc94-cb589c4365ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PGL.mk_smul_mk (g : GL ι K) {v : ι → K} (hv : v ≠ 0) :
    (.mk g : PGL(ι, K)) • mk K v hv = mk K (g • v) (smul_ne_zero_iff_ne g|>.2 hv) := rfl

end Field

end Projectivization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Action/Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Action/Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1877c07107575750245699c227d7ae4299a10b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
