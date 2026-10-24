# ZetaSeam.finite_window_holds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fd6c9d89e9da4a6c3810a5e4a0f4d033e72fd40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82f03e82-b2be-f112-8466-8f95e7bbe841",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2bd9143-2b9e-14fc-4158-8880f8351bcd",
  "kind": "theorem",
  "lexical_name": "ZetaSeam.finite_window_holds",
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
  "slug": "zetaseam-finite-window-holds--2c8abb1ba043ff25fa009d81",
  "source": {
    "blob": "2fd6c9d89e9da4a6c3810a5e4a0f4d033e72fd40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c8abb1ba043ff25fa009d81a615093d2bb508c9c791cc27654e4f39ba28edb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2bd9143-2b9e-14fc-4158-8880f8351bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZetaSeam.finite_window_holds (T₁ T₂ : ℝ) :
    ({ρ | IsNontrivialZero ρ} ∩ {ρ | T₁ < ρ.im ∧ ρ.im ≤ T₂}).Finite := by
  set K : Set ℂ := (Icc 0 1) ×ℂ (Icc T₁ T₂) with hK
  have hKc : IsCompact K := isCompact_Icc.reProdIm isCompact_Icc
  choose t ht hfin using riemannZeta_zeros_locallyFinite
  obtain ⟨I, -, hcover⟩ := hKc.elim_nhds_subcover t (fun z _ => ht z)
  have hfinU : (⋃ z ∈ I, (t z ∩ {ρ : ℂ | ρ ≠ 1 ∧ riemannZeta ρ = 0})).Finite :=
    I.finite_toSet.biUnion fun z _ => hfin z
  refine hfinU.subset ?_
  rintro ρ ⟨hρ, hT₁, hT₂⟩
  have hρK : ρ ∈ K := by
    refine ⟨⟨hρ.2.1.le, hρ.2.2.le⟩, ⟨hT₁.le, hT₂⟩⟩
  obtain ⟨z, hzI, hρz⟩ := mem_iUnion₂.mp (hcover hρK)
  exact mem_iUnion₂.mpr ⟨z, hzI, hρz, hρ.not_trivial.2, hρ.1⟩

/-- With H-fin and finiteness discharged above, a ZetaSeam needs only the two reflection facts
(functional equation + conjugation symmetry). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variantd16cbfbbfff2cfe3d4df0425957ae20fd1828d8faf39e70f11a2acd85b45c7e3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd6c9d89e9da4a6c3810a5e4a0f4d033e72fd40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
