# prime_square_offDiagonal_filter_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea461693-9bb4-d13b-9f2f-50ad169fc8cf",
  "kind": "theorem",
  "lexical_name": "prime_square_offDiagonal_filter_empty",
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
  "slug": "prime-square-offdiagonal-filter-empty--011da7d5b527ee7bb029b315",
  "source": {
    "blob": "278175786eca81b1d156f02c9088f4c39161f75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:011da7d5b527ee7bb029b315b0291ec6e9b7db02218b157b28ab92534b38740c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea461693-9bb4-d13b-9f2f-50ad169fc8cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_square_offDiagonal_filter_empty (A : ℝ) (hA : 1 ≤ A)
    (p : ℕ) (hp : p.Prime) :
    (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2) = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro q hq
  obtain ⟨hlong, hprod⟩ := Finset.mem_filter.mp hq
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).2
  have hU := vaughanCutoff_pos A hA
  have hm1 : q.1 ≠ 1 := by have := (Finset.mem_Ioc.mp hm).1; omega
  have hn1 : q.2 ≠ 1 := by have := (Finset.mem_Ioc.mp hn).1; omega
  obtain ⟨hmp, hnp⟩ := (hp.mul_eq_prime_sq_iff hm1 hn1).mp hprod
  exact (Finset.mem_filter.mp hlong).2.1 (hnp.trans hmp.symm)

/-- Consequently every prime-square atom of the coefficient-one mean sum is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `278175786eca81b1d156f02c9088f4c39161f75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
