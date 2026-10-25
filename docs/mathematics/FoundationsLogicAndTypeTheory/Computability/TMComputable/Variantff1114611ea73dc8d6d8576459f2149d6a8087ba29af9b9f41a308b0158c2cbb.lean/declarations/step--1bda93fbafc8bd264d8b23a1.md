# step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:013c749696c4ebc72177fefd2d63da9b7aa11401bab6846d3e15274a57c1c448",
  "kind": "def",
  "lexical_name": "step",
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
  "slug": "step--1bda93fbafc8bd264d8b23a1",
  "source": {
    "blob": "d414d6d2a6bf7533aa322554a7dc94ee249f0c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bda93fbafc8bd264d8b23a15a9ed765473272cb8745895c8250d5a32a2055a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:013c749696c4ebc72177fefd2d63da9b7aa11401bab6846d3e15274a57c1c448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def step : tm.Cfg → Option tm.Cfg :=
  Turing.TM2.step tm.m
#align turing.fin_tm2.step Turing.FinTM2.step

end

end FinTM2

/-- The initial configuration corresponding to a list in the input alphabet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d414d6d2a6bf7533aa322554a7dc94ee249f0c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
