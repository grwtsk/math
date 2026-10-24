# singleAtomFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b1c8f8b6caa78288eb324a51c34c1f433110edd321694d2877be05ac6d81927",
  "kind": "def",
  "lexical_name": "singleAtomFamily",
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
  "slug": "singleatomfamily--a1d23c1f840ef88838224d08",
  "source": {
    "blob": "14bef7b4845cd9ca928ec5b5a923ac235a03ad85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 32,
    "path": "GRWTSK/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1d23c1f840ef88838224d08794427fca630f5c954dcd041fc2934a49864b3fa",
  "verification": {
    "reference": "docs/verification/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b1c8f8b6caa78288eb324a51c34c1f433110edd321694d2877be05ac6d81927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def singleAtomFamily (A : ℝ) (s : ℂ) : ℂ :=
  2 * (comparisonProfile A : ℂ) * Complex.exp (-s * (Real.log 2 : ℂ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bef7b4845cd9ca928ec5b5a923ac235a03ad85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
