# tendsto_abv_eval₂_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70a2bba1-0d21-f1fc-471c-a6adf4492c4b",
  "kind": "theorem",
  "lexical_name": "tendsto_abv_eval₂_atTop",
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
  "slug": "tendsto-abv-eval-attop--14b085710477d0cc1b8cbac4",
  "source": {
    "blob": "ff7cc5c14f3429a3badd33da6317ab0f01cb295d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b085710477d0cc1b8cbac4ce43d56406f7f06789034288e543d067ee159585",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a2bba1-0d21-f1fc-471c-a6adf4492c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_abv_eval₂_atTop {R S k α : Type*} [Semiring R] [Ring S]
    [Field k] [LinearOrder k] [IsStrictOrderedRing k]
    (f : R →+* S) (abv : S → k) [IsAbsoluteValue abv] (p : R[X]) (hd : 0 < degree p)
    (hf : f p.leadingCoeff ≠ 0) {l : Filter α} {z : α → S} (hz : Tendsto (abv ∘ z) l atTop) :
    Tendsto (fun x => abv (p.eval₂ f (z x))) l atTop := by
  revert hf; refine degree_pos_induction_on p hd ?_ ?_ ?_ <;> clear hd p
  · rintro _ - hc
    rw [leadingCoeff_mul_X, leadingCoeff_C] at hc
    simpa [abv_mul abv] using hz.const_mul_atTop ((abv_pos abv).2 hc)
  · intro _ _ ihp hf
    rw [leadingCoeff_mul_X] at hf
    simpa [abv_mul abv] using (ihp hf).atTop_mul_atTop₀ hz
  · intro _ a hd ihp hf
    rw [add_comm, leadingCoeff_add_of_degree_lt (degree_C_le.trans_lt hd)] at hf
    refine .atTop_of_add_const (abv (-f a)) ?_
    refine tendsto_atTop_mono (fun _ => abv_add abv _ _) ?_
    simpa using ihp hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff7cc5c14f3429a3badd33da6317ab0f01cb295d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
