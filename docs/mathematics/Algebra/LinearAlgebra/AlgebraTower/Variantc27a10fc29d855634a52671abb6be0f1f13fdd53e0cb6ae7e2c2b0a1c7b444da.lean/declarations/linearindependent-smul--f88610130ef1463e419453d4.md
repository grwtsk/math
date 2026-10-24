# linearIndependent_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39bb9b31-73b3-5c55-8c7e-07bead61d669",
  "kind": "theorem",
  "lexical_name": "linearIndependent_smul",
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
  "slug": "linearindependent-smul--f88610130ef1463e419453d4",
  "source": {
    "blob": "673800dc83bf2bd0c5719081831b9492fc0721b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f88610130ef1463e419453d41ae3c731a2e3c41d8f006530baf85587ffa15eb5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39bb9b31-73b3-5c55-8c7e-07bead61d669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_smul {ι : Type v₁} {b : ι → S} {ι' : Type w₁} {c : ι' → A}
    (hb : LinearIndependent R b) (hc : LinearIndependent S c) :
    LinearIndependent R fun p : ι × ι' => b p.1 • c p.2 := by
  rw [linearIndependent_iff'] at hb hc; rw [linearIndependent_iff'']; rintro s g hg hsg ⟨i, k⟩
  by_cases hik : (i, k) ∈ s
  · have h1 : ∑ i in s.image Prod.fst ×ˢ s.image Prod.snd, g i • b i.1 • c i.2 = 0 := by
      rw [← hsg]
      exact
        (Finset.sum_subset Finset.subset_product fun p _ hp =>
            show g p • b p.1 • c p.2 = 0 by rw [hg p hp, zero_smul]).symm
    rw [Finset.sum_product_right] at h1
    simp_rw [← smul_assoc, ← Finset.sum_smul] at h1
    exact hb _ _ (hc _ _ h1 k (Finset.mem_image_of_mem _ hik)) i (Finset.mem_image_of_mem _ hik)
  exact hg _ hik
#align linear_independent_smul linearIndependent_smul

/-- `Basis.SMul (b : Basis ι R S) (c : Basis ι S A)` is the `R`-basis on `A`
where the `(i, j)`th basis vector is `b i • c j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673800dc83bf2bd0c5719081831b9492fc0721b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
