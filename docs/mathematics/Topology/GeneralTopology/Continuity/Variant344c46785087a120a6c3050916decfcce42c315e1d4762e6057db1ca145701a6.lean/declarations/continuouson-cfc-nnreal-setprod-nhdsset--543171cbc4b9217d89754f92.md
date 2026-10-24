# continuousOn_cfc_nnreal_setProd_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a849ec92-abea-78c4-5f4a-6d903ca6e3af",
  "kind": "theorem",
  "lexical_name": "continuousOn_cfc_nnreal_setProd_nhdsSet",
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
  "slug": "continuouson-cfc-nnreal-setprod-nhdsset--543171cbc4b9217d89754f92",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 454,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:543171cbc4b9217d89754f92da8d38fd8cbb8f521ab4fbe5aa38ac6dd88d6b80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a849ec92-abea-78c4-5f4a-6d903ca6e3af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_cfc_nnreal_setProd_nhdsSet [CompleteSpace A] {s : Set ℝ≥0} :
    ContinuousOn (fun fa : (ℝ≥0 →ᵤ[{t | IsCompact t ∧ t ⊆ s}] ℝ≥0) × A ↦ cfc (toFun {s} fa.1) fa.2)
      ({f | ContinuousOn (toFun {t | IsCompact t ∧ t ⊆ s} f) s} ×ˢ
        {a | 0 ≤ a ∧ s ∈ 𝓝ˢ (spectrum ℝ≥0 a)}) := by
  refine continuousOn_of_locally_continuousOn fun (f, a) ⟨hf, ha, has⟩ ↦ ?_
  have hs := ContinuousFunctionalCalculus.isCompact_spectrum (R := ℝ≥0) a
  obtain ⟨k, ⟨hka, hk⟩, hks⟩ := hs.nhdsSet_basis_isCompact.mem_iff.mp has
  have := (upperHemicontinuous_spectrum_nnreal A).isOpen k
  refine ⟨Set.univ ×ˢ {x | k ∈ 𝓝ˢ (spectrum ℝ≥0 x)}, isOpen_univ.prod this, by simpa, ?_⟩
  conv in cfc _ => equals cfc (toFun {k} (ofFun {k} (toFun {t | IsCompact t ∧ t ⊆ s} fa.1))) => rfl
  refine continuousOn_cfc_nnreal_setProd hk |>.comp'
    (uniformContinuous_ofFun_toFun_of_mem _ {t | IsCompact t ∧ t ⊆ s} _ ⟨hk, hks⟩ |>.prodMap
      uniformContinuous_id).continuous.continuousOn ?_
  intro (f, a) ⟨⟨hf, ha⟩, ⟨_, ha'⟩⟩
  exact ⟨hf.mono hks, ha.1, subset_of_mem_nhdsSet ha'⟩

/-- If `f : ℝ≥0 → ℝ≥0` is continuous on a compact set `s` and `a : X → A` tends to `a₀ : A` along a
filter `l` (such that eventually `0 ≤ a x` and has spectrum contained in `s`, as does `a₀`), then
`fun x ↦ cfc f (a x)` tends to `cfc f a₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
