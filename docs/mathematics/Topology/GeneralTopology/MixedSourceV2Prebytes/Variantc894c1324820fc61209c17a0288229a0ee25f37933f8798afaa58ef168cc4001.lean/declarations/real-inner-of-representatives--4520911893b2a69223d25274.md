# real_inner_of_representatives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2409ffa4-3b33-60cb-6a28-4bcaf5baa46f",
  "kind": "theorem",
  "lexical_name": "real_inner_of_representatives",
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
  "slug": "real-inner-of-representatives--4520911893b2a69223d25274",
  "source": {
    "blob": "3c2e5e5556e696bbed7f09cf6a51ae146760c49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/MixedSourceV2Prebytes/Variantc894c1324820fc61209c17a0288229a0ee25f37933f8798afaa58ef168cc4001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4520911893b2a69223d252747a6b2c83dcd0ae636b02c6f692df03edfb2477a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MixedSourceV2Prebytes/Variantc894c1324820fc61209c17a0288229a0ee25f37933f8798afaa58ef168cc4001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2409ffa4-3b33-60cb-6a28-4bcaf5baa46f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem real_inner_of_representatives (f g : ComplexL2) (u v : ℝ → ℝ)
    (hf : f =ᵐ[volume] fun x => (u x : ℂ))
    (hg : g =ᵐ[volume] fun x => (v x : ℂ)) :
    ⟪f, g⟫_ℝ = ∫ x : ℝ, u x * v x := by
  rw [real_inner_eq_re_inner ℂ, L2.inner_def]
  have he : (∫ x : ℝ, ⟪f x, g x⟫_ℂ) =
      ((∫ x : ℝ, u x * v x : ℝ) : ℂ) := by
    calc
      _ = ∫ x : ℝ, ((u x * v x : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [hf, hg] with x hx hy
        rw [hx, hy, RCLike.inner_apply']
        simp [mul_comm]
      _ = _ := integral_complex_ofReal
  rw [he]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MixedSourceV2Prebytes/Variantc894c1324820fc61209c17a0288229a0ee25f37933f8798afaa58ef168cc4001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MixedSourceV2Prebytes/Variantc894c1324820fc61209c17a0288229a0ee25f37933f8798afaa58ef168cc4001.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c2e5e5556e696bbed7f09cf6a51ae146760c49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
