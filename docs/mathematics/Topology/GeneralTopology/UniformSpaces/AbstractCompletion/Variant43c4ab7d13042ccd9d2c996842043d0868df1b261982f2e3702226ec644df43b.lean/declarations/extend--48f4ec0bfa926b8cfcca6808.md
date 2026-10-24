# extend₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8955dbbf8efa59c1fc3a20797754fc337450cb3597556b736604a96156a450a9",
  "kind": "def",
  "lexical_name": "extend₂",
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
  "slug": "extend--48f4ec0bfa926b8cfcca6808",
  "source": {
    "blob": "55f93e66b140eb952949ec72a21d01b50c951af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48f4ec0bfa926b8cfcca68089dd9ec4f765ed895e8dd4a187a4a54f1fe15148c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8955dbbf8efa59c1fc3a20797754fc337450cb3597556b736604a96156a450a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def extend₂ (f : α → β → γ) : hatα → hatβ → γ :=
  curry <| (pkg.prod pkg').extend (uncurry f)

section T0Space

variable [T0Space γ] {f : α → β → γ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant43c4ab7d13042ccd9d2c996842043d0868df1b261982f2e3702226ec644df43b.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55f93e66b140eb952949ec72a21d01b50c951af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
