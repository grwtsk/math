# tendsto_add_mul_div_add_mul_atTop_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f16194c7-fe19-2c76-a75b-dc0c9dd08647",
  "kind": "theorem",
  "lexical_name": "tendsto_add_mul_div_add_mul_atTop_nhds",
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
  "slug": "tendsto-add-mul-div-add-mul-attop-nhds--77e890a914c162b7b63eb114",
  "source": {
    "blob": "3462b9c785fa89cf93470d4589a1ad0b9a607b01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77e890a914c162b7b63eb114dbbf9f79b2421139b5c580317a1813c6ed88783d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f16194c7-fe19-2c76-a75b-dc0c9dd08647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_add_mul_div_add_mul_atTop_nhds (a b c : 𝕜) {d : 𝕜} (hd : d ≠ 0) :
    Tendsto (fun k : ℕ ↦ (a + c * k) / (b + d * k)) atTop (𝓝 (c / d)) := by
  apply Filter.Tendsto.congr'
  case f₁ => exact fun k ↦ (a * (↑k)⁻¹ + c) / (b * (↑k)⁻¹ + d)
  · refine (eventually_ne_atTop 0).mp (Eventually.of_forall ?_)
    intro h hx
    field_simp [hx]
  · apply Filter.Tendsto.div _ _ hd
    all_goals
      apply zero_add (_ : 𝕜) ▸ Filter.Tendsto.add_const _ _
      apply mul_zero (_ : 𝕜) ▸ Filter.Tendsto.const_mul _ _
      exact tendsto_inverse_atTop_nhds_zero_nat 𝕜

end RCLike
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RCLike/Variantd2131c0437b2d26a21f410415d86560548e916cb544a01811c178f8b78b3bbc2.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3462b9c785fa89cf93470d4589a1ad0b9a607b01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
