# tendsto_nat_floor_mul_div_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e0bf1d7-a9f3-c569-5def-2b91dab95f3e",
  "kind": "theorem",
  "lexical_name": "tendsto_nat_floor_mul_div_atTop",
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
  "slug": "tendsto-nat-floor-mul-div-attop--04deb2fa2682df1db0c5fca7",
  "source": {
    "blob": "f229c808184fe0b2489be8d178257a08b5bbb449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 734,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04deb2fa2682df1db0c5fca7d069d8d459041f4d24da19929f14a5ef4cf5caac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e0bf1d7-a9f3-c569-5def-2b91dab95f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 734–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nat_floor_mul_div_atTop {a : R} (ha : 0 ≤ a) :
    Tendsto (fun x ↦ (⌊a * x⌋₊ : R) / x) atTop (𝓝 a) := by
  have A : Tendsto (fun x : R ↦ a - x⁻¹) atTop (𝓝 (a - 0)) :=
    tendsto_const_nhds.sub tendsto_inv_atTop_zero
  rw [sub_zero] at A
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le' A tendsto_const_nhds
  · refine eventually_atTop.2 ⟨1, fun x hx ↦ ?_⟩
    simp only [le_div_iff₀ (zero_lt_one.trans_le hx), _root_.sub_mul,
      inv_mul_cancel₀ (zero_lt_one.trans_le hx).ne']
    have := Nat.lt_floor_add_one (a * x)
    linarith
  · refine eventually_atTop.2 ⟨1, fun x hx ↦ ?_⟩
    rw [div_le_iff₀ (zero_lt_one.trans_le hx)]
    simp [Nat.floor_le (mul_nonneg ha (zero_le_one.trans hx))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean#L734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f229c808184fe0b2489be8d178257a08b5bbb449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
