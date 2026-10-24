# algEquivMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdf8b2f300494cb6c78b9c46a8edce9f3024eb6cdecf6a2983d5627f5384d05e",
  "kind": "def",
  "lexical_name": "algEquivMatrix",
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
  "slug": "algequivmatrix--7a54b895dfa2ae86912be44e",
  "source": {
    "blob": "e27ea745bb8ab9f7766890e55c6a48e85d89a370",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1075,
    "line": 1052,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a54b895dfa2ae86912be44ed87c1ab1c60c48eeeb27f9d4dd41dd037a2d4fca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdf8b2f300494cb6c78b9c46a8edce9f3024eb6cdecf6a2983d5627f5384d05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1052–1075.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algEquivMatrix [Fintype n] (h : Basis n R M) : Module.End R M ≃ₐ[R] Matrix n n R :=
  (h.equivFun.conjAlgEquiv R).trans algEquivMatrix'

end

namespace Module.Basis

variable {R M M₁ M₂ ι ι₁ ι₂ : Type*} [CommSemiring R]
variable [AddCommMonoid M] [AddCommMonoid M₁] [AddCommMonoid M₂]
variable [Module R M] [Module R M₁] [Module R M₂]
variable [Fintype ι] [Fintype ι₁] [Fintype ι₂]
variable [DecidableEq ι] [DecidableEq ι₁]
variable (b : Basis ι R M) (b₁ : Basis ι₁ R M₁) (b₂ : Basis ι₂ R M₂)

/-- The standard basis of the space linear maps between two modules
induced by a basis of the domain and codomain.

If `M₁` and `M₂` are modules with basis `b₁` and `b₂` respectively indexed
by finite types `ι₁` and `ι₂`,
then `Basis.linearMap b₁ b₂` is the basis of `M₁ →ₗ[R] M₂` indexed by `ι₂ × ι₁`
where `(i, j)` indexes the linear map that sends `b j` to `b i`
and sends all other basis vectors to `0`. -/
@[simps! -isSimp repr_apply repr_symm_apply]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.lean#L1052).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27ea745bb8ab9f7766890e55c6a48e85d89a370` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
