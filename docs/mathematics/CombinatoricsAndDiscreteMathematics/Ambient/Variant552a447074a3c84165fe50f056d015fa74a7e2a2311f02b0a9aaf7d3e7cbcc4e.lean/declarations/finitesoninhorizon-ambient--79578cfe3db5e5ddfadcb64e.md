# FiniteSoninHorizon.Ambient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0089cdd0eb5ae0f9fe084a791602734a9fa20039dd892b0e760d0f373269ff5d",
  "kind": "abbrev",
  "lexical_name": "FiniteSoninHorizon.Ambient",
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
  "slug": "finitesoninhorizon-ambient--79578cfe3db5e5ddfadcb64e",
  "source": {
    "blob": "d3a334357191e6e7387de912599a4e5d0a003338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ambient/Variant552a447074a3c84165fe50f056d015fa74a7e2a2311f02b0a9aaf7d3e7cbcc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79578cfe3db5e5ddfadcb64ede9bffc33f0b751570a1aa3fd6a65071969ea280",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ambient/Variant552a447074a3c84165fe50f056d015fa74a7e2a2311f02b0a9aaf7d3e7cbcc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0089cdd0eb5ae0f9fe084a791602734a9fa20039dd892b0e760d0f373269ff5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev FiniteSoninHorizon.Ambient
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :=
  H.Sonin (topCut U)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ambient/Variant552a447074a3c84165fe50f056d015fa74a7e2a2311f02b0a9aaf7d3e7cbcc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ambient/Variant552a447074a3c84165fe50f056d015fa74a7e2a2311f02b0a9aaf7d3e7cbcc4e.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a334357191e6e7387de912599a4e5d0a003338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
