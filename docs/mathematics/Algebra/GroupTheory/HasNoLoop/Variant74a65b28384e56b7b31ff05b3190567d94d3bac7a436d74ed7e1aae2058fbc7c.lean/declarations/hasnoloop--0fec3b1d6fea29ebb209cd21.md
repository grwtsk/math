# HasNoLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4099ea81d5ed8f3a0237ca1800bc3a96d183ab3151635d79e7d14e0ae0be37c9",
  "kind": "class",
  "lexical_name": "HasNoLoop",
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
  "slug": "hasnoloop--0fec3b1d6fea29ebb209cd21",
  "source": {
    "blob": "b0e93e4abf7a4f122ffeb9c0a2d52b7a67f49651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fec3b1d6fea29ebb209cd21fa5777850bc7914f12d48826660b614b5714143f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4099ea81d5ed8f3a0237ca1800bc3a96d183ab3151635d79e7d14e0ae0be37c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasNoLoop (c : ComplexShape ι) : Prop where
  not_rel_self (i : ι) : ¬ c.Rel i i

section

variable (c : ComplexShape ι) [c.HasNoLoop] (j : ι)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e93e4abf7a4f122ffeb9c0a2d52b7a67f49651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
