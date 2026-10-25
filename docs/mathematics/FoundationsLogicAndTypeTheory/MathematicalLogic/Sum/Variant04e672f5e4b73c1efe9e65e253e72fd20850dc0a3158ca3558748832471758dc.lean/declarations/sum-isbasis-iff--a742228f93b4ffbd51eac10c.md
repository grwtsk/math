# sum_isBasis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca41e81a-8c48-3c3d-86fd-488ae8103f50",
  "kind": "lemma",
  "lexical_name": "sum_isBasis_iff",
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
  "slug": "sum-isbasis-iff--a742228f93b4ffbd51eac10c",
  "source": {
    "blob": "396fcfb891cd704812585f188504b88d8df1a486",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a742228f93b4ffbd51eac10cb6f3d74f94faf7480b47887e2572448b8bba3628",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca41e81a-8c48-3c3d-86fd-488ae8103f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma sum_isBasis_iff {M : Matroid α} {N : Matroid β} {I X : Set (α ⊕ β)} :
    (M.sum N).IsBasis I X ↔
      (M.IsBasis (Sum.inl ⁻¹' I) (Sum.inl ⁻¹' X) ∧ N.IsBasis (Sum.inr ⁻¹' I) (Sum.inr ⁻¹' X)) := by
  simp only [Matroid.sum, mapEquiv_isBasis_iff, Equiv.sumCongr_symm,
    Equiv.sumCongr_apply, Equiv.symm_symm, sigma_isBasis_iff, Bool.forall_bool, Equiv.ulift_apply,
    Equiv.sumEquivSigmaBool, Equiv.coe_fn_mk, Equiv.ulift]
  convert Iff.rfl <;> exact ext <| by simp

end Sum

section disjointSum

variable {α : Type*} {M N : Matroid α}

/-- The sum of two matroids on `α` with disjoint ground sets, as a `Matroid α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396fcfb891cd704812585f188504b88d8df1a486` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
