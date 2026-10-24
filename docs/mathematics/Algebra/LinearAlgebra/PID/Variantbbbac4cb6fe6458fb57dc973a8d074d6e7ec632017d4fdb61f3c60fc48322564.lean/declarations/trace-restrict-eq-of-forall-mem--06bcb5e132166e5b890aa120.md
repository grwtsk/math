# trace_restrict_eq_of_forall_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26f5dee8-f797-f4fb-2f1c-791e46c700bb",
  "kind": "lemma",
  "lexical_name": "trace_restrict_eq_of_forall_mem",
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
  "slug": "trace-restrict-eq-of-forall-mem--06bcb5e132166e5b890aa120",
  "source": {
    "blob": "ca40f2eaac075218054b6ccfb00c81712b58523b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantbbbac4cb6fe6458fb57dc973a8d074d6e7ec632017d4fdb61f3c60fc48322564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06bcb5e132166e5b890aa12078163405d20fb1d0559ab684e0b22f7f3d36b8cc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantbbbac4cb6fe6458fb57dc973a8d074d6e7ec632017d4fdb61f3c60fc48322564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26f5dee8-f797-f4fb-2f1c-791e46c700bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trace_restrict_eq_of_forall_mem [IsDomain R] [IsPrincipalIdealRing R]
    (p : Submodule R M) (f : M →ₗ[R] M)
    (hf : ∀ x, f x ∈ p) (hf' : ∀ x ∈ p, f x ∈ p := fun x _ ↦ hf x) :
    trace R p (f.restrict hf') = trace R M f := by
  let ι := Module.Free.ChooseBasisIndex R M
  obtain ⟨n, snf : Basis.SmithNormalForm p ι n⟩ := p.smithNormalForm (Module.Free.chooseBasis R M)
  rw [trace_eq_matrix_trace R snf.bM, trace_eq_matrix_trace R snf.bN]
  set A : Matrix (Fin n) (Fin n) R := toMatrix snf.bN snf.bN (f.restrict hf')
  set B : Matrix ι ι R := toMatrix snf.bM snf.bM f
  have aux : ∀ i, B i i ≠ 0 → i ∈ Set.range snf.f := fun i hi ↦ by
    contrapose! hi; exact snf.repr_eq_zero_of_notMem_range ⟨_, (hf _)⟩ hi
  change ∑ i, A i i = ∑ i, B i i
  rw [← Finset.sum_filter_of_ne (p := fun j ↦ j ∈ Set.range snf.f) (by simpa using aux)]
  simp [A, B]

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantbbbac4cb6fe6458fb57dc973a8d074d6e7ec632017d4fdb61f3c60fc48322564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantbbbac4cb6fe6458fb57dc973a8d074d6e7ec632017d4fdb61f3c60fc48322564.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca40f2eaac075218054b6ccfb00c81712b58523b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
