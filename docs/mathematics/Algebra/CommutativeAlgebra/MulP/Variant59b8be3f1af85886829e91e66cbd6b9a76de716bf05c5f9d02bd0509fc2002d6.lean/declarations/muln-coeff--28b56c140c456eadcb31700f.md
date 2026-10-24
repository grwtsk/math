# mulN_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1af44a910933a4471bda4783953472564dff46a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:851ff368-9de2-b81b-6719-7a7e23afe87f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d7b33a1-bb81-813d-336e-f5dd808bbf9e",
  "kind": "theorem",
  "lexical_name": "mulN_coeff",
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
  "slug": "muln-coeff--28b56c140c456eadcb31700f",
  "source": {
    "blob": "1af44a910933a4471bda4783953472564dff46a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 44,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28b56c140c456eadcb31700ff6767be535bc67342b4469389d197724d22d9586",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d7b33a1-bb81-813d-336e-f5dd808bbf9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulN_coeff (n : ℕ) (x : 𝕎 R) (k : ℕ) :
    (x * n).coeff k = aeval x.coeff (wittMulN p n k) := by
  induction' n with n ih generalizing k
  · simp only [Nat.cast_zero, mul_zero, zero_coeff, wittMulN, Pi.zero_apply, map_zero]
  · rw [wittMulN, Nat.cast_add, Nat.cast_one, mul_add, mul_one, aeval_bind₁, add_coeff]
    apply eval₂Hom_congr (RingHom.ext_int _ _) _ rfl
    ext1 ⟨b, i⟩
    fin_cases b
    · simp [Function.uncurry, Matrix.cons_val_zero, ih]
    · simp [Function.uncurry, Matrix.cons_val_one, Matrix.head_cons, aeval_X]

variable (p)

/-- Multiplication by `n` is a polynomial function. -/
@[is_poly]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MulP/Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1af44a910933a4471bda4783953472564dff46a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
