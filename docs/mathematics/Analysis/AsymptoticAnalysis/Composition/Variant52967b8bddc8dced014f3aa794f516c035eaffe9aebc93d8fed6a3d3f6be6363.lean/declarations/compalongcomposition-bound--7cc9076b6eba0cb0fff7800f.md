# compAlongComposition_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3228752-a605-f6e4-ff70-bb2e8af38abe",
  "kind": "theorem",
  "lexical_name": "compAlongComposition_bound",
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
  "slug": "compalongcomposition-bound--7cc9076b6eba0cb0fff7800f",
  "source": {
    "blob": "c6c9794abc494d790c095633044ce10546f8cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 327,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc9076b6eba0cb0fff7800f557d34432ce66fca286d5c4ec3a60558ae8f84f6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3228752-a605-f6e4-ff70-bb2e8af38abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compAlongComposition_bound {n : ℕ} (p : FormalMultilinearSeries 𝕜 E F) (c : Composition n)
    (f : ContinuousMultilinearMap 𝕜 (fun _i : Fin c.length => F) G) (v : Fin n → E) :
    ‖f.compAlongComposition p c v‖ ≤ (‖f‖ * ∏ i, ‖p (c.blocksFun i)‖) * ∏ i : Fin n, ‖v i‖ :=
  calc
    ‖f.compAlongComposition p c v‖ = ‖f (p.applyComposition c v)‖ := rfl
    _ ≤ ‖f‖ * ∏ i, ‖p.applyComposition c v i‖ := (ContinuousMultilinearMap.le_op_norm _ _)
    _ ≤ ‖f‖ * ∏ i, ‖p (c.blocksFun i)‖ * ∏ j : Fin (c.blocksFun i), ‖(v ∘ c.embedding i) j‖ := by
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      refine' Finset.prod_le_prod (fun i _hi => norm_nonneg _) fun i _hi => _
      apply ContinuousMultilinearMap.le_op_norm
    _ = (‖f‖ * ∏ i, ‖p (c.blocksFun i)‖) *
        ∏ i, ∏ j : Fin (c.blocksFun i), ‖(v ∘ c.embedding i) j‖ := by
      rw [Finset.prod_mul_distrib, mul_assoc]
    _ = (‖f‖ * ∏ i, ‖p (c.blocksFun i)‖) * ∏ i : Fin n, ‖v i‖ := by
      rw [← c.blocksFinEquiv.prod_comp, ← Finset.univ_sigma_univ, Finset.prod_sigma]
      congr
#align formal_multilinear_series.comp_along_composition_bound FormalMultilinearSeries.compAlongComposition_bound

/-- The norm of `q.comp_along_composition p c` is controlled by the product of
the norms of the relevant bits of `q` and `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c9794abc494d790c095633044ce10546f8cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
