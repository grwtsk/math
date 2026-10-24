# comap_conj_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f028f91-bdb2-8aa8-0ad1-97e92a5ed78b",
  "kind": "theorem",
  "lexical_name": "comap_conj_nhds_one",
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
  "slug": "comap-conj-nhds-one--a4f10ca74c6fb54a89588a85",
  "source": {
    "blob": "d402323ea598a9e547043be96dce8346ec4d7c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 453,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f10ca74c6fb54a89588a85d49baecdf7f587ce41800f214e3a5bac77614dff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f028f91-bdb2-8aa8-0ad1-97e92a5ed78b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_conj_nhds_one :
    comap (fun gx : β × β ↦ gx.1 * gx.2 * gx.1⁻¹) (𝓝 1) = comap snd (𝓝 1) := by
  let dr : β × β → β := fun xy ↦ xy.2 * xy.1⁻¹
  let dl : β × β → β := fun xy ↦ xy.1⁻¹ * xy.2
  let conj : β × β → β := fun gx ↦ gx.1 * gx.2 * gx.1⁻¹
  let φ : β × β ≃ β × β := (Equiv.refl β).prodShear (fun b ↦ (Equiv.mulLeft b).symm)
  have conj_φ : conj ∘ φ = dr := by
    ext; simp [conj, φ, dr]
  have snd_φ : snd ∘ φ = dl := by
    ext; simp [φ, dl]
  rw [← (comap_injective φ.surjective).eq_iff, comap_comap, comap_comap, conj_φ, snd_φ,
      ← uniformity_eq_comap_inv_mul_nhds_one, ← uniformity_eq_comap_mul_inv_nhds_one]

open Prod (snd) in
/-- Note: this assumes `[IsLeftUniformGroup β] [IsRightUniformGroup β]` instead of the more typical
(and equivalent) `[IsUniformGroup β]` because this is used in the proof of said equivalence. -/
@[to_additive /-- Note: this assumes `[IsLeftUniformAddGroup β] [IsRightUniformAddGroup β]`
instead of the more typical (and equivalent) `[IsUniformAddGroup β]` because this is used
in the proof of said equivalence. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantf51e6c58df8313c9d74f699e159ad67a18a8a7a9e245aa2212d17e207adbc754.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d402323ea598a9e547043be96dce8346ec4d7c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
