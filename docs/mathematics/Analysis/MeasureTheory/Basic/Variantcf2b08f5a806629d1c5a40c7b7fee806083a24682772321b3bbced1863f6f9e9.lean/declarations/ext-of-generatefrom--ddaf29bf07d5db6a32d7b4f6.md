# ext_of_generateFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f69a009-db75-ab10-704c-d7575cc047d1",
  "kind": "theorem",
  "lexical_name": "ext_of_generateFrom",
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
  "slug": "ext-of-generatefrom--ddaf29bf07d5db6a32d7b4f6",
  "source": {
    "blob": "e0cdae00254e0ab3c85de7152bd6d615385e39ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 219,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddaf29bf07d5db6a32d7b4f6c9642184ecd6695f911bac18ba2121d3049bcc12",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f69a009-db75-ab10-704c-d7575cc047d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_of_generateFrom {M : Type*} [AddCommGroup M] [TopologicalSpace M] [T2Space M]
    {X : Type*} {mX : MeasurableSpace X} {μ ν : VectorMeasure X M}
    (C : Set (Set X)) (hμν : ∀ s ∈ C, μ s = ν s)
    (hA : mX = MeasurableSpace.generateFrom C) (hC : IsPiSystem C)
    (h_univ : μ Set.univ = ν Set.univ) : μ = ν := by
  ext s hs
  induction s, hs using MeasurableSpace.induction_on_inter hA hC with
  | empty => simp
  | basic t ht => exact hμν t ht
  | compl t htm iht =>
    simp [of_compl, iht, htm, h_univ]
  | iUnion f hfd hfm ihf =>
    simp [of_disjoint_iUnion, hfm, hfd, ihf]

end

section SMul

variable {M : Type*} [AddCommMonoid M] [TopologicalSpace M]
variable {R : Type*} [Semiring R] [DistribMulAction R M] [ContinuousConstSMul R M]

/-- Given a scalar `r` and a vector measure `v`, `smul r v` is the vector measure corresponding to
the set function `s : Set α => r • (v s)`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0cdae00254e0ab3c85de7152bd6d615385e39ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
