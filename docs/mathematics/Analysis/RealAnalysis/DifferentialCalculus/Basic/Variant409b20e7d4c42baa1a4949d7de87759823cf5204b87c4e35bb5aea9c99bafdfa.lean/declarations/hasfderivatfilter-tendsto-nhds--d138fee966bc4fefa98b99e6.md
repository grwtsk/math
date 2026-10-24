# HasFDerivAtFilter.tendsto_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2d8d9c24d5c267d02323df0ec84e4adcca2c07a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 706,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2040bd3d-3634-b952-b8f3-e755ad4adb6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8de6a4a-15b8-edf7-101d-fb7b35b5b683",
  "kind": "theorem",
  "lexical_name": "HasFDerivAtFilter.tendsto_nhds",
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
  "slug": "hasfderivatfilter-tendsto-nhds--d138fee966bc4fefa98b99e6",
  "source": {
    "blob": "f2d8d9c24d5c267d02323df0ec84e4adcca2c07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 706,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d138fee966bc4fefa98b99e6fc213141655a5e4c61ca2e5ecb1225757518cb96",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8de6a4a-15b8-edf7-101d-fb7b35b5b683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAtFilter.tendsto_nhds (hL : L ≤ 𝓝 x) (h : HasFDerivAtFilter f f' x L) :
    Tendsto f L (𝓝 (f x)) := by
  have : Tendsto (fun x' => f x' - f x) L (𝓝 0) := by
    refine' h.isBigO_sub.trans_tendsto (Tendsto.mono_left _ hL)
    rw [← sub_self x]
    exact tendsto_id.sub tendsto_const_nhds
  have := this.add (@tendsto_const_nhds _ _ _ (f x) _)
  rw [zero_add (f x)] at this
  exact this.congr (by simp only [sub_add_cancel, eq_self_iff_true, forall_const])
#align has_fderiv_at_filter.tendsto_nhds HasFDerivAtFilter.tendsto_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2d8d9c24d5c267d02323df0ec84e4adcca2c07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
