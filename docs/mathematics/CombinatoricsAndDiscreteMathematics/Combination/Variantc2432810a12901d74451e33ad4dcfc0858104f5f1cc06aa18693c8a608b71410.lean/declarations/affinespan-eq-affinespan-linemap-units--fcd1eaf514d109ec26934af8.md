# affineSpan_eq_affineSpan_lineMap_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:653cd829-3d94-b1b4-5da3-476836960074",
  "kind": "theorem",
  "lexical_name": "affineSpan_eq_affineSpan_lineMap_units",
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
  "slug": "affinespan-eq-affinespan-linemap-units--fcd1eaf514d109ec26934af8",
  "source": {
    "blob": "0a6ac907ae6e17699091ab4d76849afd971415f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1215,
    "line": 1188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcd1eaf514d109ec26934af8be58fe2265e36f18d6fe986ff25722f26c18b792",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:653cd829-3d94-b1b4-5da3-476836960074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1188–1215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_eq_affineSpan_lineMap_units [Nontrivial k] {s : Set P} {p : P} (hp : p ∈ s)
    (w : s → Units k) :
    affineSpan k (Set.range fun q : s => AffineMap.lineMap p ↑q (w q : k)) = affineSpan k s := by
  have : s = Set.range ((↑) : s → P) := by simp
  conv_rhs =>
    rw [this]

  apply le_antisymm
    <;> intro q hq
    <;> erw [mem_affineSpan_iff_eq_weightedVSubOfPoint_vadd k V _ (⟨p, hp⟩ : s) q] at hq ⊢
    <;> obtain ⟨t, μ, rfl⟩ := hq
    <;> use t
    <;> [use fun x => μ x * ↑(w x); use fun x => μ x * ↑(w x)⁻¹]
    <;> simp [smul_smul]
#align affine_span_eq_affine_span_line_map_units affineSpan_eq_affineSpan_lineMap_units

end AffineSpace'

section DivisionRing

variable {k : Type*} {V : Type*} {P : Type*} [DivisionRing k] [AddCommGroup V] [Module k V]

variable [AffineSpace V P] {ι : Type*}

open Set Finset

/-- The centroid lies in the affine span if the number of points,
converted to `k`, is not zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean#L1188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a6ac907ae6e17699091ab4d76849afd971415f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
