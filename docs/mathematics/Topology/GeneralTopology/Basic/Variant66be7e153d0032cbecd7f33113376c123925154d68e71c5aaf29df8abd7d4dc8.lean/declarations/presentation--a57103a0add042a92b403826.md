# presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9000991d52a23b3ec6ce2395b0de9a8fafee08b03d80b5a99a4fa4a639bd25e",
  "kind": "def",
  "lexical_name": "presentation",
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
  "slug": "presentation--a57103a0add042a92b403826",
  "source": {
    "blob": "ee7d2be152e0a98236de32759f80dc32363e90b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a57103a0add042a92b403826d760cc2607cf90344be0b3ba3f6a0b13877ced1c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9000991d52a23b3ec6ce2395b0de9a8fafee08b03d80b5a99a4fa4a639bd25e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def presentation (X : Profinite) : Stonean where
  toTop := (profiniteToCompHaus.obj X).projectivePresentation.p.toTop
  prop := (profiniteToCompHaus.obj X).presentation.prop

/-- The morphism from `presentation X` to `X`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7d2be152e0a98236de32759f80dc32363e90b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
