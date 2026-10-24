# MonotoneOn.eventually_le_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c4f0f15f848114f4e01944f322e97351f51c219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4883b663-9517-c7f1-1e81-45a1ee6f2887",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a2823e5-858a-80ea-df86-23927e7200f2",
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
  "slug": "monotoneon-eventually-le-two-mul--bce360f78ce3f279847a8b43",
  "source": {
    "blob": "0c4f0f15f848114f4e01944f322e97351f51c219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 131,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BorelGrowth/Variantf5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bce360f78ce3f279847a8b435b09e1c29cfefbff07c253c9612c092c66720e07",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BorelGrowth/Variantf5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a2823e5-858a-80ea-df86-23927e7200f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–145.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BorelGrowth/Variantf5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BorelGrowth/Variantf5e60b9d4f5482e657cf73f93c6b106d2f0140c53b2039d0f3f4541797376168.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c4f0f15f848114f4e01944f322e97351f51c219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
