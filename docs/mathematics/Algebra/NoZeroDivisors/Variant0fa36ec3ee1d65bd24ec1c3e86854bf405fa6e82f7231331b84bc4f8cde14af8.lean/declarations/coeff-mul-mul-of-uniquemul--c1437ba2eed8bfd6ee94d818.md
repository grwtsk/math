# coeff_mul_mul_of_uniqueMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "481313964cc3747c2039a15fd57e4680bef01b37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fa36ec3ee1d65bd24ec1c3e86854bf405fa6e82f7231331b84bc4f8cde14af8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8e39225-b2e4-ac20-aecd-4368b7a56922",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88a54f9c-ae7f-3297-245c-1e2ab43b2803",
  "kind": "theorem",
  "lexical_name": "coeff_mul_mul_of_uniqueMul",
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
  "slug": "coeff-mul-mul-of-uniquemul--c1437ba2eed8bfd6ee94d818",
  "source": {
    "blob": "481313964cc3747c2039a15fd57e4680bef01b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 73,
    "path": "GRWTSK/Algebra/NoZeroDivisors/Variant0fa36ec3ee1d65bd24ec1c3e86854bf405fa6e82f7231331b84bc4f8cde14af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1437ba2eed8bfd6ee94d81836415cff6726af1aff8317488da15b4321931e9f",
  "verification": {
    "reference": "docs/verification/Algebra/NoZeroDivisors/Variant0fa36ec3ee1d65bd24ec1c3e86854bf405fa6e82f7231331b84bc4f8cde14af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88a54f9c-ae7f-3297-245c-1e2ab43b2803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_mul_of_uniqueMul [Mul A] {f g : R[A]} {a0 b0 : A}
    (h : UniqueMul f.coeff.support g.coeff.support a0 b0) :
    (f * g).coeff (a0 * b0) = f.coeff a0 * g.coeff b0 := by
  classical
  simp_rw [coeff_mul, sum, ← Finset.sum_product']
  refine (Finset.sum_eq_single (a0, b0) ?_ ?_).trans (ite_eq_left rfl) <;>
    simp_rw [Finset.mem_product]
  · refine fun ab hab hne ↦ ite_eq_right (fun he ↦ hne <| Prod.ext ?_ ?_)
    exacts [(h hab.1 hab.2 he).1, (h hab.1 hab.2 he).2]
  · refine fun hnotMem ↦ ite_eq_right_iff.mpr (fun _ ↦ ?_)
    rcases not_and_or.mp hnotMem with af | bg
    · rw [notMem_support_iff.mp af, zero_mul]
    · rw [notMem_support_iff.mp bg, mul_zero]

@[deprecated (since := "2026-06-18")]
alias mul_apply_mul_eq_mul_of_uniqueMul := coeff_mul_mul_of_uniqueMul

@[to_additive (dont_translate := R)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NoZeroDivisors/Variant0fa36ec3ee1d65bd24ec1c3e86854bf405fa6e82f7231331b84bc4f8cde14af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoZeroDivisors/Variant0fa36ec3ee1d65bd24ec1c3e86854bf405fa6e82f7231331b84bc4f8cde14af8.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481313964cc3747c2039a15fd57e4680bef01b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
