# associated_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93720e5e-19cf-d417-cc73-f7e48fa5b3a7",
  "kind": "theorem",
  "lexical_name": "associated_apply",
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
  "slug": "associated-apply--8963b6fd57ee0800f6b4b8c1",
  "source": {
    "blob": "82aefde7a95a10d09faa86361a6f21920d57baac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 881,
    "line": 877,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8502e440ef17d527b64f1117a1f76c93c260821133d2c95363f897609c2fded2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8963b6fd57ee0800f6b4b8c196f5b5a650fcfefb3933dc52941483332b4a83ce",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8502e440ef17d527b64f1117a1f76c93c260821133d2c95363f897609c2fded2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93720e5e-19cf-d417-cc73-f7e48fa5b3a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_apply (x y : M) :
    associatedHom S Q x y = ⅟(2 : Module.End R N) • (Q (x + y) - Q x - Q y) := rfl

set_option backward.defeqAttrib.useBackward true in
/-- Twice the associated bilinear map of `Q` is the same as the polar of `Q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8502e440ef17d527b64f1117a1f76c93c260821133d2c95363f897609c2fded2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8502e440ef17d527b64f1117a1f76c93c260821133d2c95363f897609c2fded2.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82aefde7a95a10d09faa86361a6f21920d57baac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
