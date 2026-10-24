# smoothedPerronIntegrand_order_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:241f1828-3a2f-3b64-7ef1-af659601b64c",
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
  "slug": "smoothedperronintegrand-order-zero--9272de25cfb893dbc646013a",
  "source": {
    "blob": "a9d2aadbbe1f31a62a043b8165ffea9aa1bc2bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9272de25cfb893dbc646013ae52514d0bed0640b767d5f2397fa1f75d8ea3cff",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241f1828-3a2f-3b64-7ef1-af659601b64c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

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

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d2aadbbe1f31a62a043b8165ffea9aa1bc2bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
