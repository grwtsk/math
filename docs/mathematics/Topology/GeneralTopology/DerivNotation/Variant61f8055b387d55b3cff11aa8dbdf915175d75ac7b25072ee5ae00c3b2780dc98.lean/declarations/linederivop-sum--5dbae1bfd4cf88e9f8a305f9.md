# lineDerivOp_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4316b5c4-19cd-d14f-76a8-69934fbe7cf7",
  "kind": "theorem",
  "lexical_name": "lineDerivOp_sum",
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
  "slug": "linederivop-sum--5dbae1bfd4cf88e9f8a305f9",
  "source": {
    "blob": "7912bf4ca5ffa28b710ac5da31731f4ab4f36da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dbae1bfd4cf88e9f8a305f9deaedf54052b7c1b202040633750b4bc43853d0b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4316b5c4-19cd-d14f-76a8-69934fbe7cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineDerivOp_sum (v : V) (f : ι → E) (s : Finset ι) :
    ∂_{v} (∑ i ∈ s, f i) = ∑ i ∈ s, ∂_{v} (f i) :=
  map_sum (AddMonoidHom.mk' ∂_{v} (lineDerivOp_add v)) f s

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivNotation/Variant61f8055b387d55b3cff11aa8dbdf915175d75ac7b25072ee5ae00c3b2780dc98.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7912bf4ca5ffa28b710ac5da31731f4ab4f36da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
