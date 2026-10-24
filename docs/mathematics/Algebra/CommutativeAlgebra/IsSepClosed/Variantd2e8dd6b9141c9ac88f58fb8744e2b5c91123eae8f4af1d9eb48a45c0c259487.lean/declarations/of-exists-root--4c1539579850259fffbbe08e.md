# of_exists_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaca2e6c87623eb57e3f5e1947a679a35d12f894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d42a8aeb-10d1-578b-2766-bf6457ef62a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f45ff8ad-170a-45ec-43c6-69fe91843359",
  "kind": "theorem",
  "lexical_name": "of_exists_root",
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
  "slug": "of-exists-root--4c1539579850259fffbbe08e",
  "source": {
    "blob": "eaca2e6c87623eb57e3f5e1947a679a35d12f894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c1539579850259fffbbe08e29308c94a7e72ed0b3bd03bc129f384ef0abf1c4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f45ff8ad-170a-45ec-43c6-69fe91843359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_exists_root (H : ∀ p : k[X], p.Monic → Irreducible p → Separable p → ∃ x, p.eval x = 0) :
    IsSepClosed k := by
  refine ⟨fun p hsep ↦ Or.inr ?_⟩
  intro q hq hdvd
  simp only [map_id] at hdvd
  have hlc : IsUnit (leadingCoeff q)⁻¹ := IsUnit.inv <| Ne.isUnit <|
    leadingCoeff_ne_zero.2 <| Irreducible.ne_zero hq
  have hsep' : Separable (q * C (leadingCoeff q)⁻¹) :=
    Separable.mul (Separable.of_dvd hsep hdvd) ((separable_C _).2 hlc)
    (by simpa only [← isCoprime_mul_unit_right_right (isUnit_C.2 hlc) q 1, one_mul]
      using isCoprime_one_right (x := q))
  have hirr' := hq
  rw [← irreducible_mul_isUnit (isUnit_C.2 hlc)] at hirr'
  obtain ⟨x, hx⟩ := H (q * C (leadingCoeff q)⁻¹) (monic_mul_leadingCoeff_inv hq.ne_zero) hirr' hsep'
  exact degree_mul_leadingCoeff_inv q hq.ne_zero ▸ degree_eq_one_of_irreducible_of_root hirr' hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantd2e8dd6b9141c9ac88f58fb8744e2b5c91123eae8f4af1d9eb48a45c0c259487.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaca2e6c87623eb57e3f5e1947a679a35d12f894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
