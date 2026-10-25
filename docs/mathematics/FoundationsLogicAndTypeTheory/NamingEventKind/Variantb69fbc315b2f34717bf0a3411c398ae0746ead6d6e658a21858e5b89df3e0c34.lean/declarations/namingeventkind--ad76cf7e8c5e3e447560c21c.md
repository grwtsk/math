# NamingEventKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38eb0174348047b0bbe946fcf9540199240c5b5ab60f62fa6dce028b5e81449e",
  "kind": "inductive",
  "lexical_name": "NamingEventKind",
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
  "slug": "namingeventkind--ad76cf7e8c5e3e447560c21c",
  "source": {
    "blob": "3374ba5b70175961f4c983a4e5de12d240f063ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad76cf7e8c5e3e447560c21c47458873fac4c48d443ad7bb884f1c3a005f292b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38eb0174348047b0bbe946fcf9540199240c5b5ab60f62fa6dce028b5e81449e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive NamingEventKind
  | prepareEvidence
  | oraclePropose
  | modelPropose
  | repairSchema
  | compare
  | clarify
  | reviseOracle
  | reviseModel
  | accept
  | reject
  deriving DecidableEq, Repr, Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3374ba5b70175961f4c983a4e5de12d240f063ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
