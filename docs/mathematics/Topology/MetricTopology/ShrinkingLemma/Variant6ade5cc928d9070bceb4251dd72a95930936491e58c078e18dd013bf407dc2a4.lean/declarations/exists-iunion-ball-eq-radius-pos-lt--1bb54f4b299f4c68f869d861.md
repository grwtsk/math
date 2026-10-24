# exists_iUnion_ball_eq_radius_pos_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbe04ba3-8a61-9deb-12ec-26ea7fe27833",
  "kind": "theorem",
  "lexical_name": "exists_iUnion_ball_eq_radius_pos_lt",
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
  "slug": "exists-iunion-ball-eq-radius-pos-lt--1bb54f4b299f4c68f869d861",
  "source": {
    "blob": "f55553959a87363bec29bc98c78e3254496267bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb54f4b299f4c68f869d861b75711aef582735fe9bbde4e9fb28d99253d86c8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbe04ba3-8a61-9deb-12ec-26ea7fe27833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_iUnion_ball_eq_radius_pos_lt {r : ι → ℝ} (hr : ∀ i, 0 < r i)
    (uf : ∀ x, { i | x ∈ ball (c i) (r i) }.Finite) (uU : ⋃ i, ball (c i) (r i) = univ) :
    ∃ r' : ι → ℝ, ⋃ i, ball (c i) (r' i) = univ ∧ ∀ i, r' i ∈ Ioo 0 (r i) :=
  let ⟨r', hU, hv⟩ :=
    exists_subset_iUnion_ball_radius_pos_lt hr isClosed_univ (fun x _ => uf x) uU.ge
  ⟨r', univ_subset_iff.1 hU, hv⟩

/-- Let `R : α → ℝ` be a (possibly discontinuous) function on a proper metric space.
Let `s` be a closed set in `α` such that `R` is positive on `s`. Then there exists a collection of
pairs of balls `Metric.ball (c i) (r i)`, `Metric.ball (c i) (r' i)` such that

* all centers belong to `s`;
* for all `i` we have `0 < r i < r' i < R (c i)`;
* the family of balls `Metric.ball (c i) (r' i)` is locally finite;
* the balls `Metric.ball (c i) (r i)` cover `s`.

This is a simple corollary of `refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set`
and `exists_subset_iUnion_ball_radius_pos_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55553959a87363bec29bc98c78e3254496267bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
