# ker_coprod_of_disjoint_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "644ce80ee538180c4241f9bf5c53c25a92ff9b71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b62f4cd-6bf6-26f1-62ec-4df398934a9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7701cb1-2cf4-dbbb-bdfd-65b4fcd1be5b",
  "kind": "lemma",
  "lexical_name": "ker_coprod_of_disjoint_range",
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
  "slug": "ker-coprod-of-disjoint-range--8062e5b6f57572ee9f7f27fe",
  "source": {
    "blob": "644ce80ee538180c4241f9bf5c53c25a92ff9b71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 430,
    "path": "GRWTSK/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8062e5b6f57572ee9f7f27feb3ad4cda4f88f2c896d08d4797017653d5459cda",
  "verification": {
    "reference": "docs/verification/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7701cb1-2cf4-dbbb-bdfd-65b4fcd1be5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_coprod_of_disjoint_range {f₁ : M₁ →L[R] M} {f₂ : M₂ →L[R] M}
    (hf : Disjoint f₁.range f₂.range) :
    (f₁.coprod f₂).ker = f₁.ker.prod f₂.ker :=
  LinearMap.ker_coprod_of_disjoint_range f₁.toLinearMap f₂.toLinearMap hf

end AddCommGroup

end coprod

end ContinuousLinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PiProd/Variant985774fe0f23cb1458806938f73fe158d9b9fe3201a01226a3da52f2a4ed66ea.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644ce80ee538180c4241f9bf5c53c25a92ff9b71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
