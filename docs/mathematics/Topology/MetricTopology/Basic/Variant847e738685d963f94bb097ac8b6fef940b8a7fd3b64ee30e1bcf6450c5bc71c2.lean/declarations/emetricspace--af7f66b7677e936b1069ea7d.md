# EMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d928f0d37c4b7df3911965cc3360dacc114bf4e76a9c2a7f0178ea7150ae88f8",
  "kind": "class",
  "lexical_name": "EMetricSpace",
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
  "slug": "emetricspace--af7f66b7677e936b1069ea7d",
  "source": {
    "blob": "5c631544583800fff714f3c40b9cb1bd86e51e7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1015,
    "line": 1006,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af7f66b7677e936b1069ea7d0e48de8b67e379830d9bef54f7bcbce8f4c67ac0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d928f0d37c4b7df3911965cc3360dacc114bf4e76a9c2a7f0178ea7150ae88f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class EMetricSpace (α : Type u) extends PseudoEMetricSpace α : Type u where
  eq_of_edist_eq_zero : ∀ {x y : α}, edist x y = 0 → x = y
#align emetric_space EMetricSpace

variable {γ : Type w} [EMetricSpace γ]

export EMetricSpace (eq_of_edist_eq_zero)

/-- Characterize the equality of points by the vanishing of their extended distance -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant847e738685d963f94bb097ac8b6fef940b8a7fd3b64ee30e1bcf6450c5bc71c2.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c631544583800fff714f3c40b9cb1bd86e51e7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
