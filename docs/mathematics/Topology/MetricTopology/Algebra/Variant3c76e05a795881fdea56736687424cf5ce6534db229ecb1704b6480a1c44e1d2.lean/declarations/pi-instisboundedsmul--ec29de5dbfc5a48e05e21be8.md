# Pi.instIsBoundedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49050f2974c1a49c1646b37a92f539aee313bc92bc98f843e8a01608f7639638",
  "kind": "instance",
  "lexical_name": "Pi.instIsBoundedSMul",
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
  "slug": "pi-instisboundedsmul--ec29de5dbfc5a48e05e21be8",
  "source": {
    "blob": "abad6dff06e2e2d8e46bb6fee57099e14f1dfca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 200,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec29de5dbfc5a48e05e21be85e2ef3d61a50abe5b8b2373ca0ea7f612303293e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49050f2974c1a49c1646b37a92f539aee313bc92bc98f843e8a01608f7639638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instIsBoundedSMul {α : Type*} {β : ι → Type*} [PseudoMetricSpace α]
    [∀ i, PseudoMetricSpace (β i)] [Zero α] [∀ i, Zero (β i)] [∀ i, SMul α (β i)]
    [∀ i, IsBoundedSMul α (β i)] : IsBoundedSMul α (∀ i, β i) where
  dist_smul_pair' x y₁ y₂ :=
    (dist_pi_le_iff <| by positivity).2 fun _ ↦
      (dist_smul_pair _ _ _).trans <| mul_le_mul_of_nonneg_left (dist_le_pi_dist _ _ _) dist_nonneg
  dist_pair_smul' x₁ x₂ y :=
    (dist_pi_le_iff <| by positivity).2 fun _ ↦
      (dist_pair_smul _ _ _).trans <| mul_le_mul_of_nonneg_left (dist_le_pi_dist _ 0 _) dist_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variant3c76e05a795881fdea56736687424cf5ce6534db229ecb1704b6480a1c44e1d2.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abad6dff06e2e2d8e46bb6fee57099e14f1dfca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
