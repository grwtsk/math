# residualization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddee65e84312d3e1197331bcceef2d7e99145404239c1c83855f51f1fa25d961",
  "kind": "def",
  "lexical_name": "residualization",
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
  "slug": "residualization--80fe818b599d88ccc445271b",
  "source": {
    "blob": "8cf658e564c2ae81459b519380879fdeae91af36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/21cb35a4c32f6feca1dbecbf7cb7536aa65b76ade344a925ed7d58c26cd0b79dPhaseIIResidualQ/Variant9d778606eb702a01b137f4fa3555776b2c0dc09c1c798f8be4b82608515bef56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80fe818b599d88ccc445271b62e6ce07945ab1c65bb4c573a9c91e8164aa1459",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/21cb35a4c32f6feca1dbecbf7cb7536aa65b76ade344a925ed7d58c26cd0b79dPhaseIIResidualQ/Variant9d778606eb702a01b137f4fa3555776b2c0dc09c1c798f8be4b82608515bef56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddee65e84312d3e1197331bcceef2d7e99145404239c1c83855f51f1fa25d961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residualization (Q : PhaseIIResidualQuotient G) :
    ProvenanceResidualization (P × U) U :=
  Q.representative.phaseIIResidualization

/-- The quotient residualization realizes exactly the quotient geometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/21cb35a4c32f6feca1dbecbf7cb7536aa65b76ade344a925ed7d58c26cd0b79dPhaseIIResidualQ/Variant9d778606eb702a01b137f4fa3555776b2c0dc09c1c798f8be4b82608515bef56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/21cb35a4c32f6feca1dbecbf7cb7536aa65b76ade344a925ed7d58c26cd0b79dPhaseIIResidualQ/Variant9d778606eb702a01b137f4fa3555776b2c0dc09c1c798f8be4b82608515bef56.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf658e564c2ae81459b519380879fdeae91af36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
