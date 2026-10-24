# exists_finset_card_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1308181e90c800ea58daf0dfe1051774a210b8f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1837a9d-efb3-0b39-1448-2eff46efbfc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49c6d3bc-2f25-8f73-b611-f4a4948a10f4",
  "kind": "theorem",
  "lexical_name": "exists_finset_card_le_mul",
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
  "slug": "exists-finset-card-le-mul--4e0d802e9ee8af77f935884b",
  "source": {
    "blob": "1308181e90c800ea58daf0dfe1051774a210b8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 129,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0d802e9ee8af77f935884b6644676bd16d339f3f50a42863a3a7bb46630f8a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c6d3bc-2f25-8f73-b611-f4a4948a10f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_card_le_mul [FiniteIndex H] {S : Finset G} (hS : closure (S : Set G) = ⊤) :
    ∃ T : Finset H, #T ≤ H.index * #S ∧ closure (T : Set H) = ⊤ := by
  letI := H.fintypeQuotientOfFiniteIndex
  haveI : DecidableEq G := Classical.decEq G
  obtain ⟨R₀, hR, hR1⟩ := H.exists_isComplement_right 1
  haveI : Fintype R₀ := Fintype.ofEquiv _ hR.rightQuotientEquiv
  let R : Finset G := Set.toFinset R₀
  replace hR : IsComplement (H : Set G) R := by rwa [Set.coe_toFinset]
  replace hR1 : (1 : G) ∈ R := by rwa [Set.mem_toFinset]
  refine ⟨_, ?_, closure_mul_image_eq_top' hR hR1 hS⟩
  calc
    _ ≤ #(R * S) := Finset.card_image_le
    _ ≤ #R * #S := Finset.card_mul_le
    _ = H.index * S.card := congr_arg (· * S.card) ?_
  calc
    #R = Fintype.card R := (Fintype.card_coe R).symm
    _ = _ := (Fintype.card_congr hR.rightQuotientEquiv).symm
    _ = Fintype.card (G ⧸ H) := QuotientGroup.card_quotient_rightRel H
    _ = H.index := by rw [index_eq_card, Nat.card_eq_fintype_card]

/-- **Schreier's Lemma**: A finite index subgroup of a finitely generated
  group is finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1308181e90c800ea58daf0dfe1051774a210b8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
