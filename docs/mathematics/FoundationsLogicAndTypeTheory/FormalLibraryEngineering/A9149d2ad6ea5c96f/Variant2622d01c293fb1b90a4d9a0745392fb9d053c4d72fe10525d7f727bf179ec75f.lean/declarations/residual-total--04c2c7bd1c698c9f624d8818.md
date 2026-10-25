# Residual.total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c84c1b2ef43225d5c2f567d4cb7d1d8bff85371b24ebcaf75f2688053f8d73b9",
  "kind": "def",
  "lexical_name": "Residual.total",
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
  "slug": "residual-total--04c2c7bd1c698c9f624d8818",
  "source": {
    "blob": "0e1201d1d7dc6eaf63a1776d19c98eb28c182b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9149d2ad6ea5c96f/Variant2622d01c293fb1b90a4d9a0745392fb9d053c4d72fe10525d7f727bf179ec75f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04c2c7bd1c698c9f624d8818fae91c971dc7966e60ffdea63c0fff49670615dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9149d2ad6ea5c96f/Variant2622d01c293fb1b90a4d9a0745392fb9d053c4d72fe10525d7f727bf179ec75f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c84c1b2ef43225d5c2f567d4cb7d1d8bff85371b24ebcaf75f2688053f8d73b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Residual.total (residual : Residual) : ℝ :=
  residual.localResidual +
  residual.coverageResidual +
  residual.sparseSynthesisResidual +
  residual.basisSpanResidual +
  residual.eventCycleResidual +
  residual.twistedCohomologyResidual

end Mathematics.Trajectory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9149d2ad6ea5c96f/Variant2622d01c293fb1b90a4d9a0745392fb9d053c4d72fe10525d7f727bf179ec75f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9149d2ad6ea5c96f/Variant2622d01c293fb1b90a4d9a0745392fb9d053c4d72fe10525d7f727bf179ec75f.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e1201d1d7dc6eaf63a1776d19c98eb28c182b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
