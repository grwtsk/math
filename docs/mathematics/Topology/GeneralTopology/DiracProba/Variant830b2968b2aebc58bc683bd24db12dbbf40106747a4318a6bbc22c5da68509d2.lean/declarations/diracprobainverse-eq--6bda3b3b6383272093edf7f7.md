# diracProbaInverse_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "881efc07c3ffc2677ba1d76a92faadd29494f55c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/830b2968b2aebc58bc683bd24db12dbbf40106747a4318a6bbc22c5da68509d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7bbca8a-d6ee-38d5-7ac6-5c6464b0c219",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0db61301-6090-4216-8755-bd24a7a3ef44",
  "kind": "lemma",
  "lexical_name": "diracProbaInverse_eq",
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
  "slug": "diracprobainverse-eq--6bda3b3b6383272093edf7f7",
  "source": {
    "blob": "881efc07c3ffc2677ba1d76a92faadd29494f55c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant830b2968b2aebc58bc683bd24db12dbbf40106747a4318a6bbc22c5da68509d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bda3b3b6383272093edf7f71f2f9b2378c5f6845591a37dd986222c543db67e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant830b2968b2aebc58bc683bd24db12dbbf40106747a4318a6bbc22c5da68509d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0db61301-6090-4216-8755-bd24a7a3ef44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diracProbaInverse_eq [T0Space X] {x : X} {μ : range (diracProba (X := X))}
    (h : μ = diracProba x) :
    diracProbaInverse μ = x := by
  apply injective_diracProba (X := X)
  simp only [← h]
  exact (mem_range.mp μ.prop).choose_spec

/-- In a T0 topological space `X`, the assignment `x ↦ diracProba x` is a bijection to its
range in `ProbabilityMeasure X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant830b2968b2aebc58bc683bd24db12dbbf40106747a4318a6bbc22c5da68509d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant830b2968b2aebc58bc683bd24db12dbbf40106747a4318a6bbc22c5da68509d2.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881efc07c3ffc2677ba1d76a92faadd29494f55c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
