# absoluteGaloisGroupAbelianization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de32d5a6583433c70a130ab5a4142dd39e8ff64b7b1e15b4fdc3fd50469f8a78",
  "kind": "abbrev",
  "lexical_name": "absoluteGaloisGroupAbelianization",
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
  "slug": "absolutegaloisgroupabelianization--a97f124b456a5e22b8fe8409",
  "source": {
    "blob": "d6f53caba5c805967fa63cd041416345601a789a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 102,
    "path": "GRWTSK/Algebra/AbsoluteGaloisGroup/Variant4dec96510aca586f3d60c8fcd1f3f2ba0978c346f88a0c34d0ade260432fef96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a97f124b456a5e22b8fe84094b06af1028cbb4404c875335c0833a6d5b59e9d4",
  "verification": {
    "reference": "docs/verification/Algebra/AbsoluteGaloisGroup/Variant4dec96510aca586f3d60c8fcd1f3f2ba0978c346f88a0c34d0ade260432fef96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de32d5a6583433c70a130ab5a4142dd39e8ff64b7b1e15b4fdc3fd50469f8a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev absoluteGaloisGroupAbelianization := TopologicalAbelianization (G_K K)

local notation "G_K_ab" => absoluteGaloisGroupAbelianization

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsoluteGaloisGroup/Variant4dec96510aca586f3d60c8fcd1f3f2ba0978c346f88a0c34d0ade260432fef96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsoluteGaloisGroup/Variant4dec96510aca586f3d60c8fcd1f3f2ba0978c346f88a0c34d0ade260432fef96.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6f53caba5c805967fa63cd041416345601a789a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
