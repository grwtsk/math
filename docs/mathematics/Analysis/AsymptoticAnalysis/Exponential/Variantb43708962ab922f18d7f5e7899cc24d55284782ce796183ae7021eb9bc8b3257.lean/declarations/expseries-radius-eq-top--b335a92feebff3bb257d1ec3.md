# expSeries_radius_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a7ac26ed6b6abf8f8b81c9d0961839efdae5280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3398ca3b-37b8-85a6-eb3e-22132764f1a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61cb3018-539c-8327-fb8f-78538ef023e3",
  "kind": "theorem",
  "lexical_name": "expSeries_radius_eq_top",
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
  "slug": "expseries-radius-eq-top--b335a92feebff3bb257d1ec3",
  "source": {
    "blob": "2a7ac26ed6b6abf8f8b81c9d0961839efdae5280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 389,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b335a92feebff3bb257d1ec3d332e3f6caaca559459b147594a1f59aed3e9598",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61cb3018-539c-8327-fb8f-78538ef023e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expSeries_radius_eq_top : (expSeries 𝕂 𝔸).radius = ∞ := by
  refine' (expSeries 𝕂 𝔸).radius_eq_top_of_summable_norm fun r => _
  refine' summable_of_norm_bounded_eventually _ (Real.summable_pow_div_factorial r) _
  filter_upwards [eventually_cofinite_ne 0] with n hn
  rw [norm_mul, norm_norm (expSeries 𝕂 𝔸 n), expSeries]
  rw [norm_smul (n ! : 𝕂)⁻¹ (ContinuousMultilinearMap.mkPiAlgebraFin 𝕂 n 𝔸)]
  -- porting note: Lean needed this to be explicit for some reason
  rw [norm_inv, norm_pow, NNReal.norm_eq, norm_natCast, mul_comm, ← mul_assoc, ← div_eq_mul_inv]
  have : ‖ContinuousMultilinearMap.mkPiAlgebraFin 𝕂 n 𝔸‖ ≤ 1 :=
    norm_mkPiAlgebraFin_le_of_pos (Ei := fun _ => 𝔸) (Nat.pos_of_ne_zero hn)
  exact mul_le_of_le_one_right (div_nonneg (pow_nonneg r.coe_nonneg n) n !.cast_nonneg) this
#align exp_series_radius_eq_top expSeries_radius_eq_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a7ac26ed6b6abf8f8b81c9d0961839efdae5280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
