# boundedValuationChainOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14f2df8998141716c071d270e9be6c4e0b2bcda71ab7c2305c0312579f9222d5",
  "kind": "def",
  "lexical_name": "boundedValuationChainOrderIso",
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
  "slug": "boundedvaluationchainorderiso--650aefa2618306507b4ef591",
  "source": {
    "blob": "e91e3c787e492f46bd7bed83db9675c2c6b05197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:650aefa2618306507b4ef59182195583e1b641de397088c4cc15927988431763",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14f2df8998141716c071d270e9be6c4e0b2bcda71ab7c2305c0312579f9222d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def boundedValuationChainOrderIso :
    Set.Iic M.factorization ≃o ValuationChains M where
  toFun f p := ⟨f.val p, f.property p⟩
  invFun v := ⟨chainMap v, by
    intro p
    classical
    by_cases hp : p ∈ M.factorization.support
    · simpa only [chainMap, Finsupp.onFinset_apply, dif_pos hp, Set.mem_Iic] using
        (v ⟨p, hp⟩).property
    · simp only [chainMap, Finsupp.onFinset_apply, dif_neg hp, Nat.zero_le]⟩
  left_inv f := by
    apply Subtype.ext
    ext p
    classical
    by_cases hp : p ∈ M.factorization.support
    · simp only [chainMap, Finsupp.onFinset_apply, dif_pos hp]
    · have hzero : M.factorization p = 0 := Finsupp.notMem_support_iff.mp hp
      have hfzero : f.val p = 0 := Nat.eq_zero_of_le_zero (hzero ▸ f.property p)
      simp only [chainMap, Finsupp.onFinset_apply, dif_neg hp, hfzero]
  right_inv v := by
    funext p
    apply Subtype.ext
    exact chainMap_apply v p
  map_rel_iff' := by
    intro f g
    constructor
    · intro h p
      classical
      by_cases hp : p ∈ M.factorization.support
      · exact h ⟨p, hp⟩
      · have hzero : M.factorization p = 0 := Finsupp.notMem_support_iff.mp hp
        have hfzero : f.val p = 0 := Nat.eq_zero_of_le_zero (hzero ▸ f.property p)
        simp [hfzero]
    · intro h p
      exact h p

/-- Full order isomorphism from positive divisors to a product of finite chains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DivisorRepresentation/Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e91e3c787e492f46bd7bed83db9675c2c6b05197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
