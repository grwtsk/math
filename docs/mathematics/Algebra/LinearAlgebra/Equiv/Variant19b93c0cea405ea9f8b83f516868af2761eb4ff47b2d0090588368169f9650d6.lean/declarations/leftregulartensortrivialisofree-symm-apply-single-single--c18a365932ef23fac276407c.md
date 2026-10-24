# leftRegularTensorTrivialIsoFree_symm_apply_single_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9a7a811-35f5-2589-cd2e-48d3a18fd411",
  "kind": "lemma",
  "lexical_name": "leftRegularTensorTrivialIsoFree_symm_apply_single_single",
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
  "slug": "leftregulartensortrivialisofree-symm-apply-single-single--c18a365932ef23fac276407c",
  "source": {
    "blob": "0e3201affc4274f6d26a904f2bf972d63ef15815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant19b93c0cea405ea9f8b83f516868af2761eb4ff47b2d0090588368169f9650d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c18a365932ef23fac276407c592f88aa0b6e437b7fe31512c73ba4c6f90ac426",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant19b93c0cea405ea9f8b83f516868af2761eb4ff47b2d0090588368169f9650d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9a7a811-35f5-2589-cd2e-48d3a18fd411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftRegularTensorTrivialIsoFree_symm_apply_single_single {α : Type w'} (i : α) (g : G)
    (r : k) :
    (leftRegularTensorTrivialIsoFree α).symm (.single i (.single g r)) =
      .single g 1 ⊗ₜ .single i r := by
  simp [leftRegularTensorTrivialIsoFree, finsuppTensorFinsupp'_symm_single_eq_single_one_tmul]

end finsupp

/-- The linear equiv between the hom module `k[G] ⟶ᵍ V` and `V` itself. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant19b93c0cea405ea9f8b83f516868af2761eb4ff47b2d0090588368169f9650d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant19b93c0cea405ea9f8b83f516868af2761eb4ff47b2d0090588368169f9650d6.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e3201affc4274f6d26a904f2bf972d63ef15815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
