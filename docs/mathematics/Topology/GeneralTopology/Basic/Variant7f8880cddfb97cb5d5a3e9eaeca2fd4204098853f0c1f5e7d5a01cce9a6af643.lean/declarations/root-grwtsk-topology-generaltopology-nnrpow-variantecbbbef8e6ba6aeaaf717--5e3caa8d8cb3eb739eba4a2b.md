# _root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.isStrictlyPositive_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a623aabe-75d7-f03b-268a-a11b112089ae",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.isStrictlyPositive_TFAE",
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
  "slug": "root-grwtsk-topology-generaltopology-nnrpow-variantecbbbef8e6ba6aeaaf717--5e3caa8d8cb3eb739eba4a2b",
  "source": {
    "blob": "3ec5dbefe8609409fed35b3e004162817c4bfc78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 843,
    "line": 821,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e3caa8d8cb3eb739eba4a2bce7d5abf9d9b218bab68c385d7301142189141cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a623aabe-75d7-f03b-268a-a11b112089ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 821–843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.isStrictlyPositive_TFAE {a : A} :
    [IsStrictlyPositive a,
     IsStrictlyPositive (sqrt a) ∧ a = sqrt a * sqrt a,
     IsUnit (sqrt a) ∧ a = sqrt a * sqrt a,
     ∃ b, IsStrictlyPositive b ∧ a = b * b,
     ∃ b, IsUnit b ∧ IsSelfAdjoint b ∧ a = b * b,
     ∃ b, IsUnit b ∧ a = star b * b,
     ∃ b, IsUnit b ∧ a = b * star b,
     0 ≤ a ∧ IsUnit a,
     IsSelfAdjoint a ∧ ∀ x ∈ spectrum ℝ a, 0 < x].TFAE := by
  tfae_have 1 ↔ 8 := IsStrictlyPositive.iff_of_unital
  tfae_have 1 ↔ 9 := ⟨fun h => ⟨h.isSelfAdjoint,
      StarOrderedRing.isStrictlyPositive_iff_spectrum_pos a |>.mp h⟩,
    fun h => (StarOrderedRing.isStrictlyPositive_iff_spectrum_pos a).mpr h.2⟩
  tfae_have 1 → 2 := fun h => ⟨h.sqrt, sqrt_mul_sqrt_self a |>.symm⟩
  tfae_have 2 → 3 := fun h => ⟨h.1.isUnit, h.2⟩
  tfae_have 3 → 4 := fun h => ⟨sqrt a, h.1.isStrictlyPositive (sqrt_nonneg _), h.2⟩
  tfae_have 4 → 5 := fun ⟨b, hb, hab⟩ => ⟨b, hb.isUnit, hb.isSelfAdjoint, hab⟩
  tfae_have 5 → 6 := fun ⟨b, hb, hbsa, hab⟩ => ⟨b, hb, hbsa.symm ▸ hab⟩
  tfae_have 6 → 7 := fun ⟨b, hb, hab⟩ => ⟨star b, hb.star, star_star b |>.symm ▸ hab⟩
  tfae_have 7 → 8 := fun ⟨b, hb, hab⟩ => ⟨hab ▸ mul_star_self_nonneg _, hab ▸ hb.mul hb.star⟩
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean#L821).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec5dbefe8609409fed35b3e004162817c4bfc78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
