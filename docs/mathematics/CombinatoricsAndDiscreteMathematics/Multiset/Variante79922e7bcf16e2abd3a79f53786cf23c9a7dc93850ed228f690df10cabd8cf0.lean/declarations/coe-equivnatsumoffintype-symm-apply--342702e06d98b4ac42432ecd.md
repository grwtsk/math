# coe_equivNatSumOfFintype_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5f75e78-31fe-98cd-cf0f-f8130f6e0d42",
  "kind": "lemma",
  "lexical_name": "coe_equivNatSumOfFintype_symm_apply",
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
  "slug": "coe-equivnatsumoffintype-symm-apply--342702e06d98b4ac42432ecd",
  "source": {
    "blob": "2f375074c2b10477afc76d456071b50bc47af2a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:342702e06d98b4ac42432ecd9bff75cfde0512ee336808a8ad80ce61442387b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5f75e78-31fe-98cd-cf0f-f8130f6e0d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coe_equivNatSumOfFintype_symm_apply [Fintype α] (P : {P : α → ℕ // ∑ i, P i = n}) :
    ((equivNatSumOfFintype α n).symm P : Multiset α) = ∑ a, ((P : α → ℕ) a) • {a} := by
  obtain ⟨P, hP⟩ := P
  change Finsupp.toMultiset (Finsupp.equivFunOnFinite.symm P) = Multiset.sum _
  ext a
  rw [Multiset.count_sum]
  simp [Multiset.count_singleton]

end Sym
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante79922e7bcf16e2abd3a79f53786cf23c9a7dc93850ed228f690df10cabd8cf0.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f375074c2b10477afc76d456071b50bc47af2a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
