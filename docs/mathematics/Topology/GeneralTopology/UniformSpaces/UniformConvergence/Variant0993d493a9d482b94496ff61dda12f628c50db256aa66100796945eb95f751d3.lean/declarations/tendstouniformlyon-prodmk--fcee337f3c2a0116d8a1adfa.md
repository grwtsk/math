# TendstoUniformlyOn.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f98f56c79a806af72290ec5f7605a92f191e5ad3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:704e32d0-82ee-8055-ecfc-1b0b915c334a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea43b2c9-eaa6-886f-3d2b-ffb6e4d5ef52",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOn.prodMk",
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
  "slug": "tendstouniformlyon-prodmk--fcee337f3c2a0116d8a1adfa",
  "source": {
    "blob": "f98f56c79a806af72290ec5f7605a92f191e5ad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcee337f3c2a0116d8a1adfaff9b56067aa1f2b64281bed40d6742e3f524865b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea43b2c9-eaa6-886f-3d2b-ffb6e4d5ef52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem TendstoUniformlyOn.prodMk {ι' β' : Type*} [UniformSpace β'] {F' : ι' → α → β'}
    {f' : α → β'} {p' : Filter ι'} (h : TendstoUniformlyOn F f p s)
    (h' : TendstoUniformlyOn F' f' p' s) :
    TendstoUniformlyOn (fun (i : ι × ι') a => (F i.1 a, F' i.2 a)) (fun a => (f a, f' a)) (p ×ˢ p')
      s :=
  (congr_arg _ s.inter_self).mp ((h.prodMap h').comp fun a => (a, a))

@[deprecated (since := "2025-03-10")]
alias TendstoUniformlyOn.prod := TendstoUniformlyOn.prodMk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98f56c79a806af72290ec5f7605a92f191e5ad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
