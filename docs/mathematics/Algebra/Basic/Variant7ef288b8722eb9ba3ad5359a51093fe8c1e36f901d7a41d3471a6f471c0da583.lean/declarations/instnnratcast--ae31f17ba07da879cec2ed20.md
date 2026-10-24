# instNNRatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73e3a8bfef875cece6e58329af35b21cf4c6a8e97cc1a2ba3ce0344a94b3d5db",
  "kind": "instance",
  "lexical_name": "instNNRatCast",
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
  "slug": "instnnratcast--ae31f17ba07da879cec2ed20",
  "source": {
    "blob": "6063058cb140c1fe0afcdd045752763b970d59be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 159,
    "path": "GRWTSK/Algebra/Basic/Variant7ef288b8722eb9ba3ad5359a51093fe8c1e36f901d7a41d3471a6f471c0da583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae31f17ba07da879cec2ed2086e3f95ea9da67ff4a5a490ecac45a53af942e2f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7ef288b8722eb9ba3ad5359a51093fe8c1e36f901d7a41d3471a6f471c0da583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73e3a8bfef875cece6e58329af35b21cf4c6a8e97cc1a2ba3ce0344a94b3d5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNNRatCast : NNRatCast ℝ where nnratCast q := ⟨q⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7ef288b8722eb9ba3ad5359a51093fe8c1e36f901d7a41d3471a6f471c0da583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7ef288b8722eb9ba3ad5359a51093fe8c1e36f901d7a41d3471a6f471c0da583.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6063058cb140c1fe0afcdd045752763b970d59be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
