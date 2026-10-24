# shortComplexIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14a428314507a6ead3903eab154cf7948d8d2618337cce06f7010e02da15b001",
  "kind": "def",
  "lexical_name": "shortComplexIso",
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
  "slug": "shortcomplexiso--42130870e53cad1ff96f3195",
  "source": {
    "blob": "9d99fce03cf3f4bc73b211b213f2227ae04e8e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42130870e53cad1ff96f319597a8f92a8ef19253e7eed2340272aea211bfbf8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14a428314507a6ead3903eab154cf7948d8d2618337cce06f7010e02da15b001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def shortComplexIso (r : ℤ) (hr : r₀ ≤ r) (pq pq' pq'' : κ)
    (hpq : (c r).Rel pq pq') (hpq' : (c r).Rel pq' pq'')
    (n₀ n₁ n₂ n₃ n₄ : ℤ)
    (hn₁ : n₀ + 1 = n₁) (hn₂ : n₁ + 1 = n₂) (hn₃ : n₂ + 1 = n₃) (hn₄ : n₃ + 1 = n₄)
    (hn₂' : n₂ = data.deg pq') :
    (page X data r hr).sc' pq pq' pq'' ≅
      X.dShortComplex (homOfLE (data.le₀₁ r pq''))
        (homOfLE (data.le₁₂ pq'')) (homOfLE (data.le₂₃ r pq''))
        (homOfLE (by simpa only [← data.hc₁₃ r pq' pq'' hpq', data.hc₀₂ r pq pq' hpq]
          using data.le₁₂ pq')) (homOfLE (data.le₀₁ r pq))
        (homOfLE (data.le₁₂ pq)) (homOfLE (data.le₂₃ r pq)) n₀ n₁ n₂ n₃ n₄ hn₁ hn₂ hn₃ hn₄ := by
  refine ShortComplex.isoMk
    (pageXIso _ _ _ hr _ _ _ _ _ rfl rfl rfl rfl _ _ _ (by have := data.hc r pq pq' hpq; lia))
    (pageXIso _ _ _ hr _ _ _ _ _ (by rw [data.hc₀₂ r pq' pq'' hpq'])
    (by rw [data.hc₁₃ r pq' pq'' hpq'])
    (by rw [data.hc₀₂ r pq pq' hpq]) (by rw [data.hc₁₃ r pq pq' hpq]) _ _ _ hn₂')
    (pageXIso _ _ _ hr _ _ _ _ _ rfl rfl rfl rfl _ _ _ (by have := data.hc r pq' pq'' hpq'; lia))
    ?_ ?_
  · simp only [← Iso.comp_inv_eq, Category.assoc]
    exact (pageD_eq X data r hr pq pq' hpq _ _ _ _ _ (data.hc₀₂ r pq' pq'' hpq').symm
      (data.hc₁₃ r pq' pq'' hpq').symm ..).symm
  · simp only [← Iso.comp_inv_eq, Category.assoc]
    exact (pageD_eq X data r hr pq' pq'' hpq' _ _ _ _ _ rfl rfl ..).symm

section

variable (r r' : ℤ) (hrr' : r + 1 = r') (hr : r₀ ≤ r)
  (pq pq' pq'' : κ) (hpq : (c r).prev pq' = pq) (hpq' : (c r).next pq' = pq'')
  (i₀' i₀ i₁ i₂ i₃ i₃' : ι)
  (hi₀' : i₀' = data.i₀ r' pq')
  (hi₀ : i₀ = data.i₀ r pq')
  (hi₁ : i₁ = data.i₁ pq')
  (hi₂ : i₂ = data.i₂ pq')
  (hi₃ : i₃ = data.i₃ r pq')
  (hi₃' : i₃' = data.i₃ r' pq')
  (n₀ n₁ n₂ : ℤ)
  (hn₁' : n₁ = data.deg pq')

namespace HomologyData

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d99fce03cf3f4bc73b211b213f2227ae04e8e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
