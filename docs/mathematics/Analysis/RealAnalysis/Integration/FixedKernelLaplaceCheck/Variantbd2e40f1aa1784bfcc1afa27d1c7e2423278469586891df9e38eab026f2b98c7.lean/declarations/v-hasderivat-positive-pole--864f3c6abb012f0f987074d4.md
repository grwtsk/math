# V_hasDerivAt_positive_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d39ff82b0aa4e2fcdc83fd5a342080834025baf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a6d1d0c-8099-d2ac-48bb-01166a6109bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c7f60d4-2629-7272-d29b-4c2d6de463db",
  "kind": "theorem",
  "lexical_name": "V_hasDerivAt_positive_pole",
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
  "slug": "v-hasderivat-positive-pole--864f3c6abb012f0f987074d4",
  "source": {
    "blob": "d39ff82b0aa4e2fcdc83fd5a342080834025baf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:864f3c6abb012f0f987074d4e2380e590272b5bdbcce3ee1898026745f222f20",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c7f60d4-2629-7272-d29b-4c2d6de463db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem V_hasDerivAt_positive_pole :
    HasDerivAt V (positivePoleSlope : ℂ) (1 / 2) := by
  have hd := (removedFilter_differentiableAt (1 / 2) (by norm_num)).hasDerivAt
  have hpoly := ((hasDerivAt_id (1 / 2 : ℂ)).pow 2).sub_const (1 / 4)
  have hprod := hpoly.mul hd
  have h : HasDerivAt (fun z : ℂ ↦ (z ^ 2 - 1 / 4) * removedFilter z)
      (positivePoleSlope : ℂ) (1 / 2) := by
    convert hprod using 1 <;> first | rfl | norm_num [removedFilter_positive_pole]
  apply h.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds (by norm_num : (1 / 2 : ℂ) ≠ 0)] with z hz
  exact V_eq_removedFilter z hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d39ff82b0aa4e2fcdc83fd5a342080834025baf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
