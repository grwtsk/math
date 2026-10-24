# cyclotomic.isCoprime_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:199cd244-6842-370a-4206-32a0dca6952c",
  "kind": "theorem",
  "lexical_name": "cyclotomic.isCoprime_rat",
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
  "slug": "cyclotomic-iscoprime-rat--70023769892cf671f4d17a00",
  "source": {
    "blob": "24cf48565e1c77e2457d42ba336f5679bc218f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 229,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70023769892cf671f4d17a00fa4702914d36b15a27d83228468cd964e06023bc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:199cd244-6842-370a-4206-32a0dca6952c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic.isCoprime_rat {n m : ℕ} (h : n ≠ m) :
    IsCoprime (cyclotomic n ℚ) (cyclotomic m ℚ) := by
  rcases n.eq_zero_or_pos with (rfl | hnzero)
  · exact isCoprime_one_left
  rcases m.eq_zero_or_pos with (rfl | hmzero)
  · exact isCoprime_one_right
  rw [Irreducible.coprime_iff_not_dvd <| cyclotomic.irreducible_rat <| hnzero]
  exact fun hdiv => h <| cyclotomic_injective <|
    eq_of_monic_of_associated (cyclotomic.monic n ℚ) (cyclotomic.monic m ℚ) <|
      Irreducible.associated_of_dvd (cyclotomic.irreducible_rat hnzero)
        (cyclotomic.irreducible_rat hmzero) hdiv
#align polynomial.cyclotomic.is_coprime_rat Polynomial.cyclotomic.isCoprime_rat

end minpoly

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24cf48565e1c77e2457d42ba336f5679bc218f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
