# weightedHomogeneousComponent_eq_zero_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6b6ea4b-2294-0db5-3993-83bbfdc324f6",
  "kind": "theorem",
  "lexical_name": "weightedHomogeneousComponent_eq_zero_of_notMem",
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
  "slug": "weightedhomogeneouscomponent-eq-zero-of-notmem--2731fcf5755bebf0fdc63f0e",
  "source": {
    "blob": "e3e21a4c5a1d147aa02498b11cacbaf6224e7bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 590,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2731fcf5755bebf0fdc63f0e365fa141117162ff1866619b11b7bbf0027407ec",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6b6ea4b-2294-0db5-3993-83bbfdc324f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedHomogeneousComponent_eq_zero_of_notMem [DecidableEq M]
    (φ : MvPolynomial σ R) (i : M) (hi : i ∉ Finset.image (weight w) φ.support) :
    weightedHomogeneousComponent w i φ = 0 := by
  apply weightedHomogeneousComponent_eq_zero'
  simp only [Finset.mem_image, mem_support_iff, ne_eq, exists_prop, not_exists, not_and] at hi
  exact fun m hm ↦ hi m (mem_support_iff.mp hm)

@[deprecated (since := "2025-05-23")]
alias weightedHomogeneousComponent_eq_zero_of_not_mem :=
  weightedHomogeneousComponent_eq_zero_of_notMem

variable (R)

/-- The `decompose'` argument of `weightedDecomposition`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variantd7c767c042aba73ddf27410d91e2d4f4a303c9a43ab9e3959e39664bf80431f2.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e21a4c5a1d147aa02498b11cacbaf6224e7bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
