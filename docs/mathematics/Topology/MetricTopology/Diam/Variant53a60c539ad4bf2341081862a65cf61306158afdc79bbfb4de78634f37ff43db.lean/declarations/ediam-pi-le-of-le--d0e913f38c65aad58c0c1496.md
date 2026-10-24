# ediam_pi_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2196111d-3d3f-1253-401c-a99d7ebf4fe1",
  "kind": "theorem",
  "lexical_name": "ediam_pi_le_of_le",
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
  "slug": "ediam-pi-le-of-le--d0e913f38c65aad58c0c1496",
  "source": {
    "blob": "ec304b9eaf48300a6604e3889dcd0f0af5ab82da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e913f38c65aad58c0c1496f2a3d0746bbaaf8fe7c1070e5987029a8e3e8dc8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2196111d-3d3f-1253-401c-a99d7ebf4fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_pi_le_of_le {ι : Type*} {X : ι → Type*} [Fintype ι] [∀ i, PseudoEMetricSpace (X i)]
    {s : ∀ i : ι, Set (X i)} {c : ℝ≥0∞} (h : ∀ b, ediam (s b) ≤ c) : ediam (Set.pi univ s) ≤ c := by
  refine ediam_le fun x hx y hy => edist_pi_le_iff.mpr ?_
  rw [mem_univ_pi] at hx hy
  exact fun b => ediam_le_iff.1 (h b) (x b) (hx b) (y b) (hy b)

end WeakPseudoEMetricSpace

section WeakEMetricSpace

variable [TopologicalSpace X] [WeakEMetricSpace X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Diam/Variant53a60c539ad4bf2341081862a65cf61306158afdc79bbfb4de78634f37ff43db.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec304b9eaf48300a6604e3889dcd0f0af5ab82da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
