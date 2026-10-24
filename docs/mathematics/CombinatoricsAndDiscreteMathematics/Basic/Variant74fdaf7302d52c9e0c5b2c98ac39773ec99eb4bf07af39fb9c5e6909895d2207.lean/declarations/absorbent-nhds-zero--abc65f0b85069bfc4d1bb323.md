# absorbent_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d73c0847-8eca-22f2-e169-ba8deec0b7f4",
  "kind": "theorem",
  "lexical_name": "absorbent_nhds_zero",
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
  "slug": "absorbent-nhds-zero--abc65f0b85069bfc4d1bb323",
  "source": {
    "blob": "f2ed60f15d24dc8b62d341f03cd555c26f2c89a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 346,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abc65f0b85069bfc4d1bb323181ff6500507efab6cbf5df70e58da47ae2b8fd6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d73c0847-8eca-22f2-e169-ba8deec0b7f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absorbent_nhds_zero (hA : A ∈ 𝓝 (0 : E)) : Absorbent 𝕜 A := by
  intro x
  obtain ⟨w, hw₁, hw₂, hw₃⟩ := mem_nhds_iff.mp hA
  have hc : Continuous fun t : 𝕜 => t • x := continuous_id.smul continuous_const
  obtain ⟨r, hr₁, hr₂⟩ :=
    Metric.isOpen_iff.mp (hw₂.preimage hc) 0 (by rwa [mem_preimage, zero_smul])
  have hr₃ := inv_pos.mpr (half_pos hr₁)
  refine' ⟨(r / 2)⁻¹, hr₃, fun a ha₁ => _⟩
  have ha₂ : 0 < ‖a‖ := hr₃.trans_le ha₁
  refine' (mem_smul_set_iff_inv_smul_mem₀ (norm_pos_iff.mp ha₂) _ _).2 (hw₁ <| hr₂ _)
  rw [Metric.mem_ball, dist_zero_right, norm_inv]
  calc
    ‖a‖⁻¹ ≤ r / 2 := (inv_le (half_pos hr₁) ha₂).mp ha₁
    _ < r := half_lt_self hr₁
#align absorbent_nhds_zero absorbent_nhds_zero

/-- The union of `{0}` with the interior of a balanced set is balanced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ed60f15d24dc8b62d341f03cd555c26f2c89a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
