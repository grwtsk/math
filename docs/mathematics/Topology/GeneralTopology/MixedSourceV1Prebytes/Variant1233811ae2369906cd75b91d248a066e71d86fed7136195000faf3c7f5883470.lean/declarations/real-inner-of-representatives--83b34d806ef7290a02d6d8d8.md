# real_inner_of_representatives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70c4156f-3135-b8d4-4e60-98920511593b",
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
  "slug": "real-inner-of-representatives--83b34d806ef7290a02d6d8d8",
  "source": {
    "blob": "40bc0ef3c17ffe8b9aea47375d79770ee5434ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b34d806ef7290a02d6d8d82efea23efb12a73715efb594334f88fc8fd5cf03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70c4156f-3135-b8d4-4e60-98920511593b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem real_inner_of_representatives (f g : ComplexL2) (u v : ℝ → ℝ)
    (hf : f =ᵐ[volume] fun x => (u x : ℂ))
    (hg : g =ᵐ[volume] fun x => (v x : ℂ)) :
    ⟪f, g⟫_ℝ = ∫ x : ℝ, u x * v x := by
  rw [real_inner_eq_re_inner, L2.inner_def]
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MixedSourceV1Prebytes/Variant1233811ae2369906cd75b91d248a066e71d86fed7136195000faf3c7f5883470.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40bc0ef3c17ffe8b9aea47375d79770ee5434ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
