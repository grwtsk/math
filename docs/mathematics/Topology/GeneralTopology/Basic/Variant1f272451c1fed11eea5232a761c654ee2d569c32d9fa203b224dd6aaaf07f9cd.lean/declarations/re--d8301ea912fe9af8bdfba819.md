# re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95ddb2857dcefb4f7f46aaadb7134f7b80b8ecbeb0dedbca5660c8cb7b98d43f",
  "kind": "def",
  "lexical_name": "re",
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
  "slug": "re--d8301ea912fe9af8bdfba819",
  "source": {
    "blob": "6727a05ec5f0e845943a22188e0e349ed9a0006b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 437,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8301ea912fe9af8bdfba8190df7f696d21ada0130b2ba59d7e0293d2ef4ab16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95ddb2857dcefb4f7f46aaadb7134f7b80b8ecbeb0dedbca5660c8cb7b98d43f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def re (z : 𝕔𝔻) : ℝ :=
  Complex.re z

/-- Imaginary part of a point of the unit disc. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1f272451c1fed11eea5232a761c654ee2d569c32d9fa203b224dd6aaaf07f9cd.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6727a05ec5f0e845943a22188e0e349ed9a0006b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
