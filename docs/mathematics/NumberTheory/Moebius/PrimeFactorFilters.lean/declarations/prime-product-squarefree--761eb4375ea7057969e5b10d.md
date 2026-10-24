# prime_product_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b20df5b1-4724-6e7a-a558-6e5f5f112847",
  "kind": "theorem",
  "lexical_name": "prime_product_squarefree",
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
  "slug": "prime-product-squarefree--761eb4375ea7057969e5b10d",
  "source": {
    "blob": "93f40c8579ed255545301f8961f6e29a2d12cb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:761eb4375ea7057969e5b10d1dba205ec6de08c37be90fc59754df4b31b66a50",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b20df5b1-4724-6e7a-a558-6e5f5f112847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_product_squarefree {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    Squarefree (∏ p ∈ P, p) := by
  induction P using Finset.induction_on with
  | empty => simp
  | @insert p P hp ih =>
    rw [Finset.prod_insert hp, Nat.squarefree_mul_iff]
    refine ⟨Nat.coprime_prod_right_iff.mpr ?_, (hP p (by simp)).squarefree,
      ih (fun q hq ↦ hP q (by simp [hq]))⟩
    intro q hq
    exact (hP p (by simp)).coprime_iff_not_dvd.mpr fun hd ↦
      hp (by simpa [((hP q (by simp [hq])).dvd_iff_eq (hP p (by simp)).ne_one).mp hd] using hq)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f40c8579ed255545301f8961f6e29a2d12cb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
