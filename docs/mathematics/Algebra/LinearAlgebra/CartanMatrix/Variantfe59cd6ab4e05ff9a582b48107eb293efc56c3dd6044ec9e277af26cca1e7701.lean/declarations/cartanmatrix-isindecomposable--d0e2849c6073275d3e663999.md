# cartanMatrix_isIndecomposable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:394d6d85-7b3b-c824-3f44-17b9f4e7d4fe",
  "kind": "lemma",
  "lexical_name": "cartanMatrix_isIndecomposable",
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
  "slug": "cartanmatrix-isindecomposable--d0e2849c6073275d3e663999",
  "source": {
    "blob": "eac0bb40458667cb33d16a720fd997c79f95aefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 403,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e2849c6073275d3e663999f2eb3eed852bad48dd895d7ad7be7a752030e17b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:394d6d85-7b3b-c824-3f44-17b9f4e7d4fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cartanMatrix_isIndecomposable [P.IsReduced] [P.IsIrreducible] :
    b.cartanMatrix.IsIndecomposable := by
  intro i j A B D e he
  by_contra! ⟨hi, hj⟩
  suffices range e.symm ⊆ range Sum.inl by
    replace this : range Sum.inr ⊆ range Sum.inl := subset_trans (by simp) this
    specialize this <| mem_range_self <| Nonempty.some ⟨⟨0, Nat.pos_of_ne_zero hj⟩⟩
    aesop
  rintro - ⟨k, rfl⟩
  let a : Fin i := Nonempty.some ⟨⟨0, Nat.pos_of_ne_zero hi⟩⟩
  let p (k : b.support) : Prop := ∃ a, Sum.inl a = e.symm k
  have pa : p (e (Sum.inl a)) := ⟨a, by simp⟩
  refine b.induction_on_cartanMatrix p pa fun u v ⟨a, ha⟩ huv ↦ ?_
  rcases hv : e.symm v with a' | d'
  · aesop
  · simp [he, hv, ← ha] at huv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eac0bb40458667cb33d16a720fd997c79f95aefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
