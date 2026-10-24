# eventually_no_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b25f2392-cd64-d7f9-639d-c8a35e5bb658",
  "kind": "theorem",
  "lexical_name": "eventually_no_roots",
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
  "slug": "eventually-no-roots--3c2b822b76c3fc50d7364143",
  "source": {
    "blob": "543735a6dd0ef2e65cbeb1da05740a2ee09a12ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c2b822b76c3fc50d73641438662dd2e607b9ab7172636d00d7ebd36dfdcc85a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b25f2392-cd64-d7f9-639d-c8a35e5bb658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_no_roots (hP : P ≠ 0) : ∀ᶠ x in atTop, ¬P.IsRoot x :=
  atTop_le_cofinite <| (finite_setOf_isRoot hP).compl_mem_cofinite

variable [OrderTopology 𝕜]

section PolynomialAtTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543735a6dd0ef2e65cbeb1da05740a2ee09a12ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
