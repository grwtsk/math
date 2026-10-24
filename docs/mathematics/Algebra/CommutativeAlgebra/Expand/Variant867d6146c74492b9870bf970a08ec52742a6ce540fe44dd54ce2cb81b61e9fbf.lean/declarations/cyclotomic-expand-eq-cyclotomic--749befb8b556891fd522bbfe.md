# cyclotomic_expand_eq_cyclotomic

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
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b820f5f8-56c1-2eb3-bce7-1ab7e30cf389",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1734282d-627f-abf2-ebad-902b65eddb64",
  "kind": "theorem",
  "lexical_name": "cyclotomic_expand_eq_cyclotomic",
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
  "slug": "cyclotomic-expand-eq-cyclotomic--749befb8b556891fd522bbfe",
  "source": {
    "blob": "a2f5b6b2441d4fdb70bbf03cbf470027ca561262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 77,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:749befb8b556891fd522bbfee1ddb8a96db1dc787b21e417cbf0fa949ce6ccda",
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

Occurrence: `result:1734282d-627f-abf2-ebad-902b65eddb64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_expand_eq_cyclotomic {p n : ℕ} (hp : Nat.Prime p) (hdiv : p ∣ n) (R : Type*)
    [CommRing R] : expand R p (cyclotomic n R) = cyclotomic (n * p) R := by
  rcases n.eq_zero_or_pos with (rfl | hzero)
  · simp
  haveI := NeZero.of_pos hzero
  suffices expand ℤ p (cyclotomic n ℤ) = cyclotomic (n * p) ℤ by
    rw [← map_cyclotomic_int, ← map_expand, this, map_cyclotomic_int, map_cyclotomic]
  refine' eq_of_monic_of_dvd_of_natDegree_le (cyclotomic.monic _ _)
    ((cyclotomic.monic n ℤ).expand hp.pos) _ _
  · have hpos := Nat.mul_pos hzero hp.pos
    have hprim := Complex.isPrimitiveRoot_exp _ hpos.ne.symm
    rw [cyclotomic_eq_minpoly hprim hpos]
    refine' minpoly.isIntegrallyClosed_dvd (hprim.isIntegral hpos) _
    rw [aeval_def, ← eval_map, map_expand, map_cyclotomic, expand_eval, ← IsRoot.def,
      @isRoot_cyclotomic_iff]
    · convert IsPrimitiveRoot.pow_of_dvd hprim hp.ne_zero (dvd_mul_left p n)
      rw [Nat.mul_div_cancel _ hp.pos]
  · rw [natDegree_expand, natDegree_cyclotomic, natDegree_cyclotomic, mul_comm n,
      Nat.totient_mul_of_prime_of_dvd hp hdiv, mul_comm]
#align polynomial.cyclotomic_expand_eq_cyclotomic Polynomial.cyclotomic_expand_eq_cyclotomic

/-- If the `p ^ n`th cyclotomic polynomial is irreducible, so is the `p ^ m`th, for `m ≤ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2f5b6b2441d4fdb70bbf03cbf470027ca561262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
