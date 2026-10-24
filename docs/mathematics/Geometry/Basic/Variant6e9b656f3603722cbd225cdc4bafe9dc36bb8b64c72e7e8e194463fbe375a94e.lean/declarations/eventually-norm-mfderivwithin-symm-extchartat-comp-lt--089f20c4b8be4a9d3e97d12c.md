# eventually_norm_mfderivWithin_symm_extChartAt_comp_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:046b059d-8c4b-cf7d-68f7-f2fcdd7a1952",
  "kind": "lemma",
  "lexical_name": "eventually_norm_mfderivWithin_symm_extChartAt_comp_lt",
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
  "slug": "eventually-norm-mfderivwithin-symm-extchartat-comp-lt--089f20c4b8be4a9d3e97d12c",
  "source": {
    "blob": "df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 271,
    "path": "GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:089f20c4b8be4a9d3e97d12c5c91c0130974aecbd4c2f7d63962c8eae2231605",
  "verification": {
    "reference": "docs/verification/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:046b059d-8c4b-cf7d-68f7-f2fcdd7a1952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_norm_mfderivWithin_symm_extChartAt_comp_lt (x : M) :
    ∃ C > 0, ∀ᶠ y in 𝓝 x, ‖mfderiv[range I] (extChartAt I x).symm (extChartAt I x y)‖ < C := by
  rcases eventually_norm_symmL_trivializationAt_lt E (fun (x : M) ↦ TangentSpace% x) x
    with ⟨C, C_pos, hC⟩
  refine ⟨C, C_pos, ?_⟩
  have hx : (chartAt H x).source ∈ 𝓝 x := chart_source_mem_nhds H x
  filter_upwards [hC, hx] with y hy h'y
  rw [TangentBundle.symmL_trivializationAt h'y] at hy
  have A : (extChartAt I x).symm (extChartAt I x y) = y :=
    (extChartAt I x).left_inv (by simpa using h'y)
  convert! hy using 3 <;> congr

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
