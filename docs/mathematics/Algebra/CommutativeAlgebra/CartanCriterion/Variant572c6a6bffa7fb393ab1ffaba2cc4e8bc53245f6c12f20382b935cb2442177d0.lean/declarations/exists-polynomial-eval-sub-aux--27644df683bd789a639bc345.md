# exists_polynomial_eval_sub_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3854289ff253b95fb9294d6466c4e5eb5b0ab945",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86c3995d-1c48-9291-3e02-11be4b779933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a6f0c28-4f89-32ec-bb37-db73318747e9",
  "kind": "lemma",
  "lexical_name": "exists_polynomial_eval_sub_aux",
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
  "slug": "exists-polynomial-eval-sub-aux--27644df683bd789a639bc345",
  "source": {
    "blob": "3854289ff253b95fb9294d6466c4e5eb5b0ab945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 55,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27644df683bd789a639bc3456b060354d00f35a8b0bd554b7a8e403830d41134",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a6f0c28-4f89-32ec-bb37-db73318747e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_polynomial_eval_sub_aux
    {ι R K : Type*} [Finite ι] [CommRing R] [Field K] [Algebra R K]
    {E : Submodule R K} (a : ι → K) (ha : ∀ i, a i ∈ E) (f : E →+ R) :
    ∃ r : K[X], ∀ i j, r.eval (a i - a j) =
      algebraMap R K (f ⟨a i, ha i⟩) - algebraMap R K (f ⟨a j, ha j⟩) := by
  suffices ∀ (ij kl : ι × ι) (hij : a ij.1 - a ij.2 = a kl.1 - a kl.2),
      algebraMap R K (f ⟨a ij.1, ha ij.1⟩) - algebraMap R K (f ⟨a ij.2, ha ij.2⟩) =
      algebraMap R K (f ⟨a kl.1, ha kl.1⟩) - algebraMap R K (f ⟨a kl.2, ha kl.2⟩) by
    obtain ⟨r, hr⟩ := (Polynomial.exists_eval_eq_iff _ _).mpr this
    exact ⟨r, fun i j ↦ hr (i, j)⟩
  rintro ⟨i, j⟩ ⟨k, l⟩ hij
  have heq : (⟨a i, ha i⟩ - ⟨a j, ha j⟩ : E) = ⟨a k, ha k⟩ - ⟨a l, ha l⟩ := Subtype.ext hij
  rw [← (algebraMap R K).map_sub, ← (algebraMap R K).map_sub, ← map_sub, ← map_sub, heq]

variable [AddCommGroup M] [LieRingModule L M]
attribute [local instance 100] LieRing.ofAssociativeRing

/-- An auxiliary lemma used to prove `LieModule.isNilpotent_derivedSeries_of_traceForm_eq_zero`
which proves the same result except without the algebraically closed assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3854289ff253b95fb9294d6466c4e5eb5b0ab945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
