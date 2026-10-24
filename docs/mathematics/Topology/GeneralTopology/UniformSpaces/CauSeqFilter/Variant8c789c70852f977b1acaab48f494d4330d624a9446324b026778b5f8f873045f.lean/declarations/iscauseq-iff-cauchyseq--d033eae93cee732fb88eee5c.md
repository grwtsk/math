# isCauSeq_iff_cauchySeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c33f9c52ddc802dea46e0425ea9fa7293833725d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f843e8d5-8dc3-0f10-ad17-1c0f58c0ac6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d13f40cc-99b2-617d-dab2-7bf680f2c697",
  "kind": "theorem",
  "lexical_name": "isCauSeq_iff_cauchySeq",
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
  "slug": "iscauseq-iff-cauchyseq--d033eae93cee732fb88eee5c",
  "source": {
    "blob": "c33f9c52ddc802dea46e0425ea9fa7293833725d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d033eae93cee732fb88eee5c691d678f6a32c54fd44090c3cc4b1e08b919f710",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d13f40cc-99b2-617d-dab2-7bf680f2c697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_iff_cauchySeq {α : Type u} [NormedField α] {u : ℕ → α} :
    IsCauSeq norm u ↔ CauchySeq u :=
  ⟨fun h => CauSeq.cauchySeq ⟨u, h⟩, fun h => h.isCauSeq⟩

set_option backward.isDefEq.respectTransparency.types false in
-- see Note [lower instance priority]
/-- A complete normed field is complete as a metric space, as Cauchy sequences converge by
assumption and this suffices to characterize completeness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant8c789c70852f977b1acaab48f494d4330d624a9446324b026778b5f8f873045f.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c33f9c52ddc802dea46e0425ea9fa7293833725d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
