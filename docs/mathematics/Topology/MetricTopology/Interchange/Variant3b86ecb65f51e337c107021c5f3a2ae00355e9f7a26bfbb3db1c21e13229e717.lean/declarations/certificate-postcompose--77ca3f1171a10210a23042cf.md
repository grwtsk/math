# Certificate.postcompose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c55a37a2b1b40aa86e526a47bff53dd6c27230a01d898c5df6f5a499344b50e",
  "kind": "def",
  "lexical_name": "Certificate.postcompose",
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
  "slug": "certificate-postcompose--77ca3f1171a10210a23042cf",
  "source": {
    "blob": "3b7697ce0750c0577f5cd3962abbd83d0c22931a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 118,
    "path": "GRWTSK/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77ca3f1171a10210a23042cfae69fced71cb04a5b6ee8b14b5d08faec58c98f1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c55a37a2b1b40aa86e526a47bff53dd6c27230a01d898c5df6f5a499344b50e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Certificate.postcompose
    {Z : Type uZ} [PseudoMetricSpace Compare] [PseudoMetricSpace Z]
    {K : ℝ≥0}
    {square : InterchangeSquare PrevSources PrevAggregate NowSources Compare}
    (certificate : Certificate square)
    (post : Compare → Z)
    (hPost : LipschitzWith K post) :
    Certificate (postcompose square post) where
  bound := K * certificate.bound
  sound input := by
    calc
      metricDefect (postcompose square post) input
          ≤ K * metricDefect square input :=
            metricDefect_postcompose_le square post hPost input
      _ ≤ K * certificate.bound :=
            mul_le_mul_left' (certificate.sound input) K

section Additive

variable [SeminormedAddCommGroup Compare]

/-- Algebraic defect, available only when the comparison carrier has subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7697ce0750c0577f5cd3962abbd83d0c22931a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
