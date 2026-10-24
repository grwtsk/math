# instNeZeroSepDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9e43981abf7128485f9a22cd4797e30ce0ed0a7a7484a578eb05e7812c20784",
  "kind": "instance",
  "lexical_name": "instNeZeroSepDegree",
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
  "slug": "instnezerosepdegree--b10fe03224d5a477a5a4c63c",
  "source": {
    "blob": "836efe8e6b5831c65e988b8ea27adabec93a9933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 276,
    "path": "GRWTSK/Algebra/SeparableClosure/Variant1743f110930b337030f69f6a2f8fa1b070581cbec700ceb526602f9b2f00d65c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b10fe03224d5a477a5a4c63c9f293cba6f550a6eb94a5d07b3c172a8338de4c6",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableClosure/Variant1743f110930b337030f69f6a2f8fa1b070581cbec700ceb526602f9b2f00d65c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9e43981abf7128485f9a22cd4797e30ce0ed0a7a7484a578eb05e7812c20784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNeZeroSepDegree : NeZero (sepDegree F E) := ⟨rank_pos.ne'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableClosure/Variant1743f110930b337030f69f6a2f8fa1b070581cbec700ceb526602f9b2f00d65c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableClosure/Variant1743f110930b337030f69f6a2f8fa1b070581cbec700ceb526602f9b2f00d65c.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836efe8e6b5831c65e988b8ea27adabec93a9933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
