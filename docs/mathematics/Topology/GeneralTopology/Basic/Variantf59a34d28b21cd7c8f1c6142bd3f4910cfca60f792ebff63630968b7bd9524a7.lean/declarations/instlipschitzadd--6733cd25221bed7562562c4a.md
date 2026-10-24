# instLipschitzAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a0d0804d1a16fde9d4114848bc388c7013418fd61b189d1f5c162d530c5d504",
  "kind": "instance",
  "lexical_name": "instLipschitzAdd",
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
  "slug": "instlipschitzadd--6733cd25221bed7562562c4a",
  "source": {
    "blob": "585d9d176eb564e3c1df48636820e578a036fd7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 628,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf59a34d28b21cd7c8f1c6142bd3f4910cfca60f792ebff63630968b7bd9524a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6733cd25221bed7562562c4a07a42baa83bcf4feda99d80e523054621670c26e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf59a34d28b21cd7c8f1c6142bd3f4910cfca60f792ebff63630968b7bd9524a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a0d0804d1a16fde9d4114848bc388c7013418fd61b189d1f5c162d530c5d504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLipschitzAdd : LipschitzAdd (α →ᵇ β) where
  lipschitz_add :=
    ⟨LipschitzAdd.C β, by
      have C_nonneg := (LipschitzAdd.C β).coe_nonneg
      rw [lipschitzWith_iff_dist_le_mul]
      rintro ⟨f₁, g₁⟩ ⟨f₂, g₂⟩
      rw [dist_le (mul_nonneg C_nonneg dist_nonneg)]
      intro x
      refine le_trans (lipschitz_with_lipschitz_const_add ⟨f₁ x, g₁ x⟩ ⟨f₂ x, g₂ x⟩) ?_
      gcongr
      apply max_le_max <;> exact dist_coe_le_dist x⟩

end LipschitzAdd

section sub

variable [TopologicalSpace α]
variable {R : Type*} [PseudoMetricSpace R] [Sub R] [BoundedSub R] [ContinuousSub R]
variable (f g : α →ᵇ R)

/-- The pointwise difference of two bounded continuous functions is again bounded continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf59a34d28b21cd7c8f1c6142bd3f4910cfca60f792ebff63630968b7bd9524a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf59a34d28b21cd7c8f1c6142bd3f4910cfca60f792ebff63630968b7bd9524a7.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585d9d176eb564e3c1df48636820e578a036fd7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
