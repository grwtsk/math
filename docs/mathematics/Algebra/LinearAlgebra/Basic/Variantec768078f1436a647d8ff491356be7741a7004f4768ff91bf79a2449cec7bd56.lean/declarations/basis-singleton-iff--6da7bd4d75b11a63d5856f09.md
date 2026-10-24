# basis_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a4b3f8556ca2e41bde93bfbad9dbe0b385f8ead",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d670774b-1808-47c4-7092-76b62e27406a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c8192fe-8293-4a42-bad2-136ae2ef5067",
  "kind": "theorem",
  "lexical_name": "basis_singleton_iff",
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
  "slug": "basis-singleton-iff--6da7bd4d75b11a63d5856f09",
  "source": {
    "blob": "0a4b3f8556ca2e41bde93bfbad9dbe0b385f8ead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 299,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6da7bd4d75b11a63d5856f09dc0cf2f25e50de2d796f38bf2163aaa1ae2493ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c8192fe-8293-4a42-bad2-136ae2ef5067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basis_singleton_iff {R M : Type*} [Ring R] [IsDomain R] [AddCommGroup M] [Module R M]
    [IsTorsionFree R M] (ι : Type*) [Unique ι] :
    Nonempty (Basis ι R M) ↔ ∃ x ≠ 0, ∀ y : M, ∃ r : R, r • x = y := by
  constructor
  · rintro ⟨b⟩
    refine ⟨b default, b.linearIndependent.ne_zero _, ?_⟩
    simpa [span_singleton_eq_top_iff, Set.range_unique] using b.span_eq
  · rintro ⟨x, nz, w⟩
    refine ⟨ofRepr <| LinearEquiv.symm
      { toFun := fun f => f default • x
        invFun := fun y => Finsupp.single default (w y).choose
        left_inv := fun f => Finsupp.unique_ext ?_
        right_inv := fun y => ?_
        map_add' := fun y z => ?_
        map_smul' := fun c y => ?_ }⟩
    · simp [Finsupp.add_apply, add_smul]
    · simp only [Finsupp.coe_smul, Pi.smul_apply, RingHom.id_apply]
      rw [← smul_assoc]
    · refine smul_left_injective _ nz ?_
      simp only [Finsupp.single_eq_same]
      exact (w (f default • x)).choose_spec
    · simp only [Finsupp.single_eq_same]
      exact (w y).choose_spec

end Singleton
end Basis

open Fintype in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4b3f8556ca2e41bde93bfbad9dbe0b385f8ead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
