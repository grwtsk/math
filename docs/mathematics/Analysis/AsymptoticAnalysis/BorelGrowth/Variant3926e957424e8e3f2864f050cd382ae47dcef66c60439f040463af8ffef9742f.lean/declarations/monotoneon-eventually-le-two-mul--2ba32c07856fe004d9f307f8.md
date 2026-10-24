# MonotoneOn.eventually_le_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e31c0839-90c5-a9b8-1654-ecf5de6d5211",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.eventually_le_two_mul",
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
  "slug": "monotoneon-eventually-le-two-mul--2ba32c07856fe004d9f307f8",
  "source": {
    "blob": "24bda5b6e7d28692adcbff7c552b0220cd93a07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 139,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ba32c07856fe004d9f307f8584eb26ed17f9c71cece75469fba3c43e3104773",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e31c0839-90c5-a9b8-1654-ecf5de6d5211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.eventually_le_two_mul {S : ℝ → ℝ} {a : ℝ}
    (h₁ : MonotoneOn S (Set.Ici a)) (h₂ : 0 ≤ S a) :
    ∀ᶠ r in volume.cofinite ⊓ atTop, S (r + (S r)⁻¹) ≤ 2 * S r := by
  by_cases hb : ∀ b, a ≤ b → S b = 0
  · have : Set.Ici a ∈ volume.cofinite ⊓ atTop := by
      rw [mem_inf_iff_superset]
      use (Set.Ioo (-a) a)ᶜ, Measure.mem_cofinite.mpr (by simp), (Set.Ici a), (by aesop)
      simp
    filter_upwards [this]
    simp_all
  · push Not at hb
    obtain ⟨b, h₁b, h₂b⟩ := hb
    apply MonotoneOn.eventually_le_two_mul' (a := b)
    · apply h₁.mono (Ici_subset_Ici.2 h₁b)
    · grind [h₁ self_mem_Ici (mem_Ici.mpr h₁b) h₁b]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BorelGrowth/Variant3926e957424e8e3f2864f050cd382ae47dcef66c60439f040463af8ffef9742f.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24bda5b6e7d28692adcbff7c552b0220cd93a07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
