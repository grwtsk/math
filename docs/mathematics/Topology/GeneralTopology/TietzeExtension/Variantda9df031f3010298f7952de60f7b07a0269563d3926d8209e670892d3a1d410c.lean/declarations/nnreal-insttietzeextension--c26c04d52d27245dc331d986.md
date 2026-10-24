# NNReal.instTietzeExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f05fac16c0fbf8baf7be0e99f9be65ff70513bdab50a4c5766843856ff7d335",
  "kind": "instance",
  "lexical_name": "NNReal.instTietzeExtension",
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
  "slug": "nnreal-insttietzeextension--c26c04d52d27245dc331d986",
  "source": {
    "blob": "9b3db329f400ab296085c00d203ded5f2010274b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 525,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c26c04d52d27245dc331d98664c4a06be6095ca338bf15beaa057a2199a87388",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f05fac16c0fbf8baf7be0e99f9be65ff70513bdab50a4c5766843856ff7d335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NNReal.instTietzeExtension : TietzeExtension ℝ≥0 :=
  .of_retract ⟨((↑) : ℝ≥0 → ℝ), by fun_prop⟩ ⟨Real.toNNReal, continuous_real_toNNReal⟩ <| by
    ext; simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3db329f400ab296085c00d203ded5f2010274b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
