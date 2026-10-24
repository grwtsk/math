# Balanced.neg_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "293616e04c567872b78d8730784f2ade2c1d908d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f05ee0b9-980b-25f8-2098-c77607e24a02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b74944e-1c13-976b-0022-2e9be18c71ff",
  "kind": "theorem",
  "lexical_name": "Balanced.neg_mem_iff",
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
  "slug": "balanced-neg-mem-iff--346a3d706f192d93b14a8b5c",
  "source": {
    "blob": "293616e04c567872b78d8730784f2ade2c1d908d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:346a3d706f192d93b14a8b5cea0929ee11967770b188017d3ca2483805c112bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b74944e-1c13-976b-0022-2e9be18c71ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Balanced.neg_mem_iff [NormOneClass 𝕜] (h : Balanced 𝕜 s) {x : E} : -x ∈ s ↔ x ∈ s :=
  ⟨fun hx ↦ by simpa using h.smul_mem (a := -1) (by simp) hx,
    fun hx ↦ by simpa using h.smul_mem (a := -1) (by simp) hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant72c17a134ce659b7cff9276c8300607224f6dd148ebc3ebf59a95499fd3991ec.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293616e04c567872b78d8730784f2ade2c1d908d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
