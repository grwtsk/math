# IsSubordinate.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b1f1b92-315f-900c-b081-0c4955fdf560",
  "kind": "theorem",
  "lexical_name": "IsSubordinate.mono",
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
  "slug": "issubordinate-mono--ec1352bcaed76b288f4fb6da",
  "source": {
    "blob": "925af7aacea1cb41fd825517f397accf86164f6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec1352bcaed76b288f4fb6dab09860106e9634ad89dac8ed08bd88d875b71805",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b1f1b92-315f-900c-b081-0c4955fdf560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubordinate.mono [Fintype ι] {π : TaggedPrepartition I} (hr₁ : π.IsSubordinate r₁)
    (h : ∀ x ∈ Box.Icc I, r₁ x ≤ r₂ x) : π.IsSubordinate r₂ :=
  hr₁.mono' fun J _ => h _ <| π.tag_mem_Icc J

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925af7aacea1cb41fd825517f397accf86164f6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
