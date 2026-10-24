# baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f65af28dce40ad8e14c1247f8e49cde2da03dd20995d685f05f912adc3b2dfc8",
  "kind": "def",
  "lexical_name": "baseChange",
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
  "slug": "basechange--f1fa816a541a474575bff03a",
  "source": {
    "blob": "938d6fb9a792021627c06f491c14db06b23c0f4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1fa816a541a474575bff03a20aeeece547ebdc1828af227a5c06ebce6248cc3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f65af28dce40ad8e14c1247f8e49cde2da03dd20995d685f05f912adc3b2dfc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def baseChange : LieSubmodule A (A ⊗[R] L) (A ⊗[R] M) :=
  { (N : Submodule R M).baseChange A with
    lie_mem := by
      intro x m hm
      simp only [AddSubsemigroup.mem_carrier, AddSubmonoid.mem_toSubsemigroup,
        Submodule.mem_toAddSubmonoid] at hm ⊢
      obtain ⟨c, rfl⟩ := (Finsupp.mem_span_iff_linearCombination _ _ _).mp hm
      refine x.induction_on (by simp) (fun a y ↦ ?_) (fun y z hy hz ↦ ?_)
      · change toEnd A (A ⊗[R] L) (A ⊗[R] M) _ _ ∈ _
        simp_rw [Finsupp.linearCombination_apply, Finsupp.sum, map_sum, map_smul, toEnd_apply_apply]
        suffices ∀ n : (N : Submodule R M).map (TensorProduct.mk R A M 1),
            ⁅a ⊗ₜ[R] y, (n : A ⊗[R] M)⁆ ∈ (N : Submodule R M).baseChange A by
          exact Submodule.sum_mem _ fun n _ ↦ Submodule.smul_mem _ _ (this n)
        rintro ⟨-, ⟨n : M, hn : n ∈ N, rfl⟩⟩
        exact Submodule.tmul_mem_baseChange_of_mem _ (N.lie_mem hn)
      · rw [add_lie]
        exact ((N : Submodule R M).baseChange A).add_mem hy hz }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `938d6fb9a792021627c06f491c14db06b23c0f4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
