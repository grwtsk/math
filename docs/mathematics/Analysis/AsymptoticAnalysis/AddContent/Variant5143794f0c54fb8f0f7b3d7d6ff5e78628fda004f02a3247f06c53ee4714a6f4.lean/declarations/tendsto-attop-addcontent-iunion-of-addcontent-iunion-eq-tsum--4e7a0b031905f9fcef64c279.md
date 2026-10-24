# tendsto_atTop_addContent_iUnion_of_addContent_iUnion_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f309a2c3-6e3c-d3ca-104b-d6571057eb80",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_addContent_iUnion_of_addContent_iUnion_eq_tsum",
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
  "slug": "tendsto-attop-addcontent-iunion-of-addcontent-iunion-eq-tsum--4e7a0b031905f9fcef64c279",
  "source": {
    "blob": "b5d77c88c308407f1310d1dd0106b3c4ed916648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 631,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e7a0b031905f9fcef64c27947b6424df6115eb9220d33cf6ca117d7912c71bb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f309a2c3-6e3c-d3ca-104b-d6571057eb80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_addContent_iUnion_of_addContent_iUnion_eq_tsum
    {m : AddContent ℝ≥0∞ C} (hC : IsSetRing C)
    (m_iUnion : ∀ (f : ℕ → Set α) (_ : ∀ i, f i ∈ C) (_ : (⋃ i, f i) ∈ C)
      (_hf_disj : Pairwise (Disjoint on f)), m (⋃ i, f i) = ∑' i, m (f i))
    ⦃f : ℕ → Set α⦄ (hf_mono : Monotone f) (hf : ∀ i, f i ∈ C) (hf_Union : ⋃ i, f i ∈ C) :
    Tendsto (fun n ↦ m (f n)) atTop (𝓝 (m (⋃ i, f i))) := by
  rw [← iUnion_disjointed, m_iUnion _ (hC.disjointed_mem hf) (by rwa [iUnion_disjointed])
      (disjoint_disjointed f)]
  have h n : m (f n) = ∑ i ∈ range (n + 1), m (disjointed f i) := by
    nth_rw 1 [← addContent_accumulate _ hC (disjoint_disjointed f) (hC.disjointed_mem hf),
    ← hf_mono.partialSups_eq, ← partialSups_disjointed, partialSups_eq_biSup, accumulate]
    rfl
  simp_rw [h]
  refine (tendsto_add_atTop_iff_nat (f := (fun k ↦ ∑ i ∈ range k, m (disjointed f i))) 1).2 ?_
  exact ENNReal.tendsto_nat_tsum _

/-- If an additive content is σ-additive on a set ring, then it is σ-subadditive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d77c88c308407f1310d1dd0106b3c4ed916648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
