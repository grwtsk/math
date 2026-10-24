# le_degrees_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8d2bf97934cef49c8e2a3d9c27c7e63c940d2ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2c97a636948ac0861b7c0ee1f73218232feb316d47276dbcc0b35b3d747e095.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bf018ad-55d4-e16a-4ffd-c88454b02347",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f1610f6-9cd1-d637-bb20-3f9a981def9d",
  "kind": "theorem",
  "lexical_name": "le_degrees_add",
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
  "slug": "le-degrees-add--5762f1d9c3792f33d67f408f",
  "source": {
    "blob": "f8d2bf97934cef49c8e2a3d9c27c7e63c940d2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 193,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Variables/Variantc2c97a636948ac0861b7c0ee1f73218232feb316d47276dbcc0b35b3d747e095.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5762f1d9c3792f33d67f408f22b58282e6ccdbc4e01063c5a4ac20d43fd91e7f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Variables/Variantc2c97a636948ac0861b7c0ee1f73218232feb316d47276dbcc0b35b3d747e095.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f1610f6-9cd1-d637-bb20-3f9a981def9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_degrees_add {p q : MvPolynomial σ R} (h : p.degrees.Disjoint q.degrees) :
    p.degrees ≤ (p + q).degrees := by
  classical
  apply Finset.sup_le
  intro d hd
  rw [Multiset.disjoint_iff_ne] at h
  rw [Multiset.le_iff_count]
  intro i
  rw [degrees, Multiset.count_finset_sup]
  simp only [Finsupp.count_toMultiset]
  by_cases h0 : d = 0
  · simp only [h0, zero_le, Finsupp.zero_apply]
  · refine' @Finset.le_sup _ _ _ _ (p + q).support (fun a => a i) d _
    rw [mem_support_iff, coeff_add]
    suffices q.coeff d = 0 by rwa [this, add_zero, coeff, ← Finsupp.mem_support_iff]
    rw [← Finsupp.support_eq_empty, ← Ne.def, ← Finset.nonempty_iff_ne_empty] at h0
    obtain ⟨j, hj⟩ := h0
    contrapose! h
    rw [mem_support_iff] at hd
    refine' ⟨j, _, j, _, rfl⟩
    all_goals rw [mem_degrees]; refine' ⟨d, _, hj⟩; assumption
#align mv_polynomial.le_degrees_add MvPolynomial.le_degrees_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Variables/Variantc2c97a636948ac0861b7c0ee1f73218232feb316d47276dbcc0b35b3d747e095.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Variables/Variantc2c97a636948ac0861b7c0ee1f73218232feb316d47276dbcc0b35b3d747e095.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d2bf97934cef49c8e2a3d9c27c7e63c940d2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
