# noncolliding_kernel_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c138038c430f2d7a338ed68a9d92f03ea233a285",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 413,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c295bca-ceb8-2219-fb42-88b7a64e98a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd652458-50ac-0708-b214-2bf334a3fb36",
  "kind": "theorem",
  "lexical_name": "noncolliding_kernel_analytic",
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
  "slug": "noncolliding-kernel-analytic--91adff18e68b702f0f957ade",
  "source": {
    "blob": "c138038c430f2d7a338ed68a9d92f03ea233a285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 413,
    "path": "GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91adff18e68b702f0f957ade79b7146555b50792ec726d1e5487757b9bef5d10",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd652458-50ac-0708-b214-2bf334a3fb36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncolliding_kernel_analytic
    (c : ℂ) (r : ℝ)
    (hlocal :
      ∀ s ∈ closedBall c (2 * r),
        0 < s.re ∧
          (s ∈ candidateSingularities → s = c))
    (o : ZeroOccurrence)
    (hpos : c ≠ 2 * shiftedValue o)
    (hneg : c ≠ -2 * shiftedValue o)
    (s : ℂ) (hs : s ∈ closedBall c (2 * r)) :
    AnalyticAt ℂ (sourceKernel (shiftedValue o)) s := by
  obtain ⟨hsre, hsing⟩ := hlocal s hs
  apply sourceKernel_analytic_of_denominators
  · intro h
    simp [h] at hsre
  · intro h
    have he : s = 2 * shiftedValue o :=
      sub_eq_zero.mp h
    have hc : s = c :=
      hsing (Or.inl (Or.inr ⟨o, he.symm⟩))
    exact hpos (hc.symm.trans he)
  · intro h
    have he : s = -2 * shiftedValue o := by
      linear_combination h
    have hc : s = c :=
      hsing (Or.inr ⟨o, he.symm⟩)
    exact hneg (hc.symm.trans he)

/-! ## Exact collision family -/

/-- Every occurrence whose positive or negative shifted candidate collides with
the chosen reflected pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c138038c430f2d7a338ed68a9d92f03ea233a285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
