# inverse_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faf3f908-d7a2-2ace-0e69-b5749eab1fde",
  "kind": "theorem",
  "lexical_name": "inverse_continuousAt",
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
  "slug": "inverse-continuousat--cedbdbfbd3be4dab92ee4a5e",
  "source": {
    "blob": "acdb16f8da185a0305573933881f665f4b152e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cedbdbfbd3be4dab92ee4a5e8e5fddba48b2535c3b9c3e6dd53fef1928314463",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faf3f908-d7a2-2ace-0e69-b5749eab1fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_continuousAt (x : Rˣ) : ContinuousAt inverse (x : R) := by
  have h_is_o : (fun t : R => inverse (↑x + t) - ↑x⁻¹) =o[𝓝 0] (fun _ => 1 : R → ℝ) :=
    (inverse_add_norm_diff_first_order x).trans_isLittleO (isLittleO_id_const one_ne_zero).norm_left
  have h_lim : Tendsto (fun y : R => y - x) (𝓝 x) (𝓝 0) := by
    refine' tendsto_zero_iff_norm_tendsto_zero.mpr _
    exact tendsto_iff_norm_tendsto_zero.mp tendsto_id
  rw [ContinuousAt, tendsto_iff_norm_tendsto_zero, inverse_unit]
  simpa [(· ∘ ·)] using h_is_o.norm_left.tendsto_div_nhds_zero.comp h_lim
#align normed_ring.inverse_continuous_at NormedRing.inverse_continuousAt

end NormedRing

namespace Units

open MulOpposite Filter NormedRing

/-- In a normed ring, the coercion from `Rˣ` (equipped with the induced topology from the
embedding in `R × R`) to `R` is an open embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acdb16f8da185a0305573933881f665f4b152e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
