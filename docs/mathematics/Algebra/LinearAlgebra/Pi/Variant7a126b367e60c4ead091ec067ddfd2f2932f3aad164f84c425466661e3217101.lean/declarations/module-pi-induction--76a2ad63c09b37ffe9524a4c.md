# Module.pi_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a75eab-5dc0-8546-08af-7efca5ece5c1",
  "kind": "lemma",
  "lexical_name": "Module.pi_induction",
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
  "slug": "module-pi-induction--76a2ad63c09b37ffe9524a4c",
  "source": {
    "blob": "afa008609ea31c48770b74eed32bc8862c10c06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 759,
    "line": 733,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a2ad63c09b37ffe9524a4c0552630b49da6d84b33f792dd07e19edd60d92cf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a75eab-5dc0-8546-08af-7efca5ece5c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.pi_induction {ι : Type v} [Finite ι]
    (motive : ∀ (N : Type u) [AddCommMonoid N] [Module R N], Prop)
    (motive' : ∀ (N : Type (max u v)) [AddCommMonoid N] [Module R N], Prop)
    (equiv : ∀ {N : Type u} {N' : Type (max u v)} [AddCommMonoid N] [AddCommMonoid N']
      [Module R N] [Module R N'], (N ≃ₗ[R] N') → motive N → motive' N')
    (equiv' : ∀ {N N' : Type (max u v)} [AddCommMonoid N] [AddCommMonoid N']
      [Module R N] [Module R N'], (N ≃ₗ[R] N') → motive' N → motive' N')
    (unit : motive PUnit) (prod : ∀ {N : Type u} {N' : Type (max u v)} [AddCommMonoid N]
      [AddCommMonoid N'] [Module R N] [Module R N'], motive N → motive' N' → motive' (N × N'))
    (M : ι → Type u) [∀ i, AddCommMonoid (M i)] [∀ i, Module R (M i)]
    (h : ∀ i, motive (M i)) : motive' (∀ i, M i) := by
  cases nonempty_fintype ι
  revert M
  refine Fintype.induction_empty_option
    (fun α β _ e h M _ _ hM ↦ equiv' (LinearEquiv.piCongrLeft R M e) <| h _ fun i ↦ hM _)
    (fun M _ _ _ ↦ equiv default unit) (fun α _ h M _ _ hn ↦ ?_) ι
  exact equiv' (LinearEquiv.piOptionEquivProd R).symm <| prod (hn _) (h _ fun i ↦ hn i)

end Semiring

section CommSemiring

variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid M₂] [AddCommMonoid M₃]
variable [Module R M] [Module R M₂] [Module R M₃]

/-- The empty bilinear map defeq to `Matrix.vecEmpty` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa008609ea31c48770b74eed32bc8862c10c06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
