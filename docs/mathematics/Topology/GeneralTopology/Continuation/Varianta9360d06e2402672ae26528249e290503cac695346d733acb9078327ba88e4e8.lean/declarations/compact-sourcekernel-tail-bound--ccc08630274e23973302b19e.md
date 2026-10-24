# compact_sourceKernel_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85b9b119-c5c5-1515-86b7-5b4dd3bed2c2",
  "kind": "theorem",
  "lexical_name": "compact_sourceKernel_tail_bound",
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
  "slug": "compact-sourcekernel-tail-bound--ccc08630274e23973302b19e",
  "source": {
    "blob": "34e2567e57a9c60b8a98af3dbea45e7c756e786f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccc08630274e23973302b19e9f0e2c952afeef010a4033e65f45f822cd5b5698",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85b9b119-c5c5-1515-86b7-5b4dd3bed2c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_sourceKernel_tail_bound
    (K : Set ℂ) (hK : IsCompact K)
    (hzero : 0 ∉ K) :
    ∃ R C : ℝ,
      0 ≤ R ∧ 0 ≤ C ∧
      ∀ s ∈ K, ∀ z : ℂ,
        R ≤ ‖z‖ →
        (-(1 / 2 : ℝ) ≤ z.re ∧
          z.re ≤ 1 / 2) →
        ‖sourceKernel z s‖ ≤
          C * (1 + ‖z‖) ^ (-6 : ℝ) := by
  obtain ⟨M, hM⟩ :=
    hK.isBounded.exists_norm_le
  obtain ⟨B, hB, hkernels⟩ :=
    compact_unshifted_bound K hK hzero
  refine ⟨max M 0 + 1,
    tailConstant (max M 0) B,
    by positivity,
    tailConstant_nonneg _ _ hB, ?_⟩
  intro s hs z hz hstrip
  exact sourceKernel_norm_le
    (max M 0) B (le_max_right _ _) hB s z
    ((hM s hs).trans (le_max_left _ _))
    hz hstrip (hkernels s hs)

/-- Supremum norm of one complete occurrence contribution on a compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e2567e57a9c60b8a98af3dbea45e7c756e786f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
