# index_of_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c80462a9-3a43-3100-0c33-53a00ae4dc73",
  "kind": "theorem",
  "lexical_name": "index_of_factorization",
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
  "slug": "index-of-factorization--156449b4e1670c65d92372fc",
  "source": {
    "blob": "709a6b04451fb3a1ead9eb5287603cb7cdb104a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 29,
    "path": "GRWTSK/Analysis/Complex/RectangleDivisorIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:156449b4e1670c65d92372fcb07d6ed805031bb030312bfdfce59c0f6da6dd02",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangleDivisorIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c80462a9-3a43-3100-0c33-53a00ae4dc73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem index_of_factorization {ι : Type*} [Fintype ι] (D : Rectangle)
    (a : ι → ℂ) (m : ι → ℕ) (ha : ∀ i, a i ∈ D.interior)
    (f q : ℂ → ℂ) (hf : ContinuousOn f D.box) (hq : ContinuousOn q D.box)
    (hqn : ∀ w ∈ D.box, q w ≠ 0)
    (he : ∀ w ∈ D.box, f w = q w * FiniteLinearRemoval.product a m w)
    (hfn : ∀ t, D.image f hf t ≠ 0) :
    index (D.image f hf) (D.image_closed f hf) hfn = ∑ i, (m i : ℤ) := by
  classical
  let g : ι → C(I, ℂ) := fun i => (D.factor (a i)) ^ m i
  have gc (i : ι) : g i 0 = g i 1 := pow_closed _ (D.factor_closed _) _
  have gn (i : ι) : ∀ t, g i t ≠ 0 := pow_nonzero _ (D.factor_nonzero (ha i)) _
  have qi : index (D.image q hq) (D.image_closed q hq) (D.image_nonzero hq hqn) = 0 :=
    D.zero_free_index hq hqn
  have gi (i : ι) : index (g i) (gc i) (gn i) = (m i : ℤ) := by
    simpa only [g, D.factor_index_one (ha i), mul_one] using
      index_pow (D.factor (a i)) (D.factor_closed (a i)) (D.factor_nonzero (ha i)) (m i)
  have hp := index_prod Finset.univ g gc gn
  have hmul := index_mul (D.image q hq) (∏ i, g i) (D.image_closed q hq)
    (prod_closed _ _ gc) (D.image_nonzero hq hqn) (prod_nonzero _ _ gn)
  have hsame : ∀ t, D.image f hf t = (D.image q hq * ∏ i, g i) t := by
    intro t
    simpa only [Rectangle.image, ContinuousMap.mul_apply, product_apply,
      g, pow_apply, Rectangle.factor, FiniteLinearRemoval.product] using
      he (D.curve t) (D.curve_boundary t).1
  calc
    _ = index (D.image q hq * ∏ i, g i)
        (mul_closed _ _ (D.image_closed q hq) (prod_closed _ _ gc))
        (mul_nonzero _ _ (D.image_nonzero hq hqn) (prod_nonzero _ _ gn)) :=
      index_congr _ _ _ _ hsame
    _ = _ := by rw [hmul, qi, zero_add, hp]; exact Finset.sum_congr rfl (fun i _ => gi i)

/-- The quotient hypothesis is DISCHARGED from exact source germs and complete
zero coverage. Analyticity is neighborhood analyticity even at the boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangleDivisorIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangleDivisorIndex.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `709a6b04451fb3a1ead9eb5287603cb7cdb104a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
