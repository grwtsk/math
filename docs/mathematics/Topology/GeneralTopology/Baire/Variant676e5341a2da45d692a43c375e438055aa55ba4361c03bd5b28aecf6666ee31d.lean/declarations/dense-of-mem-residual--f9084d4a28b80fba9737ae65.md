# dense_of_mem_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36b5c75b-399b-4b19-5ede-1e41b3d0f720",
  "kind": "theorem",
  "lexical_name": "dense_of_mem_residual",
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
  "slug": "dense-of-mem-residual--f9084d4a28b80fba9737ae65",
  "source": {
    "blob": "f7eecb27e8705b47215657356ef9fe0b13e12fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9084d4a28b80fba9737ae6580fdc26abcb778ee6eb6618a0682a549798c2c4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36b5c75b-399b-4b19-5ede-1e41b3d0f720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_of_mem_residual {s : Set α} (hs : s ∈ residual α) : Dense s :=
  let ⟨_, hts, _, hd⟩ := mem_residual.1 hs
  hd.mono hts
#align dense_of_mem_residual dense_of_mem_residual

/-- Baire theorem: a countable intersection of dense Gδ sets is dense. Formulated here with ⋂₀. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7eecb27e8705b47215657356ef9fe0b13e12fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
