# isRoot_cyclotomic_prime_pow_mul_iff_of_charP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2f5b6b2441d4fdb70bbf03cbf470027ca561262",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:986f2eef-07f7-ff7b-15a4-65bf20a89c31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86e05d3f-a4f8-8d89-3ef7-41527daab391",
  "kind": "theorem",
  "lexical_name": "isRoot_cyclotomic_prime_pow_mul_iff_of_charP",
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
  "slug": "isroot-cyclotomic-prime-pow-mul-iff-of-charp--4a20948f5a98edf287c258b4",
  "source": {
    "blob": "a2f5b6b2441d4fdb70bbf03cbf470027ca561262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 165,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a20948f5a98edf287c258b4b85e9daf63094dc8d1bd7e48ba1d625f7cd0c3bb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86e05d3f-a4f8-8d89-3ef7-41527daab391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRoot_cyclotomic_prime_pow_mul_iff_of_charP {m k p : ℕ} {R : Type*} [CommRing R]
    [IsDomain R] [hp : Fact (Nat.Prime p)] [hchar : CharP R p] {μ : R} [NeZero (m : R)] :
    (Polynomial.cyclotomic (p ^ k * m) R).IsRoot μ ↔ IsPrimitiveRoot μ m := by
  rcases k.eq_zero_or_pos with (rfl | hk)
  · rw [pow_zero, one_mul, isRoot_cyclotomic_iff]
  refine' ⟨fun h => _, fun h => _⟩
  · rw [IsRoot.def, cyclotomic_mul_prime_pow_eq R (NeZero.not_char_dvd R p m) hk, eval_pow] at h
    replace h := pow_eq_zero h
    rwa [← IsRoot.def, isRoot_cyclotomic_iff] at h
  · rw [← isRoot_cyclotomic_iff, IsRoot.def] at h
    rw [cyclotomic_mul_prime_pow_eq R (NeZero.not_char_dvd R p m) hk, IsRoot.def, eval_pow, h,
      zero_pow]
    simp only [tsub_pos_iff_lt]
    apply pow_strictMono_right hp.out.one_lt (Nat.pred_lt hk.ne')
#align polynomial.is_root_cyclotomic_prime_pow_mul_iff_of_char_p Polynomial.isRoot_cyclotomic_prime_pow_mul_iff_of_charP

end CharP

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2f5b6b2441d4fdb70bbf03cbf470027ca561262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
