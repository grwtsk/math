# exampleTorsionFamilyCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dff62e5d488b15e9c033b6ae6d1f269dec7e6d5e66bc399eb72f251b6a6b62b8",
  "kind": "def",
  "lexical_name": "exampleTorsionFamilyCertificate",
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
  "slug": "exampletorsionfamilycertificate--440ffd2b7aa19f491aa4925b",
  "source": {
    "blob": "ef1e5919b45b09e12220b883375d5685666e8323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:440ffd2b7aa19f491aa4925b7c54d38578137502df4fc51fc75e6625bdc67096",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dff62e5d488b15e9c033b6ae6d1f269dec7e6d5e66bc399eb72f251b6a6b62b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleTorsionFamilyCertificate
    (family : TorsionEquivariance.TorsionFamily) :
    TorsionEquivariance.TorsionFamilyCertificate family where
  discreteAction := True
  discreteActionProof := True.intro
  relaxedAction := True
  relaxedActionProof := True.intro
  reconstructionCompatibility := True
  reconstructionCompatibilityProof := True.intro
  relaxationCommutes := True
  relaxationCommutesProof := True.intro
  reconstructionCommutes := True
  reconstructionCommutesProof := True.intro
  equivariantBijection := True
  equivariantBijectionProof := True.intro

/-- Toy decomposed torsion certificate for smoke examples. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef1e5919b45b09e12220b883375d5685666e8323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
