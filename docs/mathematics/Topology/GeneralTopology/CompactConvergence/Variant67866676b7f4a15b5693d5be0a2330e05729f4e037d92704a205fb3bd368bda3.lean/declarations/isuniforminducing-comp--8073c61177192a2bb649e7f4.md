# isUniformInducing_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8683126735ebafcd4497cb58bee1f000b20b3916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f327cf5-870e-2756-7f4e-e61aa4eef58f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8a8fb41-2540-8ba6-b6b1-f8aa1f84eb8c",
  "kind": "theorem",
  "lexical_name": "isUniformInducing_comp",
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
  "slug": "isuniforminducing-comp--8073c61177192a2bb649e7f4",
  "source": {
    "blob": "8683126735ebafcd4497cb58bee1f000b20b3916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8073c61177192a2bb649e7f4de10ecf10aea173acec3526165969e7cc249adc3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8a8fb41-2540-8ba6-b6b1-f8aa1f84eb8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformInducing_comp (g : C(β, δ)) (hg : IsUniformInducing g) :
    IsUniformInducing (ContinuousMap.comp g : C(α, β) → C(α, δ)) :=
  isUniformEmbedding_toUniformOnFunIsCompact.isUniformInducing.of_comp_iff.mp <|
    UniformOnFun.postcomp_isUniformInducing hg |>.comp
      isUniformEmbedding_toUniformOnFunIsCompact.isUniformInducing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8683126735ebafcd4497cb58bee1f000b20b3916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
