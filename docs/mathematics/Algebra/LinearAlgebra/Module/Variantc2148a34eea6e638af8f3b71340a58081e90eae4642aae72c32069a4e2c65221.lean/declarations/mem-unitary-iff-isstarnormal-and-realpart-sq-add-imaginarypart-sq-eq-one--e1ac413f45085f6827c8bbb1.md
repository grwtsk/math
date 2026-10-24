# mem_unitary_iff_isStarNormal_and_realPart_sq_add_imaginaryPart_sq_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2888e10ff4f8a035a78d19ff1064404f9950fa7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 645,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c98c6c35-f9cf-def0-ebd8-89f3423fb06d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23e9057d-ba87-06cb-667d-8257b8f4d416",
  "kind": "lemma",
  "lexical_name": "mem_unitary_iff_isStarNormal_and_realPart_sq_add_imaginaryPart_sq_eq_one",
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
  "slug": "mem-unitary-iff-isstarnormal-and-realpart-sq-add-imaginarypart-sq-eq-one--e1ac413f45085f6827c8bbb1",
  "source": {
    "blob": "2888e10ff4f8a035a78d19ff1064404f9950fa7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 645,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1ac413f45085f6827c8bbb12822f7b1832b938a5f2f041ef1b7e2e2ba593595",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23e9057d-ba87-06cb-667d-8257b8f4d416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_unitary_iff_isStarNormal_and_realPart_sq_add_imaginaryPart_sq_eq_one [Ring A]
    [StarRing A] [Module ℂ A] [SMulCommClass ℂ A A] [IsScalarTower ℂ A A] [StarModule ℂ A] {x : A} :
    x ∈ unitary A ↔ IsStarNormal x ∧ ℜ x ^ 2 + ℑ x ^ 2 = (1 : A) := by
  rw [Unitary.mem_iff]
  refine ⟨fun ⟨h, h'⟩ ↦ ?_, fun ⟨hx, h⟩ ↦ ?_⟩
  · have : IsStarNormal x := ⟨h.trans h'.symm⟩
    exact ⟨this, by simp [sq, ← star_mul_self_eq_realPart_sq_add_imaginaryPart_sq x, h]⟩
  · simp [← hx.star_comm_self.eq, star_mul_self_eq_realPart_sq_add_imaginaryPart_sq, ← sq, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2888e10ff4f8a035a78d19ff1064404f9950fa7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
