# finiteRieszZeroHead_tendstoUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59eded3a-925f-514f-1eb3-1da93da66524",
  "kind": "theorem",
  "lexical_name": "finiteRieszZeroHead_tendstoUniformlyOn",
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
  "slug": "finiterieszzerohead-tendstouniformlyon--c0a4e9b8a5c106537ba6b442",
  "source": {
    "blob": "5defd1bb14197c5b36174470f7f6d9ecca74db7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0a4e9b8a5c106537ba6b442d8c50616cfafc606e44c8c1bf0771c498c6b9ebd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59eded3a-925f-514f-1eb3-1da93da66524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteRieszZeroHead_tendstoUniformlyOn (a b : ℝ) (ha : 1 < a) :
    TendstoUniformlyOn (fun T x : ℝ => finiteRieszZeroHead x T)
      fullRieszZeroValue atTop (Icc a b) := by
  rw [Metric.tendstoUniformlyOn_iff]
  intro ε hε
  have he := (firstRieszTailBudget_tendsto_zero b).eventually (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (2 : ℝ)] with T heT hT x hx
  rw [dist_eq_norm]
  exact ((norm_fullRieszZeroValue_sub_head x T (ha.trans_le hx.1) hT).trans
    (firstRieszTailBudget_mono x b T (ha.trans_le hx.1) hx.2 hT)).trans_lt heT

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5defd1bb14197c5b36174470f7f6d9ecca74db7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
