# prodAssoc_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c818e744-6e3f-92ca-587e-425371a3183c",
  "kind": "theorem",
  "lexical_name": "prodAssoc_prod",
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
  "slug": "prodassoc-prod--81a9439d4cfd85c6f5c7a95f",
  "source": {
    "blob": "d5794995f907b535da3a0558db8844f3a8c0b8de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 762,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a9439d4cfd85c6f5c7a95f657f7b8067ae6936f8ad5b233efdb50c569b5721",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c818e744-6e3f-92ca-587e-425371a3183c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodAssoc_prod [SFinite τ] :
    map MeasurableEquiv.prodAssoc ((μ.prod ν).prod τ) = μ.prod (ν.prod τ) := by
  have : sum (fun (p : ℕ × ℕ × ℕ) ↦
        (sfiniteSeq μ p.1).prod ((sfiniteSeq ν p.2.1).prod (sfiniteSeq τ p.2.2)))
      = sum (fun (p : (ℕ × ℕ) × ℕ) ↦
        (sfiniteSeq μ p.1.1).prod ((sfiniteSeq ν p.1.2).prod (sfiniteSeq τ p.2))) := by
    ext s hs
    rw [sum_apply _ hs, sum_apply _ hs, ← (Equiv.prodAssoc _ _ _).tsum_eq]
    simp only [Equiv.prodAssoc_apply]
  rw [← sum_sfiniteSeq μ, ← sum_sfiniteSeq ν, ← sum_sfiniteSeq τ, prod_sum, prod_sum,
    map_sum MeasurableEquiv.prodAssoc.measurable.aemeasurable, prod_sum, prod_sum, this]
  congr
  ext1 i
  refine (prod_eq_generateFrom generateFrom_measurableSet generateFrom_prod
    isPiSystem_measurableSet isPiSystem_prod ((sfiniteSeq μ i.1.1)).toFiniteSpanningSetsIn
    ((sfiniteSeq ν i.1.2).toFiniteSpanningSetsIn.prod (sfiniteSeq τ i.2).toFiniteSpanningSetsIn)
      ?_).symm
  rintro s hs _ ⟨t, ht, u, hu, rfl⟩; rw [mem_ofPred_eq] at hs ht hu
  simp_rw [map_apply (MeasurableEquiv.measurable _) (hs.prod (ht.prod hu)),
    MeasurableEquiv.prodAssoc, MeasurableEquiv.coe_mk, Equiv.prod_assoc_preimage, prod_prod,
    mul_assoc]

/-! ### The product of specific measures -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5794995f907b535da3a0558db8844f3a8c0b8de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
