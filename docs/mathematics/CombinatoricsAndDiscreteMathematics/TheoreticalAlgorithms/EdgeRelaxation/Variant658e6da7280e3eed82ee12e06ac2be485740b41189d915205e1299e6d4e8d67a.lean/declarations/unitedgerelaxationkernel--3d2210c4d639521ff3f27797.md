# unitEdgeRelaxationKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8182cee10cb2c030cb33c1dc3dd2a8f98ec8f66b93eea67111a6208db62a563",
  "kind": "def",
  "lexical_name": "unitEdgeRelaxationKernel",
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
  "slug": "unitedgerelaxationkernel--3d2210c4d639521ff3f27797",
  "source": {
    "blob": "1eb7cb26696ddb1fd4437c973b1e4bec6a5afbc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d2210c4d639521ff3f2779784bbd1301ba508e6be348b7ed1c4254d89ea9032",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8182cee10cb2c030cb33c1dc3dd2a8f98ec8f66b93eea67111a6208db62a563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitEdgeRelaxationKernel (p : Nat) :
    EdgeRelaxationKernel (unitDeltaRing p) where
  source := PUnit.unit
  target := PUnit.unit
  weight := PUnit.unit
  deltaWeight := PUnit.unit
  deltaWeight_eq := rfl
  frobeniusWeight := PUnit.unit
  frobeniusWeight_eq := rfl
  massPreserving := True
  massPreservingCertified := trivial
  boundary := [
    "Unit δ-ring edge-relaxation kernel.",
    "This is a typed interface example, not a spectral-rigidity theorem."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eb7cb26696ddb1fd4437c973b1e4bec6a5afbc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
