# smoothedPerronIntegrand_order_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af9d1221b3dba58e68f7a26c10afecfb7911a838",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a547064-4de3-55f3-4609-30cae3ab9a96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27d06eb7-2796-81fb-75a7-9ffab2e15560",
  "kind": "theorem",
  "lexical_name": "smoothedPerronIntegrand_order_zero",
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
  "slug": "smoothedperronintegrand-order-zero--2a42b37416f0c317cbf1eef1",
  "source": {
    "blob": "af9d1221b3dba58e68f7a26c10afecfb7911a838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a42b37416f0c317cbf1eef1d0badc31f723573777efefa1ea096ff1a6a179c1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27d06eb7-2796-81fb-75a7-9ffab2e15560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedPerronIntegrand_order_zero (x : ℝ) (hx : 0 < x) :
    meromorphicOrderAt (smoothedPerronIntegrand x) 0 = (-1 : ℤ) := by
  apply (meromorphicOrderAt_eq_int_iff (smoothedPerronIntegrand_meromorphicAt_zero x hx)).mpr
  refine ⟨fun s => (x : ℂ) ^ s / zetaPoleFactor s,
    perronNumerator_analyticAt_zero x hx, by simp, ?_⟩
  filter_upwards [self_mem_nhdsWithin] with s _hs
  rw [smoothedPerronIntegrand_factor]
  simp only [sub_zero, zpow_neg_one, smul_eq_mul, div_eq_mul_inv]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af9d1221b3dba58e68f7a26c10afecfb7911a838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
