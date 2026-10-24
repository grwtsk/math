# irreducible_of_degree_le_three_of_not_isRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a44e1ac-66a6-425c-4749-3c50c976e374",
  "kind": "lemma",
  "lexical_name": "irreducible_of_degree_le_three_of_not_isRoot",
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
  "slug": "irreducible-of-degree-le-three-of-not-isroot--27de7f2e9e157bc0a6047828",
  "source": {
    "blob": "096bdf783ea370099595cef26f78dbd5eca3bd88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27de7f2e9e157bc0a60478283a6581c7d0e7e1d114d154843988beceb2305a5a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a44e1ac-66a6-425c-4749-3c50c976e374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma irreducible_of_degree_le_three_of_not_isRoot
    (hdeg : p.natDegree ∈ Finset.Icc 1 3) (hnot : ∀ x, ¬ IsRoot p x) :
    Irreducible p := by
  rw [Finset.mem_Icc] at hdeg
  by_cases hdeg2 : 2 ≤ p.natDegree
  · rw [Polynomial.irreducible_iff_roots_eq_zero_of_degree_le_three hdeg2 hdeg.2]
    apply Multiset.eq_zero_of_forall_notMem
    aesop
  · apply Polynomial.irreducible_of_degree_eq_one
    rw [← Nat.cast_one, Polynomial.degree_eq_iff_natDegree_eq_of_pos (by norm_num)]
    exact le_antisymm (by rwa [not_le, Nat.lt_succ_iff] at hdeg2) hdeg.1

end Field

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpecificDegree/Variant5f85ff8cee204b0d815dfcf4c1c32898dd231ceaaa67ce152c5eefd826005f5d.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `096bdf783ea370099595cef26f78dbd5eca3bd88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
