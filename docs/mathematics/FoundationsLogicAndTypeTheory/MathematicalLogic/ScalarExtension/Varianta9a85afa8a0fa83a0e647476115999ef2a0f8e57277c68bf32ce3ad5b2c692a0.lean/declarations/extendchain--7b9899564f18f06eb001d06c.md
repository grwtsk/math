# extendChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01e3aca60ff0cbd9c5c387d57866e1c1162b7874737e846c89ef5a5d6fc9b820",
  "kind": "def",
  "lexical_name": "extendChain",
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
  "slug": "extendchain--7b9899564f18f06eb001d06c",
  "source": {
    "blob": "c52da2547ab26c576fbae880888c55b40b0c5b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b9899564f18f06eb001d06c14f5eb903e75fbf0ee2dda570c04429be5f46634",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01e3aca60ff0cbd9c5c387d57866e1c1162b7874737e846c89ef5a5d6fc9b820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendChain
    {C D : M₀.Object} :
    PerfectComplex.QuasiIsoChain M₀ C D →
      PerfectComplex.QuasiIsoChain M₁
        (E.extendObject C) (E.extendObject D)
  | .nil C => .nil (E.extendObject C)
  | .cons f rest =>
      .cons (E.extendCertifiedQuasiIso f) (extendChain rest)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52da2547ab26c576fbae880888c55b40b0c5b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
