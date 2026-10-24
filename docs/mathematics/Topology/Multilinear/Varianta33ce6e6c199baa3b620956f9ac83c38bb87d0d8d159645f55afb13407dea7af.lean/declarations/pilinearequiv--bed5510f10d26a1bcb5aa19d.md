# piLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a5c9a47d620ef13da0bd2f657725c78a27f4f66730ca19874cda80c93a2788a",
  "kind": "def",
  "lexical_name": "piLinearEquiv",
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
  "slug": "pilinearequiv--bed5510f10d26a1bcb5aa19d",
  "source": {
    "blob": "9fe836f6d48a6b0a8671cee43786284259eace8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 561,
    "path": "GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bed5510f10d26a1bcb5aa19dbbcb702455f910ce9106793f0263423e30baa21d",
  "verification": {
    "reference": "docs/verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a5c9a47d620ef13da0bd2f657725c78a27f4f66730ca19874cda80c93a2788a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piLinearEquiv {ι' : Type*} {M' : ι' → Type*} [∀ i, AddCommMonoid (M' i)]
    [∀ i, TopologicalSpace (M' i)] [∀ i, ContinuousAdd (M' i)] [∀ i, Module R' (M' i)]
    [∀ i, Module A (M' i)] [∀ i, SMulCommClass A R' (M' i)] [∀ i, ContinuousConstSMul R' (M' i)] :
    (∀ i, ContinuousMultilinearMap A M₁ (M' i)) ≃ₗ[R'] ContinuousMultilinearMap A M₁ (∀ i, M' i) :=
  { piEquiv with
    map_add' := fun _ _ => rfl
    map_smul' := fun _ _ => rfl }
#align continuous_multilinear_map.pi_linear_equiv ContinuousMultilinearMap.piLinearEquiv

end Module

section CommAlgebra

variable (R ι) (A : Type*) [Fintype ι] [CommSemiring R] [CommSemiring A] [Algebra R A]
  [TopologicalSpace A] [ContinuousMul A]

/-- The continuous multilinear map on `A^ι`, where `A` is a normed commutative algebra
over `𝕜`, associating to `m` the product of all the `m i`.

See also `ContinuousMultilinearMap.mkPiAlgebraFin`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe836f6d48a6b0a8671cee43786284259eace8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
