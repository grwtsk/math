# TendstoUniformlyOnFilter.prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c211454482223ca2c3298c9f35ff078031a90e2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34d3ecae-cbfc-9439-2831-4d78f070613c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa7edebc-0d86-d4f9-8b0b-179d602e1004",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOnFilter.prodMk",
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
  "slug": "tendstouniformlyonfilter-prodmk--fcc57c3518f83bba88dfaf81",
  "source": {
    "blob": "c211454482223ca2c3298c9f35ff078031a90e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc57c3518f83bba88dfaf81797356275a623a10c6e4e54ec33efa811c931e39",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa7edebc-0d86-d4f9-8b0b-179d602e1004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoUniformlyOnFilter.prodMk {ι' β' : Type*} [UniformSpace β'] {F' : ι' → α → β'}
    {f' : α → β'} {q : Filter ι'} (h : TendstoUniformlyOnFilter F f p p')
    (h' : TendstoUniformlyOnFilter F' f' q p') :
    TendstoUniformlyOnFilter (fun (i : ι × ι') a => (F i.1 a, F' i.2 a)) (fun a => (f a, f' a))
      (p ×ˢ q) p' :=
  fun u hu => ((h.prodMap h') u hu).diag_of_prod_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c211454482223ca2c3298c9f35ff078031a90e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
